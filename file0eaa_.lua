frameRate( 40 )

objet( "arab1" )
 renderMode( "additive" )
 begin_loop (-1)
  diffuse( 50, 20, 10, 10 )
  diffuse( 50, 200, 200, 200 )
  diffuse( 50, 20, 10, 10 )
 end_loop (-1)
 
objet( "glored15" )
 renderMode( "additive" )
 sprite (1)
 begin_loop (-1)
  diffuse( 10, 10, 1, 1 )
  diffuse( 98, 250, 250, 250 )
  diffuse( 48, 10, 1, 1 )
  diffuse( 2, 1, 1, 1 )
 end_loop (-1)

objet( "globlu16" )
 renderMode( "additive" )
 sprite (1)
 begin_loop (-1)
  diffuse( 10, 10, 1, 1 )
  diffuse( 98, 250, 250, 250 )
  diffuse( 48, 10, 1, 1 )
  diffuse( 2, 1, 1, 1 )
 end_loop (-1)

objet( "TVillum" )
 renderMode( "normal" )
 diffuse( -1, 250, 250, 250 )
 
 objet( "TVlum" )
 renderMode( "additive" )
diffuse( -1, 150, 150, 150 )

particules( 0, "emitter_fum0", "c6fum", 0 )
particules( 0, "emitter_fum1", "c6fum", 0 )
particules( 0, "emitter_fum2", "c6fum", 0 )
particules( 0, "emitter_fire1", "c6fire", 0 )
particules( 0, "emitter_fire2", "c6fire", 0 )
particules( 0, "emitter_fire3", "c6fire", 0 )

particules( 0, "emitter_laser1", "c6laser", 0 )
particules( 0, "emitter_laser2", "c6laser", 0 )