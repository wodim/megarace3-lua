mesh( "plaquehyper.dff" )

frameRate( 40 )

objet( "all_atomics" )
 renderMode( "additive" )
 uv_translation( -1, 0.0, -0.01 )
diffuse( 20, 200, 200, 200)
diffuse( 20, 00, 0, 0)
diffuse( -1, 00, 0, 0)

particules( 0, "emitter_cam", "hyper", 0 )