child_mesh( "missile5.dff", "emitter_spinebee" )
frameRate( 40 )
playAnim ( 0 , "missile5",1, 0 )

objet( "missile01" )
 renderMode( "normal" )
  diffuse( -1, 255, 255, 255 )

objet( "Box01" )
 renderMode( "additive+" )
  diffuse( -1, 255, 255, 255 )
sprite(0)

objet( "Box05" )
 renderMode( "additive+" )
  diffuse( -1, 255, 185, 155 )

light( 0, -1, "emitter_spinebee", 30.0, 30.0, 0, 9, 12, 0, 9, 12, 0 )
flare( 0, "emitter_spinebee", "flareR1", "flareR1", 1 )