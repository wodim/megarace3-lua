frameRate( 40 )

objet( "bassin" )
 renderMode( "normal" )
 diffuse( -1, 50, 255, 200)

objet( "eau" )
 renderMode( "normal" )
 diffuse( -1, 50, 255, 100 )
 uv_translation( -1, 0.002, 0.002 )

objet( "quartz" )
 renderMode( "normal" )
 diffuse( -1, 255, 3, 8)
-- diffuse( -1, 180, 163, 68)

objet( "quartz01" )
 renderMode( "normal" )
 diffuse( -1, 13, 148, 105)


particules( 0, "emit_gaz01", "A5gaz1", 0 )

particules( 0, "emit_gaz02", "A5gaz1", 0 )

particules( 0, "emit_gaz03", "A5gaz1", 0 )

particules( 0, "emit_gaz04", "A5gaz1", 0 )

particules( 0, "emit_gaz05", "A5gaz1", 0 )

