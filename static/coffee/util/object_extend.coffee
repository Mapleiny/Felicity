define ()->
	isNumber = (maybeNum)->
		return Object.prototype.toString.call(maybeNum) is '[object Number]'
	isObject = (maybeObj)->
		return Object.prototype.toString.call(maybeObj) is '[object Object]'
	isArray = (maybeArr)->
		return Object.prototype.toString.call(maybeArr) is '[object Array]'
	isString = (maybeStr)->
		return Object.prototype.toString.call(maybeStr) is '[object String]'
	isDate = (maybeDate)->
		return Object.prototype.toString.call(maybeDate) is '[object Date]'
	isFunction = (maybeFunction)->
		return Object.prototype.toString.call(maybeDate) is '[object Function]'
	replace = ( template , replacement )->
		replaceKeyArray = template.match /{.*?}/g
		if !replaceKeyArray then return template
		for key in replaceKeyArray
			reg = new RegExp key,'g'
			value = keyPath replacement , key.slice 1,-1
			if value is undefined or value is null then value = ''
			template = template.replace reg,value
		return templete
	keyPath = ( dictionary , keyPath )->
		returnValue = dictionary[keyPath]
		if keyPath.indexOf '.' > -1
			keyPathArray = keyPath.split '.'
			returnValue = dictionary
			for key in keyPathArray
				if isObject(returnValue) and (key of returnValue)
					returnValue = returnValue[key]
				else
					return null
		return returnValue
	return {
		'isNumber' : isNumber,
		'isObject' : isObject,
		'isArray' : isArray,
		'isString' : isString,
		'isDate' : isDate,
		'isFunction' : isFunction,
		'replace' : replace,
		'keyPath' : keyPath,
	}