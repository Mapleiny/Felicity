define [
	'UI/component/color_picker',
	'UI/component/popip'
	],()->
	components = arguments
	count = 1
	class UIManage
		constructor:(model)->
			

	uiManage = null
	return ()->
		if !uiManage
			uiManage = new UIManage components
		return uiManage
		