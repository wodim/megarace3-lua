A1lua={}

-- Function 'Init'
function A1lua:Init()
--	CreatePodPlayer("Player1","ps.dff", "ps" ,8 , "Module01"  ,"Module02"  ,"Module03")
	CreatePodIa ("Vulcain","vul.dff", "vul" ,1 , "Module01"  ,"Module02"  ,"Module03"  , "IA_Neutre"  , "moden" ,-6)
	CreatePodIa ("Big","ps.dff", "ps" ,2 , "Module01"  ,"Module02" , "Module03"  , "IA_Defense" , "moded" ,1)
	CreatePodIa ("Royal Badness","rb.dff", "rb" ,3 , "Module01"  ,"Module02" , "Module03"  , "IA_Attaque"   , "modea" ,5)
	CreatePodIa ("Saphir","sap.dff", "sap" ,4 , "Module01"  ,"Module02" , "Module03"  , "IA_Neutre"    , "moden",9)
	CreatePodIa ("Wotan","wo.dff", "wo" ,5 , "Module01"  ,"Module02" , "Module03"  , "IA_Neutre"    , "moden",13)
	CreatePodIa ("Manta-Ray","mr.dff", "mr" ,6 , "Module01"  ,"Module02" , "Module03"  , "IA_Neutre"    , "moden",16)
	CreatePodIa ("XtraBee","xb.dff", "xb" ,7 , "Module01"  ,"Module02" , "Module03"  , "IA_Neutre"    , "moden",19)
	SetNbLap(3)

                  SetPodIaRatrappage("Vulcain" , 20 , 5 )
	SetPodIaRatrappage("Big Willy" , 20 , 5 )
	SetPodIaRatrappage("Royal Badness" , 20 , 5 )
	SetPodIaRatrappage("Saphir" , 20 , 5 )
                  SetPodIaRatrappage("Wotan" , 20 , 5 )
	SetPodIaRatrappage("Manta-Ray" , 20 , 5 )
	SetPodIaRatrappage("X-tra Bee" , 20 , 10 )

	JoueFluxMusique("L4-Rat", 3, TRUE);

  	PrintDebug("Track A1 Update...")
end

-- Function 'Update'
function A1lua:Update()

end

-- Function 'End'
function A1lua:End()

end


function A1lua:Notify(event,param)

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

function A1lua:Clock(Id)
	
	EndRaceClock(Id)
end
