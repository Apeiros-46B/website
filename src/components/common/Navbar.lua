-- TODO: just move this into Page.lua. it will never be used elsewhere
-- (or maybe paramterize it, and then instantiate in Page.lua with a specific pages arg and an ID arg so grid styling is decoupled from the IDs used here)
-- TODO: replace with better router-based solution. hardcoded for now
local pages = {
	{
		name = 'home',
		rel_path = 'index.html.lua',
		url = '/index.html',
	},
	{
		name = 'projects',
		rel_path = 'projects.html.lua',
		url = '/projects.html',
	},
	{
		name = 'blog',
		rel_path = '',
		url = '/blog/index.html',
	},
}

local mask = 'linear-gradient(to right, black calc(100% - 4rem), transparent 100%)'
local padding_px = 4

GlobalStyles {
	Rule '#logo' {
		flex_shrink = 0,
		width = rem(1.2),
		height = rem(1.2),
		padding = px(padding_px),
		color = var 'fg_accent',
		background_color = var 'bg_lowered',
	},

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
			Raw [[<svg id="logo" viewBox="0 0 800 800" xmlns="http://www.w3.org/2000/svg"><path d="M400 100L443.301 75H356.699L400 100ZM53.5898 700L10.2886 675L53.5898 750V700ZM573.205 400V450H659.808L616.506 375L573.205 400ZM356.699 125L529.904 425L616.506 375L443.301 75L356.699 125ZM400 650H53.5898V750H400V650ZM573.205 350H226.795V450H573.205V350ZM201.795 443.301L721.4 743.301L771.4 656.699L251.795 356.699L201.795 443.301ZM96.8911 725L270.096 425L183.494 375L10.2886 675L96.8911 725ZM270.096 425L443.301 125L356.699 75L183.494 375L270.096 425Z" fill="currentColor"/></svg>]],
			For (pages) (function(page)
				return a {
					If ((ctx.nav_active == page.name) or (ctx.rel_path == page.rel_path)) {
						Set('class', 'active'),
						Set('aria-current', 'page'),
					},
					href = page.url,
					page.name,
				}
			end)
		}
	}
end
