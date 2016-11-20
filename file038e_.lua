C1lua={win}

-- Function 'Init'
function C1lua:Init()




	if GetCSMode() == 0 then
	-- carriere 1
		CreatePodIa ("Hyper-Ion","hy.dff", "hy",1 , "Module01"  ,"Module02"  ,"Module03"  , "IA_Neutre"  , "moden" ,-5)
		CreatePodIa ("X-tra Bee","xb.dff", "xb", 2, "Module01"  ,"Module02" , "Module03"  , "IA_Defense" , "moded" ,4)
		CreatePodIa ("Manta-Ray","mr.dff", "mr", 3, "Module01"  ,"Module02" , "Module03"  , "IA_Attaque"   , "modea" ,-11)
		CreatePodIa ("NanoTriton","nt.dff", "nt", 4 ,"Module01"  ,"Module02" , "Module03"  , "IA_Neutre"    , "moden",11)
		CreatePodIa ("Wotan","wo.dff", "wo",5 , "Module01"  ,"Module02" , "Module03"  , "IA_Neutre"    , "moden",2)
		CreatePodIa ("Tri-Nyx","tn.dff", "tn",6 , "Module01"  ,"Module02" , "Module03"  , "IA_Neutre"    , "moden",-15)
		CreatePodIa ("G-Cricket","gc.dff", "gc",7 , "Module01"  ,"Module02" , "Module03"  , "IA_Neutre"    , "moden",-11)
		SetPodIaRatrappage("Hyper-Ion" , 8 , 5 )
		SetPodIaRatrappage("X-tra Bee" , 8 , 8 )
		SetPodIaRatrappage("Manta-Ray" , 8 , 5 )
		SetPodIaRatrappage("NanoTriton" , 8 , 8 )
		SetPodIaRatrappage("Wotan" , 8 , 5 )
		SetPodIaRatrappage("Tri-Nyx" , 8 , 5 )
		SetPodIaRatrappage("G-Cricket" , 8 , 5 )
	else
	-- Carriere 2
		CreatePodIa ("Hyper-Ion","hy.dff", "hy",1 , "Module01"  ,"Module02"  ,"Module03"  , "IA_Neutre"  , "moden" ,11)
		CreatePodIa ("X-tra Bee","xb.dff", "xb", 2, "Module01"  ,"Module02" , "Module03"  , "IA_Defense" , "moded" ,20)
		CreatePodIa ("Manta-Ray","mr.dff", "mr", 3, "Module01"  ,"Module02" , "Module03"  , "IA_Attaque"   , "modea" ,5)
		CreatePodIa ("NanoTriton","nt.dff", "nt", 4 ,"Module01"  ,"Module02" , "Module03"  , "IA_Neutre"    , "moden",27)
		CreatePodIa ("Wotan","wo.dff", "wo",5 , "Module01"  ,"Module02" , "Module03"  , "IA_Neutre"    , "moden",17)
		CreatePodIa ("Tri-Nyx","tn.dff", "tn",6 , "Module01"  ,"Module02" , "Module03"  , "IA_Neutre"    , "moden",1)
		CreatePodIa ("G-Cricket","gc.dff", "gc",7 , "Module01"  ,"Module02" , "Module03"  , "IA_Neutre"    , "moden",5)
		SetPodIaRatrappage("Hyper-Ion" , 4 , 12 )
		SetPodIaRatrappage("X-tra Bee" , 4 , 15 )
		SetPodIaRatrappage("Manta-Ray" , 4 , 12 )
		SetPodIaRatrappage("NanoTriton" , 4 , 15 )
		SetPodIaRatrappage("Wotan" , 4 , 12 )
		SetPodIaRatrappage("Tri-Nyx" , 4 , 12 )
		SetPodIaRatrappage("G-Cricket" , 4 , 12 )
	end

	local value = GetPodNameAtRank(8)
	PrintDebug(value.." Position 8")
	if value == player then value = "Player1" end
	PlacePodGrille(value,1)
	value = GetPodNameAtRank(7)
	PrintDebug(value.." Position 7")
	if value == player then value = "Player1" end
	PlacePodGrille(value,2)
	value = GetPodNameAtRank(6)
	PrintDebug(value.." Position 6")
	if value == player then value = "Player1" end
	PlacePodGrille(value,3)
	value = GetPodNameAtRank(5)
	PrintDebug(value.." Position 5")
	if value == player then value = "Player1" end
	PlacePodGrille(value,4)
	value = GetPodNameAtRank(4)
	PrintDebug(value.." Position 4")
	if value == player then value = "Player1" end
	PlacePodGrille(value,5)
	value = GetPodNameAtRank(3)
	PrintDebug(value.." Position 3")
	if value == player then value = "Player1" end
	PlacePodGrille(value,6)
	value = GetPodNameAtRank(2)
	PrintDebug(value.." Position 2")
	if value == player then value = "Player1" end
	PlacePodGrille(value,7)
	value = GetPodNameAtRank(1)
	PrintDebug(value.." Position 1")
	if value == player then value = "Player1" end
	PlacePodGrille(value,8)

	SetNbLap(3)

	JoueFluxMusique("L7-NetEvilMind", 3, TRUE);
  	PrintDebug("Track C1 Update...")
end

-- Function 'Update'
function C1lua:Update()

end

-- Function 'End'
function C1lua:End()

end


function C1lua:Notify(event,param)

	if event==TM_POD_NEWLAP then
		if GetPodCurrentLap(param.name)>2 then
			PrintDebug("Pod Win: ")
			PrintDebug(param.name)
			if param.name == "Player1" then
				StopRace()
				StartClockTrack(5,0)
				SetFadeTextIndexIG(686, 55, 0, 255, 0, 255, 2, 10, 0, -1,  350)
				self.win=1
			end
		end
	end
	
	if event==TM_ENTITY_MORT then
		if param.name=="Player1" then
			StopRace()
			StartClockTrack(5,0)
			self.win=0
			SetFadeTextIndexIG(686, 55, 255, 0, 0, 255, 2, 10, 0, -1,  350)
		end
		KillEntity(param.name)
	end
end

function C1lua:Clock(Id)
	
	if self.win==0 then
		LooseRace()
	else
		if GetPodClassement("Player1") == 1 then
			if GetCSMode() == 0 then
				SetGlobalVariable("GainCar",11)
			else
				SetGlobalVariable("GainCar",6)
			end
		end
		WinRace()
	end
	LoadInterface("Menu_Fin_Course")
end
