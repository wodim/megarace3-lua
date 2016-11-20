child_mesh( "reactor2.dff", "emitter_R" )
 frameRate( 50 )
 --playAnim ( 0 , "reactor2",1, 1 )
 
objet( "spr_reactGLOW19" )
 renderMode( "additive+" )
 diffuse( -1, 255, 255, 255 )

objet( "spr_reactGLOW18" )
 renderMode( "additive+" )
 diffuse( 1, 0, 0, 0 )
 diffuse( 10, 0, 0, 0 )  
 diffuse( 100, 00, 0, 200 )
 diffuse( 40, 00, 0, 200 )
 diffuse( -1, 255, 255, 255 )

objet( "Cone01" )
 renderMode( "additive" )
 uv_translation( -1, 0.0, 0.1 )
 diffuse( 10, 0, 0, 0 )
 diffuse( 10, 0, 0, 0 )
 diffuse( 100, 00, 0, 200 )
 diffuse( 40, 100, 0, 255 )
 diffuse( -1, 255, 255, 255 )

objet( "Cone02" )
 renderMode( "additive" )
 uv_translation( -1, 0.0, -0.05 )
 diffuse( 10, 0, 0, 0 )
 diffuse( 100, 0, 0, 0 )
 diffuse( 40, 200, 150, 250 )
 diffuse( -1, 255, 255, 255 )
 
flare( 0, "emitter_R", "flaRe4", "flare4", 1 )
light( 0, -1, "dynalight_00", 14.0, 14.0, 1, 1, 6, 1, 1, 6, 2 )
particules( 0, "emitter_R", "reactorflam2", 0 )


