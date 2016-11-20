A6lua={}

-- Function 'Init'
function A6lua:Init()
--	CreatePodPlayer("Player1","ps.dff", "ps" ,8 , "Module01"  ,"Module02"  ,"Module03")
	CreatePodIa ("Vulcain","vul.dff", "vul" ,1 , "Module01"  ,"Module02"  ,"Module03"  , "IA_Neutre"  , "moden" ,3)
	CreatePodIa ("Big","ps.dff", "ps" ,2 , "Module01"  ,"Module02" , "Module03"  , "IA_Defense" , "moded" ,5)
	CreatePodIa ("Royal Badness","rb.dff", "rb" ,3 , "Module01"  ,"Module02" , "Module03"  , "IA_Attaque"   , "modea" ,9)
	CreatePodIa ("Saphir","sap.dff", "sap" ,4 , "Module01"  ,"Module02" , "Module03"  , "IA_Neutre"    , "moden",12)
	CreatePodIa ("Wotan","wo.dff", "wo" ,5 , "Module01"  ,"Module02" , "Module03"  , "IA_Neutre"    , "moden",15)
	CreatePodIa ("Manta-Ray","mr.dff", "mr" ,6 , "Module01"  ,"Module02" , "Module03"  , "IA_Neutre"    , "moden",18)
	CreatePodIa ("XtraBee","xb.dff", "xb" ,7 , "Module01"  ,"Module02" , "Module03"  , "IA_Neutre"    , "moden",20)
	SetNbLap(3)

                  SetPodIaRatrappage("Vulcain" , 20 , 15 )
	SetPodIaRatrappage("Big Willy" , 20 , 18 )
	SetPodIaRatrappage("Royal Badness" , 20 , 18 )
	SetPodIaRatrappage("Saphir" , 20 , 15 )
                  SetPodIaRatrappage("Wotan" , 20 , 15 )
	SetPodIaRatrappage("Manta-Ray" , 20 , 15 )
	SetPodIaRatrappage("X-tra Bee" , 20 , 15 )


 	JoueFluxMusique("L7-NetEvilMind", 3, TRUE);

end

-- Function 'Update'
function A6lua:Update()

end

-- Function 'End'
function A6lua:End()

end


function A6lua:Notify(event,param)


	if event==TM_POD_NEWLAP then
		if GetPodCurrentLap(param.name)>2 then
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


function A6lua:Clock(Id)
	
	EndRaceClock(Id)
end

