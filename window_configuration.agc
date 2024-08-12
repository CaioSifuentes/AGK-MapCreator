
SetErrorMode(2)
SetWindowTitle( "MapCreator" )
SetWindowAllowResize( 1 )
SetOrientationAllowed( 1, 1, 1, 1 ) 
SetSyncRate( 60, 0 )
SetScissor( 0,0,0,0 )
UseNewDefaultFonts( 1 )

function setWindow(x as integer, y as integer)
	SetWindowSize( x, y, 0 )
	SetVirtualResolution( x, y )
endfunction
