C7lua={win}

-- Function 'Init'
function C7lua:Init()


	if GetCSMode() == 0 then
	-- carriere 1
		CreatePodIa ("Hyper-Ion","hy.dff", "hy",1 , "Module01"  ,"Module02"  ,"Module03"  , "IA_Neutre"  , "moden" ,-25)
		CreatePodIa ("X-tra Bee","xb.dff", "xb", 2, "Module01"  ,"Module02" , "Module03"  , "IA_Defense" , "moded" ,1)
		CreatePodIa ("Manta-Ray","mr.dff", "mr", 3, "Module01"  ,"Module02" , "Module03"  , "IA_Attaque"   , "modea" ,-20)
		CreatePodIa ("NanoTriton","nt.dff", "nt", 4 ,"Module01"  ,"Module02" , "Module03"  , "IA_Neutre"    , "moden",7)
		CreatePodIa ("Wotan","wo.dff", "wo",5 , "Module01"  ,"Module02" , "Module03"  , "IA_Neutre"    , "moden",0)
		CreatePodIa ("Tri-Nyx","tn.dff", "tn",6 , "Module01"  ,"Module02" , "Module03"  , "IA_Neutre"    , "moden",-37)
		CreatePodIa ("G-Cricket","gc.dff", "gc",7 , "Module01"  ,"Module02" , "Module03"  , "IA_Neutre"    , "moden",-22)
		SetPodIaRatrappage("Hyper-Ion" , 18 , 8 )
		SetPodIaRatrappage("X-tra Bee" , 20 , 12 )
		SetPodIaRatrappage("Manta-Ray" , 18 , 8 )
		SetPodIaRatrappage("NanoTriton" , 20 , 11 )
		SetPodIaRatrappage("Wotan" , 20 , 11 )
		SetPodIaRatrappage("Tri-Nyx" , 18 , 8 )
		SetPodIaRatrappage("G-Cricket" , 18 , 8 )
	else
	-- Carriere 2
		CreatePodIa ("Hyper-Ion","hy.dff", "hy",1 , "Module01"  ,"Module02"  ,"Module03"  , "IA_Neutre"  , "moden" ,-17)
		CreatePodIa ("X-tra Bee","xb.dff", "xb", 2, "Module01"  ,"Module02" , "Module03"  , "IA_Defense" , "moded" ,11)
		CreatePodIa ("Manta-Ray","mr.dff", "mr", 3, "Module01"  ,"Module02" , "Module03"  , "IA_Attaque"   , "modea" ,-12)
		CreatePodIa ("NanoTriton","nt.dff", "nt", 4 ,"Module01"  ,"Module02" , "Module03"  , "IA_Neutre"    , "moden",15)
		CreatePodIa ("Wotan","wo.dff", "wo",5 , "Module01"  ,"Module02" , "Module03"  , "IA_Neutre"    , "moden",10)
		CreatePodIa ("Tri-Nyx","tn.dff", "tn",6 , "Module01"  ,"Module02" , "Module03"  , "IA_Neutre"    , "moden",-29)
		CreatePodIa ("G-Cricket","gc.dff", "gc",7 , "Module01"  ,"Module02" , "Module03"  , "IA_Neutre"    , "moden",-14)
		SetPodIaRatrappage("Hyper-Ion" , 13 , 10 )
		SetPodIaRatrappage("X-tra Bee" , 13 , 14 )
		SetPodIaRatrappage("Manta-Ray" , 13 , 10 )
		SetPodIaRatrappage("NanoTriton" , 13 , 13 )
		SetPodIaRatrappage("Wotan" , 13 , 13 )
		SetPodIaRatrappage("Tri-Nyx" , 13 , 10 )
		SetPodIaRatrappage("G-Cricket" , 13 , 10 )
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


	JoueFluxMusique("L8-Sci-Fi City", 3, TRUE);
  	PrintDebug("Track C7 Update...")
end

-- Function 'Update'
function C7lua:Update()

end

-- Function 'End'
function C7lua:End()

end


function C7lua:Notify(event,param)

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

function C7lua:Clock(Id)
	
	if self.win==0 then
		LooseRace()
	else
		if GetPodClassement("Player1") == 1 then
			if GetCSMode() == 0 then
				SetGlobalVariable("GainCar",2)
			end
		end
		WinRace()
	end
	LoadInterface("Menu_Fin_Course")
end
