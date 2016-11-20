Catastrophe={}

-- Function 'Init'
function Catastrophe:Init()
  PrintDebug("CatastropheInit ...")
	SetEtat(-1)
	
	ClearTrack()
	ClearPod()
	ClearModule(ATT)
	ClearModule(DEF)
	ClearModule(VIT)	

  	local cpttrck = 1
	local nbtrck = 1	
	local nomtrck
	local gm = GetGameMode()
	local nbtrckdispo =	GetTrackState(gm)
	PrintDebug("Track State : "..nbtrckdispo)
	


	while nbtrck < 7 do
		cpttrck = 100 + nbtrck
		nomtrck = GetText(cpttrck)
		AddTrack(gm, nomtrck)
		nbtrck = nbtrck+1
	end

	InitTrackIt()

	nbtrck = 1
	
	while nbtrck <= nbtrckdispo do
		cpttrck = 100 + nbtrck
		nomtrck = GetText(cpttrck)
		SetTrackAvailable(gm, nomtrck, 1);
		nbtrck = nbtrck+1
	end
end

-- Function 'Update'
function Catastrophe:Update()

	if GetEtat()==0 then
		setVideo( "sequence02", "sequence_02" )
		CreatePodPlayer("Player1", "gc.dff", "gc" ,8 , "Diamond_Ray"  ,"Unicorns_Protection"  ,"Scale_of_Blade")
		StartRace("L1")
		IncrementeEtat()
	end

	if GetEtat()==2 then
		setVideo( "sequence03", "sequence_03" )
		CreatePodPlayer("Player1", "vul.dff", "vul" ,8 , "Diamond_Ray"  ,"Titans_Skin"  ,"Hermes_Spirit")
		StartRace("L2")
		IncrementeEtat()
	end

	if GetEtat()==4 then
		setVideo( "sequence04", "sequence_04" )
		CreatePodPlayer("Player1", "tn.dff", "tn" ,8 , "Damocles"  ,"Unicorns_Protection"  ,"Vampires_Celerity")
--		CreatePodPlayer("Player1", "wo.dff", "wo" ,8 , "Cocatrix_Eyes"  ,"Quezacoatls_Feather"  ,"Hermes_Spirit")
		StartRace("L3")
		IncrementeEtat()
	end

	if GetEtat()==6 then
		setVideo( "sequence05", "sequence_05" )
		CreatePodPlayer("Player1", "sa.dff", "sa" ,8 , "Spines_Bee"  ,"Titans_Skin"  ,"Hermes_Spirit")
		StartRace("L4")
		IncrementeEtat()
	end

	if GetEtat()==8 then
		setVideo( "sequence06", "sequence_06" )
		CreatePodPlayer("Player1", "tn.dff", "tn" ,8 , "Spines_Bee"  ,"Unicorns_Protection"  ,"Vampires_Celerity")
		StartRace("L5")
		IncrementeEtat()
	end

	if GetEtat()==10 then
		setVideo( "sequence07", "sequence_07" )
		CreatePodPlayer("Player1", "sap.dff", "sap" ,8 , "Spines_Bee"  ,"Quezacoatls_Feather"  ,"Vampires_Celerity")
		StartRace("L6")
		IncrementeEtat()
	end

	if GetEtat()==12 then
		setVideo( "sequence08", "sequence_08" )
		CreatePodPlayer("Player1", "rb.dff", "rb" ,8 , "Spines_Bee"  ,"Quezacoatls_Feather"  ,"Vampires_Celerity")
		StartRace("L7")
		IncrementeEtat()
	end


end

-- Function 'End'
function Catastrophe:End()

end

