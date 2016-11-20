child_mesh( "vague.dff", "o3d_vague" )
frameRate( 30 )

-- light( 0, -1, "emitter_glo", 139.0, 139.0, 1, 1, 2, 1, 1, 2, 2 )

objet( "Shape02" )
 renderMode( "additive+" )
 diffuse( -1, 250, 250, 250 )
uv_translation( -1, 0.00, -0.1 )

objet( "glo" )
 renderMode( "additive" )
  diffuse( -1, 205, 205, 205 )

objet( "spr_bobo" )
 renderMode( "additive+" )
sprite(0)
 begin_loop (-1)
  diffuse( 10, 6, 6, 6 )
  diffuse( 10, 205, 205, 205 )
 end_loop (-1)

