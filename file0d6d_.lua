mesh( "mineglo.dff" )
frameRate( 80 )

objet( "spr_reactGLOW06" )
 renderMode( "additive+" )
sprite (1)
 begin_loop (-1)
  diffuse( 10, 250, 250, 150 )
  diffuse( 10, 0, 0, 0 )
 end_loop (-1)
objet( "spr_reactGLOW08" )
 renderMode( "additive+" )
sprite (1)
 begin_loop (-1)
  diffuse( 10, 250, 250, 150 )
  diffuse( 10, 0, 0, 0 )
 end_loop (-1)

objet( "spr_reactGLOW07" )
 renderMode( "additive+" )
sprite (1)
 begin_loop (-1)
  diffuse( 10, 0, 0, 0 )
  diffuse( 10, 250, 250, 150 )
 end_loop (-1)
objet( "spr_reactGLOW09" )
 renderMode( "additive+" )
sprite (1)
 begin_loop (-1)
  diffuse( 10, 0, 0, 0 )
  diffuse( 10, 250, 250, 150 )
 end_loop (-1)

objet( "vol" )
 renderMode( "additive" )
  diffuse( -1, 150, 150, 150 )
--light( 0, -1, "emitter_mine", 5.0, 5.0, 1, 0, 0, 1, 0, 0, 0 )