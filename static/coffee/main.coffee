do()->
	require.config
		'baseUrl' : 'static/js/app',
		'paths' :
			'lib' : '../lib'
			'component' : '../component'
			'util' : '../util'
			'html' : '../../html'
			'jQuery' : '../lib/jquery-2.1.1.min'
			'text' : '../lib/text'
			'FEUI' : '../FEUIFrame'
		# 'shim' :
		# 	'run' :
		# 		'deps' : ['jQuery']
		'urlArgs' : 'bust='+(new Date()).getTime()

	require ['UI/manage','jQuery'],(manage)->
		new manage()