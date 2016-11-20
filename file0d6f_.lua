child_mesh( "missile3.dff", "emitter_spinebee" )
frameRate( 30 )

objet( "missile" )
 renderMode( "additive+" )
  diffuse( -1, 255, 255, 255 )
 uv_translation( -1, 0.0, 0.2 )
objet( "missile02" )
 renderMode( "additive+" )
  diffuse( -1, 255, 255, 255 )
 uv_translation( -1, 0.0, 0.2 )
objet( "missile03" )
 renderMode( "additive+" )
  diffuse( -1, 255, 255, 255 )
 uv_translation( -1, 0.0, 0.2 )


objet( "missile01" )
 renderMode( "additive+" )
  diffuse( -1, 255, 255, 255 )

objet( "Box01" )
 renderMode( "additive+" )
  diffuse( -1, 255, 255, 255 )
-- sprite (1)
  

light( 0, -1, "emitter_spinebee", 36.0, 36.0, 3, 1, 0, 3, 1, 0, 0 )
--flare( 0, "emitter_spinebee", "flareR3", "flareR3", 1 )
particules( 8, "emitter_spinebee", "flam03", 0 )