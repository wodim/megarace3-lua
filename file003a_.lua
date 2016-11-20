A4lua={}

-- Function 'Init'
function A4lua:Init()
--	CreatePodPlayer("Player1","ps.dff", "ps" ,8 , "Module01"  ,"Module02"  ,"Module03")
	CreatePodIa ("Vulcain","vul.dff", "vul" ,1 , "Module01"  ,"Module02"  ,"Module03"  , "IA_Neutre"  , "moden" ,-16)
	CreatePodIa ("Big","ps.dff", "ps" ,2 , "Module01"  ,"Module02" , "Module03"  , "IA_Defense" , "moded" ,-14)
	CreatePodIa ("Royal Badness","rb.dff", "rb" ,3 , "Module01"  ,"Module02" , "Module03"  , "IA_Attaque"   , "modea" ,-12)
	CreatePodIa ("Saphir","sap.dff", "sap" ,4 , "Module01"  ,"Module02" , "Module03"  , "IA_Neutre"    , "moden",-8)
	CreatePodIa ("Wotan","wo.dff", "wo" ,5 , "Module01"  ,"Module02" , "Module03"  , "IA_Neutre"    , "moden",-5)
	CreatePodIa ("Manta-Ray","mr.dff", "mr" ,6 , "Module01"  ,"Module02" , "Module03"  , "IA_Neutre"    , "moden",-1)
	CreatePodIa ("XtraBee","xb.dff", "xb" ,7 , "Module01"  ,"Module02" , "Module03"  , "IA_Neutre"    , "moden",2)
	SetNbLap(3)

                  SetPodIaRatrappage("Vulcain" , 15 , 10 )
	SetPodIaRatrappage("Big Willy" , 15 , 10 )
	SetPodIaRatrappage("Royal Badness" , 15 , 10 )
	SetPodIaRatrappage("Saphir" , 15 , 10 )
                  SetPodIaRatrappage("Wotan" , 15 , 10 )
	SetPodIaRatrappage("Manta-Ray" , 15 , 10 )
	SetPodIaRatrappage("X-tra Bee" , 15 , 15 )

	JoueFluxMusique("TOyLand", 3, TRUE);
end

-- Function 'Update'
function A4lua:Update()

end

-- Function 'End'
function A4lua:End()

end


function A4lua:Notify(event,param)

	if event==TM_POD_NEWLAP then
		if GetPodCurrentLap(param.name)>2 then
			PrintDebug("Pod Win: ")
			PrintDebug(param.name)
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


function A4lua:Clock(Id)
	
	EndRaceClock(Id)
end

