mesh( "misnoturn.dff" )
frameRate( 40 )

 playAnim ( 0 , "misnoturn", 5 , 1 )

objet( "all_atomics" )
 renderMode( "additive" )
  diffuse( -1, 50, 255, 200)

light( 0, -1, "Box02", 30.0, 30.0, 4, 2, 1, 3, 2, 1, 0 )
flare( 0, "Box02", "flare2", "flare2", 1 )
