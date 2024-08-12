
function growBrick()
	tempB = b
	if GetSpriteExists(b)
		if GetRawKeyState(KEY_SHIFT)
			growLevel = 5
		else
			growLevel = 1
		endif
		
		if GetRawKeyState(KEY_SPACE)
			growLevel = abs(growLevel) * (-1)
		endif
		
		if GetRawKeyState(KEY_D)
			SetSpriteSize(b, GetSpriteWidth(b) + growLevel, GetSpriteHeight(b))
		endif
		if GetRawKeyState(KEY_A)
			SetSpriteSize(b, GetSpriteWidth(b) - growLevel, GetSpriteHeight(b))
		endif
		
		if GetRawKeyState(KEY_W)
			SetSpriteSize(b, GetSpriteWidth(b), GetSpriteHeight(b) + growLevel)
		endif
		if GetRawKeyState(KEY_S)
			SetSpriteSize(b, GetSpriteWidth(b), GetSpriteHeight(b) - growLevel)
		endif
	endif
	
endfunction

global holding = 0
global b = 0
function moveBrick()
	if GetSpriteExists(b)
		if holding = 1
			SetSpritePositionByOffset(b, GetPointerX ( ), GetPointerY ( ))
			if GetPointerPressed ( )
				holding = 0
				b = 0
				holdFlag = 1
			endif
		endif
	endif
		
	if holdFlag = 0
		if GetPointerPressed ( )
			b = GetSpriteHit (GetPointerX ( ), GetPointerY ( ))
			holding = 1
		endif
	endif
	holdFlag = 0
	
    if b = 0
		holding = 0
	endif
    
endfunction

function createBrick()
	if GetRawKeyPressed(KEY_Q)
		index = 0
		for i = 1 to 100
			if brick[ i ] = 0
				brick[ i ] = CreateSprite(CreateImageColor(200, 20, 0, 255))
				index = i
				exit
			endif
		next i
		SetSpriteSize(brick[ index ], 50, 50)
		SetSpritePosition(brick[ index ], 375, 375)
	endif
endfunction

function deleteBrick()
	if GetRawKeyPressed(KEY_E)
		DeleteSprite(b)
		for i = 1 to 100
			if brick[ i ] = b
				brick[ i ] = 0
			endif
		next i
	endif
endfunction

function rotatebrick()	
	if GetSpriteExists(b)
		rotateValue = 1
		if GetRawKeyState(KEY_SHIFT)
			rotateValue = 5
		else
			rotateValue = 1
		endif
		
		if GetRawKeyState(KEY_SPACE)
			rotateValue = abs(rotateValue) * (-1)
		endif
		
		if GetRawKeyState(KEY_R)
			SetSpriteAngle(b, GetSpriteAngle(b) + rotateValue)
		endif
	endif

endfunction
