child_mesh( "reactor4op.dff", "emitter_R" )
frameRate( 40 )

objet( "R4" )
 renderMode( "additive" )
mapAnim ("glo4", 1,0)
 uv_translation( -1, 0.0, 0.16 )
  diffuse( -1, 255, 255, 255 )
  
light( 0, -1, "dynalight_00", 10.0, 10.0, 2, 0, 0, 2, 0, 0, 0 )