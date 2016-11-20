 
objet( "Sphere01" )
 renderMode( "additive" )
 diffuse( -1, 255, 180, 20 )
 uv_translation( -1, 0.03, 0.00 )


objet( "Rectangle01" )
sprite(0)
 renderMode( "additive" )
 diffuse( -1, 255, 245, 220 )

objet( "Sphere04" )
 renderMode( "additive" )
 diffuse( -1, 240, 150, 150 )
 sprite(0)

objet( "Sphere05" )
 renderMode( "additive" )
 diffuse( -1, 240, 150, 150 )
 sprite(0)

objet( "Sphere06" )
 renderMode( "additive" )
 diffuse( -1, 240, 150, 150 )
 sprite(0)


flare( 0, "Sphere04", "flareR4", "flareR4", 1 )
flare( 0, "Sphere05", "flareR4", "flareR4", 1 )
flare( 0, "Sphere06", "flareR4", "flareR4", 1 )

particules( 0, "emitter_partor", "L5partor", 2 )
