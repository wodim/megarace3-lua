child_mesh( "reactor1op.dff", "emitter_R" )
frameRate( 50 )

objet( "spr_reactGLOW1" )
 renderMode( "additive" )
 diffuse( -1, 255, 255, 255 )

objet( "cone02" )
 renderMode( "additive" )
 uv_translation( -1, 0.0, -0.1 )
 diffuse( -1, 250, 250, 250 )

flare( 0, "emitter_R", "flaRe1", "flare2", 1 )
light( 0, -1, "dynalight_00", 14.0, 14.0, 1, 2, 4, 1, 2, 4, 0 )
