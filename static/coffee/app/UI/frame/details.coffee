##
# 详细展示
#
define [
	'text!html/frame/details.html',
	'UI/UItemplate'
],(HTMLTemplate,UItemplate)->
	class Details extends UItemplate
		constructor : ()->
			_super.call @,arguments
			@title = ""

	return Details