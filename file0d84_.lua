child_mesh( "reactor3.dff", "emitter_R" )
frameRate( 40 )
 playAnim ( 0 , "reactor3",1, 1 )

objet( "Sphere01" )
 renderMode( "additive" )
 uv_translation( -1, -0.031, 0.0 )
 diffuse( 10, 0, 0, 0 )
 diffuse( 10, 0, 0, 0 )
 diffuse( 10, 0, 0, 100 )
 diffuse( 100, 0, 50, 200 )
 diffuse( -1, 255, 255, 255 )

objet( "Cone01" )
 renderMode( "additive" )
 sprite(0)
 diffuse( -1, 255, 255, 255 )
--objet( "spr_reactGLOW03" )
 --renderMode( "additive" )
 --sprite(0)
 --diffuse( -1, 220, 220, 250 )
  uv_translation( -1, 0.0, 0.04 )

flare( 0, "emitter_R", "flare4", "flare4", 1 )
light( 0, -1, "dynalight_00", 14.0, 14.0, 1, 2, 4, 1, 2, 4, 0 )




