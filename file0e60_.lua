child_mesh( "reactor1op.dff", "emitter_R1" )
frameRate( 50 )

objet( "spr_reactGLOW1" )
 renderMode( "additive" )
 diffuse( -1, 255, 255, 255 )

objet( "cone02" )
 renderMode( "additive" )
 uv_translation( -1, 0.0, -0.1 )
 diffuse( -1, 250, 250, 250 )

flare( 0, "emitter_R1", "flaRe1", "flare2", 1 )

