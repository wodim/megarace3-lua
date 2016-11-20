child_mesh( "missile2.dff", "emitter_spinebee" )
frameRate( 40 )
 playAnim ( 0 , "missile2", 1 , 0 )

objet( "missile" )
 renderMode( "additive+" )
  diffuse( -1, 255, 255, 255 )

objet( "Box01" )
 renderMode( "additive" )
  diffuse( -1, 25, 25, 25 )
 sprite (1)