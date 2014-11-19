do()->
	require.config
		'baseUrl' : 'static/js/app',
		'paths' :
			'lib' : '../lib'
			'component' : '../component'
			'util' : '../uitl'
			'jQuery' : 'lib/jquery-2.1.1.min'
		# 'shim' :
		# 	'run' :
		# 		'deps' : ['jQuery']
		'urlArgs' : 'bust='+(new Date()).getTime()

	require ['jQuery'],()->