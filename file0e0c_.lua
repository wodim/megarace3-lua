mesh( "shieldsfer.dff" )
frameRate( 40 )

objet( "Sphere01" )
 renderMode( "additive" )
 mapAnim ("shield2", 1, 0)
 begin_loop (-1)
  diffuse( 10, 255, 255, 255 )
  diffuse( 10, 00, 122, 88 )
 end_loop (-1)
 uv_translation( -1, 0.03, 0.022 )