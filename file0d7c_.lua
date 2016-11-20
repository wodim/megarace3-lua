child_mesh( "reactor1.dff", "emitter_L" )
frameRate( 50 )

objet( "Cone01" )
 renderMode( "additive+" )
 uv_translation( -1, 0.0, 0.08 )
 diffuse( 10, 0, 0, 0 )
 diffuse( 10, 0, 0, 0 )
 diffuse( 10, 100, 0, 0 )
 diffuse( 100, 200, 0, 0 )
 diffuse( -1, 255, 255, 255 )

objet( "spr_reactGLOW1" )
 renderMode( "additive" )
 sprite(1)
 diffuse( 10, 0, 0, 0 )
 diffuse( 10, 0, 0, 0 )  
 diffuse( 100, 200, 0, 0 )
 diffuse( 100, 255, 0, 0 )
 diffuse( -1, 255, 255, 255 )

objet( "cone02" )
 renderMode( "additive" )
 uv_translation( -1, 0.0, -0.1 )
 diffuse( 10, 0, 0, 0 )
 diffuse( 100, 0, 0, 0 )
 diffuse( 40, 200, 150, 150 )
 diffuse( -1, 250, 250, 250 )

flare( 0, "emitter_L", "flaRe1", "flare2", 1 )
particules( 0, "emitter_L", "reactorflam", 0 )


