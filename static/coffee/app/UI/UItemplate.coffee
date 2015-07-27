define ['util/object_extend'],(ObjTool)->
	class UITemplate
		TEMPLATE_ID = 0
		constructor : (option = {})->
			@type = option.type || ""
			@template = option.template || ""
			@renderMap = option.renderMap || {}
			@subviews = {}
			@subviewsCount = 0

			@id = TEMPLATE_ID++

			@$template = null
		render : ()->
			@$template = $ ObjTool.replace @template,@renderMap
			return @
		_removeView : (subview)->
			if subview.id of @subviews
				subview.remove()
				delete @subviews[subview.id]
				@subviewsCount--
			return @
		remove : ()->
			@$template.remove()
			return @
		addSubview : (subview)->
			if subview instanceof UITemplate
				subview.super = @
				@subviews[subview.id] = subview
				@subviewsCount++
			return @
		removeAllSubview : ()->

		removeFromSuper : ()->
			if @super
				@super._removeView @
			return @

			