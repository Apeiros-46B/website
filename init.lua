require('ssg.path')('ssg')

local router = require('router')

local site_ctx = {
	current_year = os.date('%Y'),
}

router.process({
	input_dir = './src/site',
	output_dir = './dist',
	components_dir = './src/components',
	ctx = site_ctx
})
