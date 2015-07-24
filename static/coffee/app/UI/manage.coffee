define [
	'UI/component/color_picker',
	'UI/component/popip'
	],()->
	# 导入所有组件
	# 继承于 UITemplate 类
	components = arguments

	# UI管理类
	class UIManage
		constructor:(model)->



	# 单例管理类
	uiManage = null
	return ()->
		if !uiManage
			uiManage = new UIManage components
		return uiManage
		