##
# color picker 
# 
define ()->
	ids = 0
	return ()->
	
	template = """
		<div class="color-picker">
			<div class="color-preview"></div>
			<label for="color-picker" class="color-pick-btn"></label>
			<input type="color" id="color-picker">
		</div>
	"""