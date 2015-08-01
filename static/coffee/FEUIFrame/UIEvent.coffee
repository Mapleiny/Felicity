define ['FEUI/UIObject'],(UIObject)->
	class UIEvent extends UIObject
		EVENT_HASH_ATTR = 'event-hash'
		EVENT_ID = 0
		EVENT_LIST = {}
		EVENT_HANDLE = (event)->
			eventName = event.type
			target = event.target
			eventHandleList = EVENT_LIST[eventName]

			eventPath = event.path.slice(0,-2)
			for elem in eventPath
				eventHash = elem.getAttribute EVENT_HASH_ATTR
				if testEventHash(eventHash) and (eventHash of eventHandleList)
					eventHandleList[eventHash] event


		testEventHash = (eventHash)->
			return true

		constructor : ()->
			_super.call @
			@eventList = {}

		addEvent : (eventName,action,useCapture=false)->
			eventId = EVENT_ID++
			if !(eventName of EVENT_LIST)
				EVENT_LIST[eventName] = {}
				document.addEventListener eventName,EVENT_HANDLE,useCapture
			eventHandleList = EVENT_LIST[eventName]
			eventHash = @id+'.'+eventId
			eventHandleList[eventHash] = action
			@eventList[eventId] = action
			return eventHash
		removeEvent : (id)->
			# if id