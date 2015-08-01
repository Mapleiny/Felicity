##
# 颜色选取
# 
define [
	'text!html/component/color_picker.html',
	'FEUI/UItemplate'
],(HTMLTemplate,UItemplate)->
	class ColorPicker extends UItemplate
		constructor : ()->
			_super.call @
	return ColorPicker