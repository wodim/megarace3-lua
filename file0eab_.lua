mesh( "noturn.dff" )
frameRate( 40 )
light( 0, -1, "emitter_reactor", 15.0, 15.0, 2, 0, 0, 2, 0, 0, 1 )
objet( "missile" )
 renderMode( "normal" )
  diffuse( -1, 250, 250, 250 )
objet( "Box01" )
 renderMode( "additive" )
sprite (1)
 begin_loop (-1)
  diffuse( -1, 250, 250, 250 )
  diffuse( 10, 0, 0, 0 )
 end_loop (-1)


