define [
	# 'UI/component/color_picker',
	'UI/component/popup'
],()->
	# 导入所有组件
	# 继承于 UITemplate 类
	components = arguments

	# UI管理类
	class UIManage
		constructor:(models)->
			for model in models
				m = new model()
				m.render()
				m.setDirection('left')
				$('#utilities').html m.$template


	# 单例
	uiManage = null
	return ()->
		if !uiManage
			uiManage = new UIManage components
		return uiManage