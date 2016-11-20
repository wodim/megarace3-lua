child_mesh( "nanofx.dff", "Nanotech" )
frameRate( 40 )

objet( "Cone01" )
 renderMode( "additive+" )
 uv_translation( -1, 0.0, 0.1 )
  diffuse( -1, 255, 250, 250 )
 begin_loop (-1)
  diffuse( 6, 10, 1, 1 )
  diffuse( 48, 10, 0, 0 )
 end_loop (-1)
 diffuse( -1, 250, 125, 120 )

objet( "Cone02" )
 renderMode( "additive+" )
 uv_translation( -1, 0.0, 0.1 )
  diffuse( -1, 255, 250, 250 )
 begin_loop (-1)
  diffuse( 60, 10, 1, 1 )
  diffuse( 38, 255, 25, 25 )
  diffuse( 48, 0, 0, 0 )
  diffuse( 2, 0, 0, 0 )
 end_loop (-1)
 diffuse( -1, 250, 125, 120 )

objet( "Sphere01" )
 renderMode( "additive+" )
 uv_translation( -1, 0.01, 0.1 )
 diffuse( -1, 250, 250, 250 )

objet( "spr_glo01" )
 renderMode( "additive+" )
 sprite (1)
 diffuse( -1, 250, 250, 200 )

flare( 0, "emitter_l", "flare6", "flare6", 1 )
flare( 0, "emitter_r", "flare6", "flare6", 1 )

light( 0, -1, "emitter_r", 30.0, 30.0, 2, 0, 0, 2, 0, 0, 1 )