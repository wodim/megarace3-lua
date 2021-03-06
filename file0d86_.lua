child_mesh( "reactor4.dff", "emitter_R1" )
frameRate( 40 )

objet( "Cone01" )
 renderMode( "additive+" )
mapAnim ("glo4", 1,0)
 uv_translation( -1, 0.0, 0.16 )
 diffuse( 30, 100, 0, 0 )
 diffuse( 100, 200, 0, 0 )
 diffuse( -1, 255, 255, 255 )

objet( "spr_reactGLOW1" )
 renderMode( "additive+" )
 sprite(1)
 diffuse( 10, 0, 0, 0 )
 diffuse( 10, 0, 0, 0 )  
 diffuse( 100, 200, 0, 0 )
 diffuse( 100, 255, 0, 0 )
 diffuse( -1, 255, 255, 255 )

objet( "Cone02" )
 renderMode( "additive+" )
 uv_translation( -1, 0.0, -0.1 )
 diffuse( 10, 0, 0, 0 )
 diffuse( 100, 0, 0, 0 )
 diffuse( 40, 200, 150, 150 )
 diffuse( -1, 250, 250, 250 )
