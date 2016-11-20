child_mesh( "reactor2.dff", "emitter_R" )
frameRate( 50 )
 playAnim ( 0 , "reactor2",1, 1 )

objet( "spr_reactGLOW19" )
 renderMode( "additive" )
 sprite(1)
 diffuse( -1, 255, 255, 255 )
-- g_scale (100, 1.01,1.01,1.01)
-- g_scale (100, .99,.99,.99)

objet( "spr_reactGLOW18" )
 renderMode( "additive" )
 sprite(1)
 diffuse( -1, 255, 255, 255 )

objet( "Cone01" )
 renderMode( "additive+" )
 uv_translation( -1, 0.0, 0.1 )
 diffuse( -1, 255, 255, 255 )

objet( "Cone02" )
 renderMode( "additive+" )
 uv_translation( -1, 0.0, -0.05 )
 diffuse( 140, 200, 150, 255 )
 diffuse( -1, 255, 200, 255 )

flare( 0, "emitter_R", "flaRe1", "flare3", 1 )
particules( 0, "emitter_R", "reactorflamturbo2", 2 )
light( 0, -1, "dynalight_00", 34.0, 34.0, 0, 3, 4, 0, 3, 4, 0 )

