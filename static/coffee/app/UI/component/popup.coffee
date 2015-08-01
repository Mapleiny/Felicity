##
# 弹出框
#
define [
	'text!html/component/popup.html',
	'FEUI/UItemplate'
],(HTMLTemplate,UItemplate)->
	class Popup extends UItemplate
		constructor : ()->
			_super.call @,
				'template' : HTMLTemplate
				'renderMap' : {}
			@direction = 'top'
		setDirection : (direction='top')->
			if !@$template then @render()
			@$template
				.removeClass @direction
				.addClass direction

			@direction = direction
			return @

	return Popup