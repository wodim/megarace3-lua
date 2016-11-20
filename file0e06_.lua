mesh( "miscom.dff" )
frameRate( 40 )

 playAnim ( 0 , "miscom", 5 , 1 )

objet( "all_atomics" )
 renderMode( "additive" )

light( 0, -1, "Box02", 30.0, 30.0, 0, 2, 3, 0, 2, 3, 0 )
flare( 0, "Box02", "flare3", "flare3", 1 )
