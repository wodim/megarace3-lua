frameRate( 40 )

objet( "conelum3" )
 renderMode( "additive" )
 diffuse( -1, 150, 150, 150 )

objet( "Cylinder5" )
 renderMode( "additive" )
 diffuse( -1, 150, 150, 150 )
objet( "Cylinder6" )
 renderMode( "additive" )
 diffuse( -1, 150, 150, 150 )

objet( "light01" )
 renderMode( "additive" )
  begin_loop (-1)
  diffuse( 15, 10, 1, 1 )
  diffuse( 10, 155, 125, 150 )
  diffuse( 10, 155, 125, 150 )
  diffuse( 10, 20, 1, 1 )
  diffuse( 5, 10, 1, 1 )
 end_loop (-1)

objet( "light02" )
 renderMode( "additive" )
  begin_loop (-1)
  diffuse( 10, 10, 1, 1 )
  diffuse( 10, 155, 125, 150 )
  diffuse( 10, 155, 125, 150 )
  diffuse( 10, 20, 1, 1 )
  diffuse( 10, 10, 1, 1 )
 end_loop (-1)

objet( "neon5" )
 renderMode( "normal" )
 diffuse( -1, 250, 250, 250 )
objet( "neon6" )
 renderMode( "normal" )
 diffuse( -1, 250, 250, 250 )


particules( 0, "emitter_fire", "C2fire", 0 )