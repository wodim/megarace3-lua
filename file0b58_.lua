Carriere={}

-- Function 'Init'
function Carriere:Init()
  PrintDebug("CarriereInit ...")
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
	local nbtrckdispo =	7	 --GetTrackState(gm)
	PrintDebug("Track State : "..nbtrckdispo)
	


	while nbtrck < 8 do
		cpttrck = 189 + nbtrck
		nomtrck = GetText(cpttrck)
		AddTrack(gm, nomtrck)
		nbtrck = nbtrck+1
	end

	InitTrackIt()

	nbtrck = 1
	
	while nbtrck <= nbtrckdispo do
		cpttrck = 189 + nbtrck
		nomtrck = GetText(cpttrck)
		SetTrackAvailable(gm, nomtrck, 1);
		nbtrck = nbtrck+1
	end


end

-- Function 'Update'
function Carriere:Update()

	if GetEtat()==0 then
		StartRace("C1")
		IncrementeEtat()
	end

	if GetEtat()==2 then
		StartRace("C2")
		IncrementeEtat()
	end

	if GetEtat()==4 then
		StartRace("C3")
		IncrementeEtat()
	end

	if GetEtat()==6 then
		StartRace("C4")
		IncrementeEtat()
	end

	if GetEtat()==8 then
		StartRace("C5")
		IncrementeEtat()
	end

	if GetEtat()==10 then
		StartRace("C6")
		IncrementeEtat()
	end

	if GetEtat()==12 then
		StartRace("C7")
		IncrementeEtat()
	end



end

-- Function 'End'
function Carriere:End()

end
