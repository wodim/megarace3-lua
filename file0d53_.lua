mesh( "boom0.dff" )
frameRate( 30 )
light( 0, 30, "emitter_boom", 35.0, 88.0, 0, 40, 120, 0, 0, 10, 1 )
playAnim ( 0 , "boom0",1, 0 )

 objet( "SphereBlue" )
  renderMode( "additive" )
--  diffuse( 10, 200, 200, 255 )
--  diffuse( 30, 255, 255, 255 )
--  diffuse( 15, 255, 255, 225 )
  diffuse( 30, 0, 0, 0 )
  diffuse( -1, 0, 0, 0 )

 g_scale (60, 1.1,1.02,1.0)

script( 5, "sfx_boom1" )

terminate (120)