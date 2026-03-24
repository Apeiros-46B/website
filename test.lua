package.path = package.path .. ';./ssg/?.lua'

local Dsl = require('dsl')
local a = Dsl.Rule '#navbar' {
	display = Dsl.flex
}
local Builder = require('builder')
local b = Builder.new()
Dsl.render(a, b, {}, 'css')
print('str: ', Dsl.flex)
print('built: ', b:build())
