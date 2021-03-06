mesh( "boom.dff" )
frameRate( 30 )

playAnim ( 0 , "boom",1, 0 )

 objet( "Cylinder01" )
  renderMode( "additive" )
--  diffuse( 30, 0, 0, 0 )
--  diffuse( 10, 200, 200, 255 )
--  diffuse( 10, 200, 200, 255 )
--  diffuse( 10, 0, 0, 0 )
  diffuse( -1, 0, 0, 0 )
-- uv_translation( -1, 0.0, 0.08 )

 objet( "Cylinder02" )
  renderMode( "additive" )
--  diffuse( 30, 0, 0, 0 )
-- diffuse( 10, 200, 200, 255 )
--  diffuse( 10, 200, 200, 255 )
--  diffuse( 10, 0, 0, 0 )
  diffuse( -1, 0, 0, 0 )
 uv_translation( -1, -0.08, 0.0 )

 objet( "Sphere0" )
  renderMode( "additive" )
--  diffuse( 20, 0, 0, 0 )
--  diffuse( 40, 0,0,0)
--  diffuse( 04, 255, 255, 255 )
--  diffuse( 33, 255, 255, 255 )
--  diffuse( 4, 0,0,0)
  diffuse( -1, 0,0,0)
-- g_scale (20, 1.0,1.0,1.0)
-- g_scale (40, 0.9,0.9,0.9)
 uv_translation( -1, -0.02, 0.01 )

 objet( "SphereBlue" )
  renderMode( "additive" )
  diffuse( 60, 0, 0, 0 )
  diffuse( 10, 200, 200, 255 )
  diffuse( 10, 255, 255, 255 )
  diffuse( 10, 255, 255, 225 )
  diffuse( 10, 0, 0, 0 )
  diffuse( -1, 0, 0, 0 )
 g_scale (60, 1,1,1)
 g_scale (40, 1.05,1.05,1.05)
	
 objet( "wave01" )
  renderMode( "additive" )
--  diffuse( 07, 0, 0, 0 )
--  diffuse( 13, 100, 200, 200 )
--  diffuse( 06, 255, 255, 200 )
--  diffuse( 07, 0, 0, 0 )
  diffuse( -1, 0, 0, 0 )
-- uv_translation( -1, 0.0, -0.09 )
-- g_scale (13, 1.01,1.01,1.01)

 objet( "wave02" )
  renderMode( "additive" )
--  diffuse( 07, 0, 0, 0 )
--  diffuse( 25, 255, 250, 250 )
--  diffuse( 08, 0, 0, 0 )
  diffuse( -1, 0, 0, 0 )
-- g_scale (40, 1.003,1.003,1.003)

light( 0, 100, "emitter_boom", 55.0, 1.0, 0, 1, 1, 0, 0, 1, 1 )
 terminate (100)