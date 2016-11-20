child_mesh( "reactor5.dff", "emitter_R1" )
frameRate( 50 )

playAnim ( 0 , "reactor5", 5 , 1 )

objet( "Cone1" )
 renderMode( "additive+" )
 uv_translation( -1, 0.0, -0.08 )
 diffuse( 10, 0, 0, 0 )
 diffuse( 10, 0, 0, 0 )
 diffuse( 10, 0, 0, 100 )
 diffuse( 100, 0, 100, 200 )
-- begin_loop (-1)
  diffuse( 3, 255, 255, 255 )
--  diffuse( 3, 120, 120, 200 )
-- end_loop (-1)
-- diffuse( -1, 255, 255, 255 )

objet( "Cone2" )
 renderMode( "additive" )
 uv_translation( -1, 0.0, -0.09 )
 diffuse( 10, 0, 0, 0 )
 diffuse( 20, 0, 0, 0 )
 diffuse( 15, 0, 0, 100 )
 diffuse( 100, 0, 100, 200 )
-- begin_loop (-1)
  diffuse( 1, 255, 255, 255 )
--  diffuse( 1, 120, 120, 120 )
-- end_loop (-1)

objet( "Cone3" )
 renderMode( "additive" )
 uv_translation( -1, 0.0, -0.1 )
 diffuse( 10, 0, 0, 0 )
 diffuse( 30, 0, 0, 0 )
 diffuse( 20, 0, 0, 100 )
 diffuse( 100, 0, 100, 200 )
-- begin_loop (-1)
  diffuse( 1, 200, 200, 200 )
--  diffuse( 1, 50, 50, 50 )
-- end_loop (-1)

objet( "spr_Box00" )
renderMode( "additive+" )
 sprite(1)
 diffuse( -1, 255, 255, 255 )
objet( "spr_Box" )
renderMode( "additive+" )
 sprite(1)
 diffuse( 10, 0, 0, 0 )
 diffuse( 100, 0, 0, 255 )
 diffuse( -1, 255, 255, 255 )
objet( "spr_Box01" )
renderMode( "additive+" )
 sprite(1)
 diffuse( 10, 0, 0, 0 )
 diffuse( 100, 0, 0, 255 )
 diffuse( -1, 255, 255, 255 )


--particules( 0, "emitter_R1", "reactor5flam", 0 )
particules( 0, "emitter_R1eft", "reactorflamturbo5", 1 )