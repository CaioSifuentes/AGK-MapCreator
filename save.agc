
global line as string
function writeMap()
	if GetRawKeyPressed(KEY_T)
		SetFolder("")
		fileID = OpenToWrite("map_loader.txt", 0)
		for i = 1 to 100
			if GetSpriteExists(brick[ i ])
				line = Str(GetSpriteX(brick[ i ])) + "," + Str(GetSpriteY(brick[ i ])) + "," + Str(GetSpriteAngle(brick[ i ])) + "," + Str(GetSpriteWidth(brick[ i ])) + "," + Str(GetSpriteHeight(brick[ i ]))
				WriteLine(fileID, line)
			endif
			print(brick[ i ])
		next i
		CloseFile ( fileID )
	endif
endfunction
