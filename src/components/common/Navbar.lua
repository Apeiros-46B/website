-- ctx.state extra fields:
-- 1. nav_active - if set, make the page with that name appear active even if rel_path doesn't match
-- 2. nav_ephemeral_page - if set, make an ephemeral nav entry at the end with the given string as its name

-- TODO: move this into Page.lua. it will never be used elsewhere
-- (or maybe paramterize it, and then instantiate in Page.lua with a specific pages arg and an ID arg so grid styling is decoupled from the IDs used here)

local mask = 'linear-gradient(to right, black calc(100% - 4rem), transparent 100%)'
local padding_px = 4

GlobalStyles {
	Rule 'header#navbar-header' {
		top = 0,
		position = sticky,
		margin_top = rem(1),
		background_color = var 'bg_base',
		border_bottom = { rem(1), solid, var 'bg_main' },
	},

	Rule '#navbar' {
		display = flex,
		align_items = center,
		overflow_x = auto,
		overflow_y = hidden,

		-- fade out to the end to indicate scrollability
		mask_image = mask,
		_webkit_mask_image = mask,

		Rule '&> a' {
			flex_shrink = 0,
			padding = { px(padding_px), px(3 * padding_px) };
			text_decoration = none,
			background_color = var 'bg_lowered',

			Rule '&.active' {
				color = var 'fg_main',
				background_color = var 'bg_main',
			},
			Rule '&:hover' {
				text_decoration = underline,
			},
			Rule '&:last-child' {
				margin_right = rem(4),
			}
		},
	},
}

return function(ctx)
	return header {
		id = 'navbar-header',

		nav {
			id = 'navbar',
			HideScrollbar,

			-- logo
			For (ctx.manifest.groups.nav) (function(page)
				local name = page.url == '/index' and 'home' or page.slug
				local link = page.url == '/index' and '/' or page.url
				local active = ctx.page.rel_path == page.rel_path

				return a {
					If (active or (ctx.state.nav_active == page.url)) {
						Set('class', 'active'),
						Set('aria-current', 'page'),
					},
					href = link,
					name
				}
			end),
			If (not ctx.state.nav_active and ctx.state.nav_ephemeral_page) {
				a {
					class = 'active',
					aria_current = 'page',
					href = '#',
					ctx.state.nav_ephemeral_page,
				},
			},
		}
	}
end
