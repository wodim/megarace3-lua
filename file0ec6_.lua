frameRate( 40 )

objet( "Cylinder01" )
 renderMode( "additive" )
 diffuse( -1, 150, 150, 150 )
objet( "Cylinder04" )
 renderMode( "additive" )
 diffuse( -1, 150, 150, 150 )
objet( "Cylinder02" )
 renderMode( "normal" )
 diffuse( -1, 250, 250, 250 )
objet( "Cylinder03" )
 renderMode( "normal" )
 diffuse( -1, 250, 250, 250 )

 particules( 0, "emitter_fum04", "C6fum", 0 )
 particules( 0, "emitter_fum05", "C6fum", 0 )
 particules( 0, "emitter_fum06", "C6fum", 0 )
 
objet( "lampes" )
 renderMode( "additive" )
 diffuse( -1, 66, 66, 66 )
 
 objet( "glored03" )
 renderMode( "additive" )
 sprite (1)
 begin_loop (-1)
  diffuse( 10, 10, 1, 1 )
  diffuse( 98, 250, 250, 250 )
  diffuse( 48, 10, 1, 1 )
  diffuse( 2, 1, 1, 1 )
 end_loop (-1)

 
 