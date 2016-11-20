child_mesh( "reactor2op.dff", "emitter_R" )
 frameRate( 50 )

objet( "R2" )
 renderMode( "additive" )
 diffuse( -1, 255, 255, 255 )

flare( 0, "emitter_R", "flaRe4", "flare4", 1 )
light( 0, -1, "dynalight_00", 14.0, 14.0, 1, 1, 6, 1, 1, 6, 2 )
