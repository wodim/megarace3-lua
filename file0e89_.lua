mesh( "plaquerain.dff" )
frameRate( 40 )

objet( "Plane" )
 renderMode( "additive" )
 uv_translation( -1, -0.01, -0.04 )
  
  begin_loop (-1)
   diffuse( 40, 200, 245, 255)
   diffuse( 40, 185, 225, 255)
  end_loop (-1)
    
particules( 0, "emitter_cam", "rain1", 1 )
particules( 0, "emitter_camsol", "rain2", 2 )

  