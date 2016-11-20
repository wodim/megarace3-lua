child_mesh( "missile7.dff", "emitter_spinebee" )
frameRate( 40 )

playAnim ( 0 , "missile7",1, 0 )

objet( "Box02" )
 renderMode( "additive" )
  diffuse( -1, 255, 200, 200 )

objet( "Box01" )
 renderMode( "additive+" )
  diffuse( -1, 125, 125, 125 )
objet( "Box05" )
 renderMode( "additive+" )
  diffuse( -1, 125, 125, 125 )
objet( "Box06" )
 renderMode( "additive+" )
  diffuse( -1, 125, 125, 125 )
objet( "Box07" )
 renderMode( "additive+" )
  diffuse( -1, 125, 125, 125 )

objet( "Box08" )
 renderMode( "additive+" )
  diffuse( -1, 255, 155, 255 )

light( 0, -1, "emitter_spinebee", 22.0, 22.0, 0, 1, 12, 0, 1, 12, 0 )