C4lua={win}

-- Function 'Init'
function C4lua:Init()

	if GetCSMode() == 0 then
	-- carriere 1
		CreatePodIa ("Hyper-Ion","hy.dff", "hy",1 , "Module01"  ,"Module02"  ,"Module03"  , "IA_Neutre"  , "moden" ,-20)
		CreatePodIa ("X-tra Bee","xb.dff", "xb", 2, "Module01"  ,"Module02" , "Module03"  , "IA_Defense" , "moded" ,-6)
		CreatePodIa ("Manta-Ray","mr.dff", "mr", 3, "Module01"  ,"Module02" , "Module03"  , "IA_Attaque"   , "modea" ,-17)
		CreatePodIa ("NanoTriton","nt.dff", "nt", 4 ,"Module01"  ,"Module02" , "Module03"  , "IA_Neutre"    , "moden",0)
		CreatePodIa ("Wotan","wo.dff", "wo",5 , "Module01"  ,"Module02" , "Module03"  , "IA_Neutre"    , "moden",-6)
		CreatePodIa ("Tri-Nyx","tn.dff", "tn",6 , "Module01"  ,"Module02" , "Module03"  , "IA_Neutre"    , "moden",-26)
		CreatePodIa ("G-Cricket","gc.dff", "gc",7 , "Module01"  ,"Module02" , "Module03"  , "IA_Neutre"    , "moden",-29)
		SetPodIaRatrappage("Hyper-Ion" , 12 , 9 )
		SetPodIaRatrappage("X-tra Bee" , 10 , 12 )
		SetPodIaRatrappage("Manta-Ray" , 12 , 9 )
		SetPodIaRatrappage("NanoTriton" , 10 , 12 )
		SetPodIaRatrappage("Wotan" , 10 , 12 )
		SetPodIaRatrappage("Tri-Nyx" , 12 , 9 )
		SetPodIaRatrappage("G-Cricket" , 12 , 9 )
	else
	-- Carriere 2
		CreatePodIa ("Hyper-Ion","hy.dff", "hy",1 , "Module01"  ,"Module02"  ,"Module03"  , "IA_Neutre"  , "moden" ,-16)
		CreatePodIa ("X-tra Bee","xb.dff", "xb", 2, "Module01"  ,"Module02" , "Module03"  , "IA_Defense" , "moded" ,2)
		CreatePodIa ("Manta-Ray","mr.dff", "mr", 3, "Module01"  ,"Module02" , "Module03"  , "IA_Attaque"   , "modea" ,-11)
		CreatePodIa ("NanoTriton","nt.dff", "nt", 4 ,"Module01"  ,"Module02" , "Module03"  , "IA_Neutre"    , "moden",7)
		CreatePodIa ("Wotan","wo.dff", "wo",5 , "Module01"  ,"Module02" , "Module03"  , "IA_Neutre"    , "moden",2)
		CreatePodIa ("Tri-Nyx","tn.dff", "tn",6 , "Module01"  ,"Module02" , "Module03"  , "IA_Neutre"    , "moden",-20)
		CreatePodIa ("G-Cricket","gc.dff", "gc",7 , "Module01"  ,"Module02" , "Module03"  , "IA_Neutre"    , "moden",-25)
		SetPodIaRatrappage("Hyper-Ion" , 8 , 12 )
		SetPodIaRatrappage("X-tra Bee" , 7 , 15 )
		SetPodIaRatrappage("Manta-Ray" , 8 , 12 )
		SetPodIaRatrappage("NanoTriton" , 7 , 15 )
		SetPodIaRatrappage("Wotan" , 7 , 15 )
		SetPodIaRatrappage("Tri-Nyx" , 8 , 12 )
		SetPodIaRatrappage("G-Cricket" , 8 , 12 )
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


	JoueFluxMusique("L5-Particule", 3, TRUE);
  	PrintDebug("Track C4 Update...")
end

-- Function 'Update'
function C4lua:Update()

end

-- Function 'End'
function C4lua:End()

end


function C4lua:Notify(event,param)
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

function C4lua:Clock(Id)
	
	if self.win==0 then
		LooseRace()
	else
		if GetPodClassement("Player1") == 1 then
			if GetCSMode() == 0 then
				SetGlobalVariable("GainCar",4)
			else
				SetGlobalVariable("GainCar",8)
			end
		end
		WinRace()
	end
	LoadInterface("Menu_Fin_Course")
end
