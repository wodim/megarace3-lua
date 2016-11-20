child_mesh( "missile6.dff", "emitter_spinebee" )
frameRate( 40 )



objet( "Box01" )
 renderMode( "additive+" )
  diffuse( -1, 255, 200, 255 )
 sprite(0)
--begin_loop (-1)
  --g_scale (9, 1.1,1.01,1.01)
  --g_scale (9, .001,.001,.001)
 --end_loop (-1)

objet( "missile01" )
 renderMode( "additive+" )
  diffuse( 20, 125, 55, 55 )
  diffuse( -1, 255, 255, 255 )

light( 0, -1, "emitter_spinebee", 40.0, 40.0, 3, 0, 1, 3, 0, 1, 0 )

terminate (200)