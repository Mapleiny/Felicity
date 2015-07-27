do()->
	require.config
		'baseUrl' : 'static/js/app',
		'paths' :
			'lib' : '../lib'
			'component' : '../component'
			'util' : '../uitl'
			'html' : '../../html'
			'jQuery' : '../lib/jquery-2.1.1.min'
			'text' : '../lib/text'
		# 'shim' :
		# 	'run' :
		# 		'deps' : ['jQuery']
		'urlArgs' : 'bust='+(new Date()).getTime()

	require ['UI/manage','jQuery'],(manage)->
		console.log manage()