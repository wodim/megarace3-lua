P1lua={}

GLOBAL_TIME	= 0

clockP1		= clone(LUACLOCK)

-- Function 'Init'
function P1lua:Init()

 	PrintDebug("Track P1 init ...")
	JoueFluxMusique("AtomicTube", 3, TRUE);
	if GetGlobalVariable("PracticeTyp") == 0 then
		CreatePodPlayer("Player1","vul.dff", "vul" ,5 , "PractAttPlay"  ,"Quezacoatls_Feather"  ,"Hermes_Spirit")
		CreatePodIa ("Big Willy","ps.dff", "ps" ,2 , "Module01"  ,"PractDefIA" , "Module03"  , "IA_PRACD" , "ModepraD" ,5)
		CreatePodIa ("Royal Badness","rb.dff", "rb" ,3 , "Module01"  ,"PractDefIA" , "Module03"  , "IA_PRACD"   , "ModepraD" ,10)
		CreatePodIa ("Saphire","sap.dff", "sap" ,4 , "Module01"  ,"PractDefIA" , "Module03"  , "IA_PRACD"    , "ModepraD",3)
		SetNbLap(3)
	elseif GetGlobalVariable("PracticeTyp") == 1 then
		CreatePodPlayer("Player1","vul.dff", "vul" ,1 , "Diamond_Ray"  ,"PractDefPlay"  ,"Hermes_Spirit")
		CreatePodIa ("Big Willy","ps.dff", "ps" ,2 , "PractAttIA"  ,"Module02" , "Module03"  , "IA_PRACA" , "ModepraA" ,20)
		CreatePodIa ("Royal Badness","rb.dff", "rb" ,3 , "PractAttIA"  ,"Module02" , "Module03"  , "IA_PRACA"   , "ModepraA" ,31)
		CreatePodIa ("Saphire","sap.dff", "sap" ,4 , "PractAttIA"  ,"Module02" , "Module03"  , "IA_PRACA"    , "ModepraA",18)
		SetNbLap(GetGlobalVariable("PracticeNivo") + 1)
            	SetPodIaRatrappage("Big Willy" , 83 , 84 )
		SetPodIaRatrappage("Royal Badness" , 85 , 84 )
		SetPodIaRatrappage("Saphire" , 88 , 89 )
		if GetGlobalVariable("PracticeNivo") == 0 then
			GLOBAL_TIME = 80
		elseif GetGlobalVariable("PracticeNivo") == 1 then
			GLOBAL_TIME = 160
		elseif GetGlobalVariable("PracticeNivo") == 2 then
			GLOBAL_TIME = 240
		end
		SetTotalLimitTime(0, 0, GLOBAL_TIME, TRUE)
	elseif GetGlobalVariable("PracticeTyp") == 2 then
		CreatePodPlayer("Player1","vul.dff", "vul" ,5 , "Diamond_Ray"  ,"Quezacoatls_Feather"  ,"Hermes_Spirit")
		CreatePodIa ("Big Willy","ps.dff", "ps" ,2 , "Module01"  ,"Module02" , "Module03"  , "IA_PRACAS" , "ModepraS" ,32)
		CreatePodIa ("Royal Badness","rb.dff", "rb" ,3 , "Module01"  ,"Module02" , "Module03"  , "IA_PRACAS"   , "ModepraS" ,43)
		CreatePodIa ("Saphire","sap.dff", "sap" ,4 , "Module01"  ,"Module02" , "Module03"  , "IA_PRACAS"    , "ModepraS",30)
		SetNbLap(1)
		if GetGlobalVariable("PracticeNivo") == 0 then
			GLOBAL_TIME = 60
		elseif GetGlobalVariable("PracticeNivo") == 1 then
			GLOBAL_TIME = 55
		elseif GetGlobalVariable("PracticeNivo") == 2 then
			GLOBAL_TIME = 53
		end
		SetTotalLimitTime(0, 0, GLOBAL_TIME, TRUE)
	end

end

-- Function 'Update'
function P1lua:Update()

	

end

-- Function 'End'
function P1lua:End()
--	VolumeMusique(100)
end



function P1lua:Notify(event,param)


	if event==TM_RACE_STARTS then
		DisplayMsgCata(174)
		
		if GetGlobalVariable("PracticeTyp") == 1 then
			clockP1.Start(clockP1)
		end
	end

	if event==TM_POD_NEWLAP then

		if GetGlobalVariable("PracticeTyp") == 0 then
			if param.name == "Player1" and GetPodCurrentLap(param.name)>2 then
				EndRace(FALSE)
			end

		elseif GetGlobalVariable("PracticeTyp") == 1 then
			if GetPodCurrentLap(param.name)>GetGlobalVariable("PracticeNivo") then
				if param.name=="Player1" then
					if (GetPodRank("Player1") <= 3) and (clockP1.Time(clockP1) <= (GLOBAL_TIME*1000)) then
						EndRace(TRUE)
					else
						EndRace(FALSE)
					end
				end
			end
		else

			if GetPodCurrentLap(param.name)>0 then
				if param.name=="Player1" then
					if GetPodStatImmediate("Player1", STAT_FAST_TIME_LAP) > (GLOBAL_TIME*1000) then
						EndRace(FALSE)
					else
						EndRace(TRUE)
					end
				end
			end
		end

	end
	
	if event==TM_ENTITY_MORT then
		if param.name=="Player1" then
				EndRace(FALSE)
		else
			if GetGlobalVariable("PracticeTyp") == 0 then
					if	GetPodStatImmediate("Player1", STAT_SHOT_NUM) > GetGlobalVariable("PracticeNivo") then
						EndRace(TRUE)
					end
			end
		end
		KillEntity(param.name)
	end
end

function P1lua:Clock(Id)
		
	EndPracticeClock(Id)
end

