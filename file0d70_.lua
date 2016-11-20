child_mesh( "missile2.dff", "emitter_spinebee" )
frameRate( 40 )
 playAnim ( 0 , "missile2", 1 , 0 )

objet( "missile" )
 renderMode( "additive+" )
  diffuse( -1, 255, 255, 255 )

objet( "Box01" )
 renderMode( "additive+" )
  diffuse( -1, 255, 255, 255 )
 sprite (1)

light( 0, -1, "emitter_spinebee", 36.0, 36.0, 1, 2, 3, 1, 2, 3, 0 )
particules( 0, "emitter_spinebee", "steal", 0 )

