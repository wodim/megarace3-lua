A7lua={}

-- Function 'Init'
function A7lua:Init()
--	CreatePodPlayer("Player1","ps.dff", "ps" ,8 , "Module01"  ,"Module02"  ,"Module03")
	CreatePodIa ("Vulcain","vul.dff", "vul" ,1 , "Module01"  ,"Module02"  ,"Module03"  , "IA_Neutre"  , "moden" ,17)
	CreatePodIa ("Big","ps.dff", "ps" ,2 , "Module01"  ,"Module02" , "Module03"  , "IA_Defense" , "moded" ,22)
	CreatePodIa ("Royal Badness","rb.dff", "rb" ,3 , "Module01"  ,"Module02" , "Module03"  , "IA_Attaque"   , "modea" ,28)
	CreatePodIa ("Saphir","sap.dff", "sap" ,4 , "Module01"  ,"Module02" , "Module03"  , "IA_Neutre"    , "moden",30)
	CreatePodIa ("Wotan","wo.dff", "wo" ,5 , "Module01"  ,"Module02" , "Module03"  , "IA_Neutre"    , "moden",45)
	CreatePodIa ("Manta-Ray","mr.dff", "mr" ,6 , "Module01"  ,"Module02" , "Module03"  , "IA_Neutre"    , "moden",48)
	CreatePodIa ("XtraBee","xb.dff", "xb" ,7 , "Module01"  ,"Module02" , "Module03"  , "IA_Neutre"    , "moden",35)
	SetNbLap(1)
	
        SetPodIaRatrappage("Vulcain" , 32 , 51 )
	SetPodIaRatrappage("Big Willy" , 36 , 50 )
	SetPodIaRatrappage("Royal Badness" , 41 , 53 )
	SetPodIaRatrappage("Saphir" , 36 , 45 )
        SetPodIaRatrappage("Wotan" , 38 , 45 )
	SetPodIaRatrappage("Manta-Ray" , 35 , 70 )
	SetPodIaRatrappage("X-tra Bee" , 30 , 52 )

	JoueFluxMusique("L8-Sci-Fi City", 3, TRUE);
end

-- Function 'Update'
function A7lua:Update()

end

-- Function 'End'
function A7lua:End()
	
end


function A7lua:Notify(event,param)


	if event==TM_POD_NEWLAP then
		PrintDebug("Pod Win: ")
		PrintDebug(param.name)
		if GetPodCurrentLap(param.name) > 0 then
			if param.name=="Player1" then
				if GetPodRank("Player1")>3 then
					EndRace(FALSE)
				else
					EndRace(TRUE)
				end
			end
		end
	end
	
	if event==TM_ENTITY_MORT then
		if param.name=="Player1" then
			EndRace(FALSE)
		end
		KillEntity(param.name)
	end
end


function A7lua:Clock(Id)
	
	EndRaceClock(Id)
end

