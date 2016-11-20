A5lua={}

-- Function 'Init'
function A5lua:Init()
--	CreatePodPlayer("Player1","ps.dff", "ps" ,8 , "Module01"  ,"Module02"  ,"Module03")
	CreatePodIa ("Vulcain","vul.dff", "vul" ,1 , "Module01"  ,"Module02"  ,"Module03"  , "IA_Neutre"  , "moden" ,2)
	CreatePodIa ("Big","ps.dff", "ps" ,2 , "Module01"  ,"Module02" , "Module03"  , "IA_Defense" , "moded" ,5)
	CreatePodIa ("Royal Badness","rb.dff", "rb" ,3 , "Module01"  ,"Module02" , "Module03"  , "IA_Attaque"   , "modea" ,8)
	CreatePodIa ("Saphir","sap.dff", "sap" ,4 , "Module01"  ,"Module02" , "Module03"  , "IA_Neutre"    , "moden",11)
	CreatePodIa ("Wotan","wo.dff", "wo" ,5 , "Module01"  ,"Module02" , "Module03"  , "IA_Neutre"    , "moden",15)
	CreatePodIa ("Manta-Ray","mr.dff", "mr" ,6 , "Module01"  ,"Module02" , "Module03"  , "IA_Neutre"    , "moden",18)
	CreatePodIa ("XtraBee","xb.dff", "xb" ,7 , "Module01"  ,"Module02" , "Module03"  , "IA_Neutre"    , "moden",20)
	SetNbLap(3)
                  
                  SetPodIaRatrappage("Vulcain" , 10 , 10 )
	SetPodIaRatrappage("Big Willy" , 10 , 10 )
	SetPodIaRatrappage("Royal Badness" , 10 , 10 )
	SetPodIaRatrappage("Saphir" , 10 , 10 )
                  SetPodIaRatrappage("Wotan" , 10 , 10 )
	SetPodIaRatrappage("Manta-Ray" , 10 , 10 )
	SetPodIaRatrappage("X-tra Bee" , 10 , 10 )

	JoueFluxMusique("L2-Earthquake", 3, TRUE);
	
	LoadEntityAnim("father_queen","queen_a5")
end

-- Function 'Update'
function A5lua:Update()

end

-- Function 'End'
function A5lua:End()

end


function A5lua:Notify(event,param)


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


function A5lua:Clock(Id)
	
	EndRaceClock(Id)
end

