frameRate( 40 )
 
objet( "glow1" )
 renderMode( "additive" )
 diffuse( -1, 255, 255, 255 )

objet( "lu" )
 renderMode( "additive" )
 diffuse( -1, 25, 255, 155 )
 uv_translation( -1, 0.02, 0 )

objet( "volume_light" )
 renderMode( "additive" )
 diffuse( -1, 255, 50, 10 )

objet( "volume_light01" )
 renderMode( "additive" )
 diffuse( -1, 255, 50, 10 )

objet( "volume_light02" )
 renderMode( "additive" )
 diffuse( -1, 255, 50, 10 )

objet( "volume_light03" )
 renderMode( "additive" )
 diffuse( -1, 255, 50, 10 )

objet( "volume_light04" )
 renderMode( "additive" )
 diffuse( -1, 255, 50, 250 )

objet( "fum1" )
 renderMode( "additive" )
 diffuse( -1, 25, 200, 255 )
 uv_translation( -1, 0.02, 0.001 )
 
objet( "fum2" )
 renderMode( "additive" )
 diffuse( -1, 25, 255, 155 )
 uv_translation( -1, 0.03, 0.01 )

objet( "flash01" )
 renderMode( "additive+" )
 diffuse( -1, 255, 50, 50 )
 uv_translation( -1, 0.09, 0.00 )

particules( 0, "emitter_gaz01", "A7gaz1", 0 )
particules( 0, "emitter_gaz02", "A7gaz1", 0 )
particules( 0, "emitter_gaz03", "A7gaz4", 0 )
particules( 0, "emitter_gaz04", "A7gaz4", 0 )

particules( 0, "emitter_lu1", "A7lum4", 0 )
particules( 0, "emitter_lu2", "A7lum4", 0 )
particules( 0, "emitter_lu3", "A7lum4", 0 )
particules( 0, "emitter_lu4", "A7lum4", 0 )
particules( 0, "emitter_lu5", "A7lum4", 0 )
particules( 0, "emitter_lu6", "A7lum4", 0 )
particules( 0, "emitter_lu7", "A7lum4", 0 )
particules( 0, "emitter_lu8", "A7lum4", 0 )
particules( 0, "emitter_lu9", "A7lum4", 0 )
particules( 0, "emitter_lu10", "A7lum4", 0 )
particules( 0, "emitter_lu11", "A7lum4", 0 )
particules( 0, "emitter_lu12", "A7lum4", 0 )