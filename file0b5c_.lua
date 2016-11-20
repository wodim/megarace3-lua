Network={gm}



racelistS = {
"P1",
"A1",
"A2",
"A3",
"A4",
"A5",
"A6",
"C1",
"C2",
"C3",
"C4",
"C5",
"C6",
"C7"
}
racelistT = {
"P1",
"A1",
"A2",
"A3",
"A4",
"A5",
"A6",
"C1",
"C2",
"C3",
"C4",
"C5",
"C6",
"C7"
}
racelistFL = {
"P1",
"F1",
"F2",
"F3"
}
racelistFO = {
"P1",
"F1",
"F2",
"F3"
}
-- Function 'Init'
function Network:Init()
  PrintDebug("NetworkInit ...")
  SetEtat( -1 )

	local cpttrck = 1
	local nbtrck = 1	
	local nomtrck
	self.gm = GetGameMode()
	PrintDebug("Game mode : "..self.gm)
	
	SetEtat(-1)

	if ((self.gm == 7) or (self.gm == 11) or (self.gm ==8) or (self.gm==12)) then
		ClearTrack()

		AddTrack(self.gm, "P1")

		local nbtrckdispo = 7
		while nbtrck < 7 do
			nomtrck = "A"..nbtrck
			AddTrack(self.gm, nomtrck)
			nbtrck = nbtrck+1
		end

		nbtrck = 1
		while nbtrck < 8 do
			nomtrck = "C"..nbtrck
			AddTrack(self.gm, nomtrck)
			nbtrck = nbtrck+1
		end
		
		SetTrackAvailable(self.gm, "P1", 1)

		nbtrck = 1
		while nbtrck < 7 do
			nomtrck = "A"..nbtrck
			SetTrackAvailable(self.gm, nomtrck, 1)
			nbtrck = nbtrck+1
		end
		nbtrck = 1
		while nbtrck < 8 do
			nomtrck = "C"..nbtrck
			SetTrackAvailable(self.gm, nomtrck, 1)
			nbtrck = nbtrck+1
		end

	else
		ClearTrack()
		AddTrack(self.gm, "P1")
		local nbtrckdispo = 3
		while nbtrck <= nbtrckdispo do
			nomtrck = "F"..nbtrck
			AddTrack(self.gm, nomtrck)
			nbtrck = nbtrck+1
		end

		nbtrck = 1
		SetTrackAvailable(self.gm, "P1", 1)
		while nbtrck <= nbtrckdispo do
			nomtrck = "F"..nbtrck
			SetTrackAvailable(self.gm, nomtrck, 1)
			nbtrck = nbtrck+1
		end
	end
	InitTrackIt()

end

-- Function 'Update'
function Network:Update()
	
	if self.gm ~= GetGameMode() then
		self.gm = GetGameMode()
	end

	if ((self.gm == 7) or (self.gm == 11) or (self.gm ==8) or (self.gm==12)) then

	  if GetEtat()==0 then
		 StartRace("P1")
		 IncrementeEtat()
	  end

	  if GetEtat()==2 then
		 StartRace("A1")
		 IncrementeEtat()
	  end

	  if GetEtat()==4 then
		 StartRace("A2")
		 IncrementeEtat()
	  end

	  if GetEtat()==6 then
		 StartRace("A3")
		 IncrementeEtat()
	  end

	  if GetEtat()==8 then
		 StartRace("A4")
		 IncrementeEtat()
	  end

	  if GetEtat()==10 then
		 StartRace("A5")
		 IncrementeEtat()
	  end

	  if GetEtat()==12 then
		 StartRace("A6")
		 IncrementeEtat()
	  end

	  if GetEtat()==14 then
		 StartRace("C1")
		 IncrementeEtat()
	  end

	  if GetEtat()==16 then
		 StartRace("C2")
		 IncrementeEtat()
	  end

	  if GetEtat()==18 then
		 StartRace("C3")
		 IncrementeEtat()
	  end

	  if GetEtat()==20 then
		 StartRace("C4")
		 IncrementeEtat()
	  end

	  if GetEtat()==22 then
		 StartRace("C5")
		 IncrementeEtat()
	  end

	  if GetEtat()==24 then
		 StartRace("C6")
		 IncrementeEtat()
	  end

	  if GetEtat()==26 then
		 StartRace("C7")
		 IncrementeEtat()
	  end

	else

	  if GetEtat()==0 then
		 StartRace("P1")
		 IncrementeEtat()
	  end

	  if GetEtat()==2 then
		 StartRace("F1")
		 IncrementeEtat()
	  end

	  if GetEtat()==4 then
		 StartRace("F2")
		 IncrementeEtat()
	  end

	  if GetEtat()==6 then
		 StartRace("F3")
		 IncrementeEtat()
	  end

	end

end

-- Function 'End'
function Network:End()
end

