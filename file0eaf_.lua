mesh( "damage.dff" )
frameRate( 50 )
 
particules( 0, "hmitter_01", "flammes3", 2 )
particules( 0, "hmitter_01", "flamGLO", 1 )
particules( 7, "hmitter_01", "fum", 2 )
light( 0, -1, "hmitter_01", 15.0, 15.0, 2, 1, 0, 2, 1, 0, 0 )

objet ( "all_atomics")
renderMode( "additive" )
--begin_loop (-1)
diffuse( -1, 0, 0, 0 )
--end_loop (-1)

begin_loop (-1)
 particules( 15, "hmitter_04", "fume", 0 )
 particules( 50, "hmitter_02", "flam", 0 )
 particules( 55, "hmitter_03", "fume", 0 )
 particules( 65, "hmitter_04", "flam", 0 )
 particules( 250, "hmitter_03", "fume", 0 )
end_loop (-1)

 particules( 85, "hmitter_04", "sparkdam", 0 )
 particules( 200, "hmitter_02", "sparkdam", 0 )


--script( 10, "sfx_damspark1" )
 --script( 90, "sfx_damspark2" )
 --script( 100, "sfx_damspark1" )