mesh( "bonpos.dff" )
frameRate( 20 )
 playAnim ( 0 , "bonpos", .6 , 1 )

objet( "spr_glo" )
 renderMode( "additive" )
 sprite (1)
  diffuse( -1, 85, 85, 95 )

objet( "Torus01" )
 renderMode( "additive+" )
  diffuse( 10, 50, 150, 250 )
 uv_translation( -1, 0.03, -0.03 )

objet( "Torus02" )
 renderMode( "additive+" )
  diffuse( 10, 50, 150, 250 )
 uv_translation( -1, 0.03, -0.03 )

objet( "hglo01" )
 renderMode( "additive" )
   diffuse( -1, 55, 65, 45 )
