mesh( "plaqueflash.dff" )
frameRate( 80 )

objet( "Plane" )
 renderMode( "additive" )
 begin_loop (1)
    diffuse( 1, 0, 0, 0)
    diffuse( 99, 255, 255, 255)
    diffuse( 99, 0, 0, 50)
    diffuse( 50, 0, 0, 0)
  end_loop (1)