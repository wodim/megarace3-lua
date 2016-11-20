child_mesh( "missile9.dff", "emitter_spinebee" )
frameRate( 40 )

playAnim ( 0 , "missile9",1, 0 )

objet( "Box01" )
 renderMode( "additive+" )
  diffuse( -1, 125, 125, 125 )
objet( "Box02" )
 renderMode( "additive" )
  diffuse( -1, 255, 200, 200 )

objet( "Cone01" )
 renderMode( "normal" )
  diffuse( -1, 255, 255, 255 )
objet( "Cone02" )
 renderMode( "normal" )
  diffuse( -1, 255, 255, 255 )

light( 0, -1, "emitter_spinebee", 20.0, 20.0, 0, 0, 5, 0, 0, 5, 0 )
flare( 0, "emitter_Cone01", "flare3", "flare3", 1 )
flare( 0, "emitter_Cone02", "flare3", "flare3", 1 )
