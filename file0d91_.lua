child_mesh( "reactorf3.dff", "emitter_L" )
frameRate( 60 )
 playAnim ( 0 , "reactorf3",1, 1 )

objet( "Sphere01" )
 renderMode( "additive+" )
 uv_translation( -1, -0.02, 0.02 )
 diffuse( 10, 0, 0, 0 )
 diffuse( 10, 0, 0, 0 )
 diffuse( 10, 0, 0, 120 )
 diffuse( 100, 0, 60, 220 )
 diffuse( -1, 255, 255, 255 )

objet( "Sphere02" )
 renderMode( "additive+" )
 uv_translation( -1, -0.01, -0.04 )
 diffuse( -1, 255, 255, 255 )

objet( "Cone01" )
 renderMode( "additive" )
 sprite(0)
 diffuse( -1, 255, 255, 255 )
  uv_translation( -1, 0.0, 0.04 )

flare( 0, "emitter_L", "flaRe5", "flare5", 1 )
