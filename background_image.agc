
function loadExample(imageName as string)
	if imageName = ""
		exitfunction
	endif
	
	background = LoadImage("/media/" + imageName)
	createSprite(background)
endfunction
