frameRate( 40 )
 
objet( "anno" )
 renderMode( "normal" )
objet( "glo1" ) 
 renderMode( "additive" )
    diffuse( -1, 100, 140, 255)
objet( "glo2" ) 
 renderMode( "additive" )
    diffuse( -1, 100, 140, 255)
objet( "glo3" ) 
 renderMode( "additive" )
    diffuse( -1, 100, 140, 255)
objet( "glo4" ) 
 renderMode( "additive" )
    diffuse( -1, 100, 140, 255)

particules( 0, "emitter_glo1", "L5anno", 2 )
particules( 0, "emitter_glo2", "L5anno", 2 )
particules( 0, "emitter_glo3", "L5anno", 2 )
particules( 0, "emitter_glo4", "L5anno", 2 )
