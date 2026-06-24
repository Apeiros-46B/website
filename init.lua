require('ssg.path')('ssg')

-- collect pages into sorted groups
local function group_pages(manifest)
	local nav = {}
	local blog_chrono = {}
	local blog_series = {}

	for _, page in pairs(manifest.pages) do
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

-- build a set of tags that have dedicated tag pages, plus tag counts
local function blog_collect_tags(manifest)
	local tag_pages = {}

	for _, page in ipairs(manifest.pages) do
		local tag = page.rel_path:match('^blog/tags/(.+)%.html%.lua$')
		if tag then
			tag_pages[tag] = true
		end
	end

	-- count tags across all blog posts
	local counts = {}
	for _, page in ipairs(manifest.groups.blog.chrono) do
		if page.meta.tags then
			for _, tag in ipairs(page.meta.tags) do
				counts[tag] = (counts[tag] or 0) + 1
			end
		end
	end

	-- sort by count descending, alphabetical for ties
	local sorted = {}
	for tag, count in pairs(counts) do
		sorted[#sorted+1] = { tag = tag, count = count }
	end
	table.sort(sorted, function(a, b)
		if a.count ~= b.count then return a.count > b.count end
		return a.tag < b.tag
	end)

	manifest.groups.blog.tags = sorted
	manifest.groups.blog.tag_pages = tag_pages
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
