child_mesh( "missile.dff", "emitter_spinebee" )
frameRate( 140 )
 playAnim ( 0 , "missile", 3 , 1 )

objet( "Box01" )
 renderMode( "additive" )
sprite (1)
  diffuse( -1, 250, 250, 250 )

light( 0, -1, "emitter_spinebee", 30.0, 30.0, 2, 1, 0, 2, 1, 0, 0 )
flare( 0, "emitter_spinebee", "flareR3", "flareR3", 1 )
--particules( 0, "emitter_spinebee", "missile", 0 )