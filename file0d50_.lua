mesh( "missile.dff" )
frameRate( 40 )

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

light( 0, -1, "emitter_reactor", 30.0, 30.0, 4, 2, 1, 3, 2, 1, 0 )
--flare( 0, "emitter_reactor", "flareR3", "flareR3", 1 )
--particules( 0, "emitter_reactor", "missile", 0 )