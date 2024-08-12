
function loadMap(file as string)
	if file = ""
		exitfunction
	endif
	
	SetFolder("/media")
	fileID = OpenToRead (file + ".txt")
	for index = 1 to 100
		l$ = ReadLine(fileID)
		if l$ <> ""
			x# = ValFloat(GetStringToken(l$, ",", 1))
			y# = ValFloat(GetStringToken(l$, ",", 2))
			a# = ValFloat(GetStringToken(l$, ",", 3))
			w# = ValFloat(GetStringToken(l$, ",", 4))
			h# = ValFloat(GetStringToken(l$, ",", 5))
			brick[ index ] = CreateSprite(CreateImageColor(200, 25, 0, 255))
			SetSpritePosition(brick[ index ], x#, y#)
			SetSpriteAngle(brick[ index ], a#)
			SetSpriteSize(brick[ index ], w#, h#)
		else
			exit
		endif
	next index
	
	CloseFile( fileID )
endfunction
