frameRate( 20 )

objet( "volum00" )
 renderMode( "additive+" )
 begin_loop (-1)
  diffuse( 30, 130, 130, 130 )
  diffuse( 10, 230, 230, 230 )
  diffuse( 20, 150, 150, 130 )
  diffuse( 10, 130, 130, 130 )
 end_loop (-1)
 particules( 0, "volum00", "lum1", 0 )

objet( "volum02" )
 renderMode( "additive+" )
  begin_loop (-1)
  diffuse( 30, 230, 230, 230 )
  diffuse( 300, 230, 230, 230 )
  diffuse( 800, 130, 130, 130 )
  diffuse( 400, 230, 230, 230 )
  diffuse( -1, 155, 135, 135 )
  end_loop (-1)
 particules( 0, "volum02", "lum1", 1 )

objet( "volum01" )
 renderMode( "additive" )
  diffuse( -1, 155, 135, 135 )
  
objet( "volum2" )
 renderMode( "additive+" )
 -- begin_loop (-1)
  diffuse( 30, 230, 230, 230 )
  diffuse( 300, 230, 230, 230 )
  diffuse( 800, 130, 130, 130 )
  diffuse( 400, 230, 230, 230 )
 -- end_loop (-1)
 diffuse( -1, 150, 150, 150 )
 particules( 0, "volum2", "lum1", 1 )

objet( "volum03" )
 renderMode( "additive+" )
 -- begin_loop (-1)
  diffuse( 30, 230, 230, 230 )
  diffuse( 300, 230, 230, 230 )
  diffuse( 800, 130, 130, 130 )
  diffuse( 400, 230, 230, 230 )
 -- end_loop (-1)
 particules( 0, "volum03", "lum1", 1 )

objet( "volum04" )
 renderMode( "additive+" )
 -- begin_loop (-1)
  diffuse( 300, 230, 230, 230 )
  diffuse( 300, 230, 230, 230 )
  diffuse( 800, 130, 130, 130 )
  diffuse( 400, 230, 230, 230 )
 -- end_loop (-1)
 particules( 0, "volum04", "lum1", 1 )

objet( "volum05" )
 renderMode( "additive+" )
 -- begin_loop (-1)
  diffuse( 130, 230, 230, 230 )
  diffuse( 300, 230, 230, 230 )
  diffuse( 800, 130, 130, 130 )
  diffuse( 400, 230, 230, 230 )
 -- end_loop (-1)
 particules( 0, "volum05", "lum2", 1 )