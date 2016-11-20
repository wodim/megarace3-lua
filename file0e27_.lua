child_mesh( "reactor3op.dff", "emitter_R" )
frameRate( 50 )
 
objet( "R3" )
 renderMode( "additive" )
 uv_translation( -1, -0.03, 0.01 )
 diffuse( -1, 255, 255, 255 )
flare( 0, "emitter_L", "flaRe4", "flare4", 1 )

light( 0, -1, "dynalight_00", 14.0, 14.0, 1, 2, 4, 1, 2, 4, 0 )
