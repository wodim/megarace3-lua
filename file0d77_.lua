child_mesh( "missile8.dff", "emitter_spinebee" )
frameRate( 40 )

playAnim ( 0 , "missile8",1, 0 )

objet( "Box01" )
 renderMode( "additive+" )
  diffuse( -1, 125, 125, 125 )
objet( "Box02" )
 renderMode( "additive" )
  diffuse( -1, 255, 200, 200 )
objet( "Box03" )
 renderMode( "additive+" )
  diffuse( -1, 125, 125, 125 )

objet( "Cone01" )
 renderMode( "additive+" )
  diffuse( -1, 125, 125, 125 )
objet( "Cone02" )
 renderMode( "additive+" )
  diffuse( -1, 125, 125, 125 )
objet( "Cone03" )
 renderMode( "additive+" )
  diffuse( -1, 255, 155, 255 )

light( 0, -1, "emitter_spinebee", 36.0, 36.0, 0, 1, 9, 0, 1, 9, 0 )

