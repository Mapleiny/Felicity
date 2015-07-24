##
# 颜色选取模块
#
define [
	'text!html/component/color_picker.html',
	'UI/UItemplate'
],(HTMLTemplate,UItemplate)->

	class ColorPicker extends UItemplate
		constructor : ()->
			_super.call @,arguments

	return