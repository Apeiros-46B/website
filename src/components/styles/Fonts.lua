local font = 'https://fonts.googleapis.com/css2?family=IBM+Plex+Mono:wght@400;700&family=IBM+Plex+Sans:wght@400;700&display=swap'

return {
	link {
		rel = 'preconnect',
		href = 'https://fonts.gstatic.com',
		crossorigin = true,
	},
	link { rel = 'preload', as = 'style', href = font },
	link { rel = 'stylesheet', href = font },
}
