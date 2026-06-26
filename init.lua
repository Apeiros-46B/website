require('ssg.path')('ssg')
local util = require('util')

-- remove nil holes from a numeric table
-- if max_index is not provided, it's found using iteration via pairs
local function compact_table(t, max_index)
	if not max_index then
		max_index = 0
		for k, _ in pairs(t) do
			if type(k) == 'number' and k > max_index then
				max_index = k
			end
		end
	end

	local write = 1
	for read = 1, max_index do
		if t[read] ~= nil then
			if read ~= write then
				t[write] = t[read]
				t[read] = nil
			end
			write = write + 1
		end
	end
	return t
end

-- collect pages into sorted groups
local function group_pages(manifest)
	local nav = {}
	local blog_chrono = {}
	local blog_series = {}

	local old_num_pages = #manifest.pages

	for k, page in pairs(manifest.pages) do
		if page.meta.skip then
			-- skip this page, stop it from rendering
			manifest.pages[k] = nil
		else
			if page.meta.nav then
				-- rewrite path to toplevel instead of nav subdir
				page.dst_rel_path = page.dst_rel_path:gsub('^nav/', '')
				nav[#nav+1] = page
			elseif page.meta.blog then
				blog_chrono[#blog_chrono+1] = page

				if page.meta.series then
					local series = blog_series[page.meta.series] or {}
					series[#series+1] = page
					blog_series[page.meta.series] = series
				end
			end

			page.url = '/' .. page.dst_rel_path:gsub('%.html$', '')
			page.slug = page.url:match('^.*/([^/]-)$')
		end
	end

	compact_table(manifest.pages, old_num_pages)

	-- manual ordering for navbar entries
	table.sort(nav, function(a, b) return a.meta.ord < b.meta.ord end)

	-- sort all blog posts by date, newest first
	table.sort(blog_chrono, function(a, b) return a.meta.date > b.meta.date end)

	-- sort blog posts within a series by date, oldest first
	for _, series in pairs(blog_series) do
		table.sort(series, function(a, b) return a.meta.date < b.meta.date end)
	end

	manifest.groups.nav = nav
	manifest.groups.blog = {
		chrono = blog_chrono,
		series = blog_series,
	}
end

-- build tag slug/name mapping and tag counts
local function blog_collect_tags(manifest)
	-- derive url-safe slug from human-readable tag name
	local function tag_to_slug(name)
		return name:lower():gsub('%s+', '-'):gsub('[^%w-]', '')
	end

	-- discover tag pages
	local tag_pages = {} -- slug -> page entry
	for _, page in ipairs(manifest.pages) do
		local slug = page.rel_path:match('^blog/tags/(.+)%.html%.lua$')
		if slug then
			tag_pages[slug] = page
		end
	end

	local counts = {}
	local tag_slugs = {} -- human-readable name -> slug
	local tag_names = {} -- slug -> human-readable name
	for _, page in ipairs(manifest.groups.blog.chrono) do
		if page.meta.tags then
			for _, tag in ipairs(page.meta.tags) do
				local slug = tag_to_slug(tag)
				if tag_pages[slug] then
					tag_slugs[tag] = slug
					if not tag_names[slug] then
						tag_names[slug] = tag
					end
					counts[slug] = (counts[slug] or 0) + 1
				else
					util.log('tag "' .. tag .. '" missing page!', 'warn', 'blog')
				end
			end
		end
	end

	-- sort by count descending, alphabetical for ties
	local sorted = {}
	for slug, count in pairs(counts) do
		sorted[#sorted+1] = { slug = slug, count = count }
	end
	table.sort(sorted, function(a, b)
		if a.count ~= b.count then return a.count > b.count end
		return a.slug < b.slug
	end)

	manifest.groups.blog.tags = sorted
	manifest.groups.blog.tag_pages = tag_pages
	manifest.groups.blog.tag_names = tag_names
	manifest.groups.blog.tag_slugs = tag_slugs
end

-- add next/prev metadata fields to pages in the blog group
local function blog_add_next_prev(manifest)
	local blog = manifest.groups.blog.chrono
	for i = 1, #blog do
		if i > 1 then
			blog[i].meta.next = blog[i - 1]
		end
		if i < #blog then
			blog[i].meta.prev = blog[i + 1]
		end
	end
end

require('router').process({
	in_dir = './src/site',
	out_dir = './dist',
	components_dir = './src/components',

	ctx = {},
	middlewares = {
		group_pages,
		blog_collect_tags,
		blog_add_next_prev,
	},
})
