mesh( "bonneg.dff" )
frameRate( 40 )
 playAnim ( 0 , "bonneg", .5 , 1 )

objet( "spr_glo" )
 renderMode( "additive+" )
sprite (0)
  diffuse( -1, 250, 250, 250 )
mapAnim ("glo4", 1,0)

objet( "Torus01" )
 renderMode( "additive" )
  diffuse( -1, 250, 250, 250 )
 uv_translation( -1, 0.03, -0.03 )

objet( "Torus02" )
 renderMode( "additive" )
  diffuse( 40, 250, 250, 250 )
 uv_translation( -1, 0.03, -0.03 )
 
objet( "hglo01" )
 renderMode( "additive" )
   diffuse( -1, 45, 65, 45 )
