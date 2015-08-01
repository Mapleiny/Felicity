define ['FEUI/UIEvent','util/object_extend'],(UIEvent,ObjTool)->
	class UITemplate extends UIEvent
		constructor : (option = {})->
			_super.call @,arguments
			@template = option.template || ""
			@renderMap = option.renderMap || {}
			@subviews = {}
			@subviewsCount = 0

			@$template = null
		render : ()->
			@renderMap['id'] = @id
			@$template = $ ObjTool.replace @template,@renderMap
			return @
		_removeView : (subview)->
			if subview.id of @subviews
				subview.remove()
				delete @subviews[subview.id]
				@subviewsCount--
			return @
		remove : ()->
			if @$template then @$template.remove()
			return @
		addSubview : (subview,target)->
			if subview instanceof UITemplate
				subview.super = @
				@subviews[subview.id] = subview
				@renderMap[target] = subview.render().$template
				@subviewsCount++
			return @
		removeFromSuper : ()->
			if @super
				@super._removeView @
			return @

		# override
		addEvent : (eventName,action,useCapture)->
			eventHash = _super.prototype.addEvent.call @,eventName,action,useCapture
			@renderMap['eventKey'] = eventHash
			return @
