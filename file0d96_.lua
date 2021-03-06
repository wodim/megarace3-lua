child_mesh( "reactor4.dff", "emitter_R" )
frameRate( 50 )

objet( "Cone01" )
 renderMode( "additive+" )
 uv_translation( -1, 0.0, .06 )
 diffuse( 10, 80, 0, 0 )
 diffuse( 10, 100, 0, 0 )
 diffuse( 100, 200, 0, 0 )
 diffuse( -1, 255, 255, 255 )

objet( "spr_reactGLOW1" )
 renderMode( "additive+" )
 sprite(1)
 diffuse( 10, 80, 0, 0 )  
 diffuse( 100, 200, 0, 0 )
 diffuse( 100, 255, 0, 0 )
 diffuse( -1, 255, 255, 255 )

objet( "Cone02" )
 renderMode( "additive+" )
 uv_translation( -1, 0.0, -0.1 )
 diffuse( 120, 20, 0, 0 )
 diffuse( 40, 200, 150, 150 )
 diffuse( -1, 250, 250, 250 )

flare( 80, "emitter_R", "flaRer4", "flarer1", 1 )
particules( 0, "emitter_R", "reactorflamturbo4", 0 )
light( 0, -1, "dynalight_00", 20.0, 20.0, 3, 1, 0, 3, 1, 0, 0 )
