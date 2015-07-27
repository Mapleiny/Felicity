##
# 弹出框
#
define [
	'text!html/component/popup.html',
	'UI/UItemplate'
],(HTMLTemplate,UItemplate)->
	class Popup extends UItemplate
		constructor : ()->
			_super.call @,arguments
	return Popup