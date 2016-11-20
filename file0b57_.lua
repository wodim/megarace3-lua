Arcade={}

-- Function 'Init'
function Arcade:Init()

	PrintDebug("ArcadeInit ...")
	
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

	if nbtrckdispo < 8 then
--		if GetGlobalVariable("nbretryarcade") <= 0 then
			SetGlobalVariable("nbretryarcade", 2)
--		end
	end

	PrintDebug("Game mode : "..gm)
	PrintDebug("Track State : "..nbtrckdispo)
	


	SetEtat(-1)

	while nbtrck < 8 do
		cpttrck = 40 + nbtrck
		nomtrck = GetText(cpttrck)
		AddTrack(gm, nomtrck)
		nbtrck = nbtrck+1
	end

	InitTrackIt()

	
	nbtrck = 0
	if nbtrckdispo == 8 then nbtrckdispo = 7 end

	while nbtrck < nbtrckdispo do
		cpttrck = 41 + nbtrck
		nomtrck = GetText(cpttrck)
		SetTrackAvailable(gm, nomtrck, 1);
		nbtrck = nbtrck+1
	end




end

-- Function 'Update'
function Arcade:Update()


	if GetEtat()==0 then
		StartRace("A1")
		IncrementeEtat()
	end

	if GetEtat()==2 then
		StartRace("A2")
		IncrementeEtat()
	end

	if GetEtat()==4 then
		StartRace("A3")
		IncrementeEtat()
	end

	if GetEtat()==6 then
		StartRace("A4")
		IncrementeEtat()
	end

	if GetEtat()==8 then
		StartRace("A5")
		IncrementeEtat()
	end

	if GetEtat()==10 then
		StartRace("A6")
		IncrementeEtat()
	end

	if GetEtat()==12 then
		StartRace("A7")
		IncrementeEtat()
	end

end

-- Function 'End'
function Arcade:End()

end

