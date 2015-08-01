define ()->
	###
	for [value],[index] in [variable]
	endforin
	
	for [key],[value] of [variable]
	endforof
	
	if [expression]
	elseif [expression]
	else
	endif
	
	switch [expression]
		when value,value
		when value
		when value
		else
	endswitch
	###
	FUN_TEMPLATE = 
		'forin' : ( value , index , array , content )->
			"""
			var #{value},#{index},length,result=[];
			for(#{index}=0,length=#{array}.length;#{index}<length,++#{index}){
				#{value}=#{array}[#{index}];
				result.push #{content}
			"""
		'endforin' : ()->
			'}'

		'forof' : ( key , value , obj )->
			"""
			var #{key},#{value};
			for (#{key} in #{obj}){
				#{value}=#{obj}[#{key}];
			"""
		'endforof' : ()->
			'}'
		'if' : (expression)->
			"""
			if(#{expression}){
			"""
		'elseif' : (expression)->
			"""
			}else if(#{expression}){
			"""
		'else' : (expression)->
			"""
			}else{
			"""
		'endif' : ()->
			'}'
		'switch' : (expression)->
			"""
			switch(#{expression}){
			"""
		'when' : (expression)->
			expArr = expression.split ','
			caseArr = for value in expArr
				"""
				case #{value}:
				"""
			caseArr.push 'break;'

			caseArr.join
		
	
		
				
			
			

	REG_TAG = /\{\s*([^\}]+)?\}/g
	REG_FORLOOP = /\s*for\s+(.+)\s+(in|of)\s+(\S+)/g



	###
	@params 
	@return type variable|expression
	###
	syntaxAnalysis = ()->

		return {
		}