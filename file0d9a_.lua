mesh( "repell.dff" )
frameRate( 30 )
playAnim ( 0 , "repell",1, 1 )

 objet( "Object01" )
  renderMode( "additive+" )
  diffuse( 5, 33, 33, 33 )
  diffuse( 25, 133, 133, 133 )
  diffuse( -1, 00, 00, 0 )
g_scale (60, 1.01,1.01,1.01)

 objet( "morph01" )
  renderMode( "additive" )
  diffuse( 15, 0, 0, 0 )
  diffuse( 20, 255, 255, 255 )
  diffuse( 20, 255, 255, 255 )
  diffuse( -1, 0, 0, 0 )


 objet( "morph" )
  renderMode( "additive" )
  diffuse( 3, 0, 0, 0 )
  diffuse( 20, 255, 255, 255 )
  diffuse( 20, 255, 255, 255 )
  diffuse( -1, 0, 0, 0 )
	
terminate (60)