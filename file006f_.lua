
------------------------- Anneaux ------------------------------

A_VELOCITY			= 150000

------------------------- Anneaux Anti ------------------------------

AAG_VELOCITY			= 10000000000

------------------------- Messages ------------------------------

--MSG_TARG_SIZE			= S_PF
--MSG_TARG_POS_Y			= 463 - MSG_TARG_SIZE
--MSG_DIST_SIZE			= S_GF
--MSG_DIST_POS_Y			= MSG_TARG_POS_Y - MSG_DIST_SIZE + 7

MSG_TLIFE_SIZE			= S_PF
--MSG_TLIFE_POS_Y			= MSG_DIST_POS_Y - MSG_TLIFE_SIZE
MSG_TLIFE_POS_Y			= 415 - MSG_TLIFE_SIZE
MSG_LIFE_SIZE			= S_GF
MSG_LIFE_POS_Y			= MSG_TLIFE_POS_Y - MSG_LIFE_SIZE + 8



------------------------- Fin course ------------------------------


L3start = FALSE
L3end	= FALSE

function EndL3Race(win)

	if L3end == TRUE then
		return
	end
	
	L3end = TRUE
  	--StopFadeTextIG(279, 0)
  	StopFadeTextIG(280, 0)
	
	if win == FALSE then
		setVideo( "sequence10", "sequence_10" )
	end
	
	EndRace(win)

end


------------------------- Track ------------------------------

L3lua={}

NanoAdv = 0
NanoState = 0

-- Function 'Init'
function L3lua:Init()

  	PrintDebug("Tarck L3 Update...")
	CreatePodIa ("Nano", "nano.dff", "nano", 1, "Module01"  ,"Module02"  ,"Module03"  , "IA_DUMB", "modex", 100)
	SetPodIaRatrappage("Nano", -1900, 2000)

	SetDrawRank(FALSE)
	SetDrawLap(FALSE)
	
	SetNbLap(1)

	JoueFluxMusique("AtomicTube", 3, TRUE)
	
	ChargeSon("CercANTI")
	ChargeSon("CercV")
	ChargeSon("VagueELE")
	
	AutoriseWrongWay(FALSE)
	
	SetTotalLimitTime(0, 3, 0, FALSE)
	SetCalibrateTime(101)
end

-- Function 'Update'
function L3lua:Update()

--	if (IsEntityEnterInTrigger("Player1", "end_track_1" ) == 1 ) then
--		GetLuaObject("L3lua").Notify("CURRENT",TM_POD_NEWLAP,"")
--	end

	if L3start == TRUE and L3end == FALSE then
	
		local str
		
		NanoAdv = floor((GetPodPercentAvancement("Nano") - GetPodPercentAvancement("Player1")) * 100.0)
		--str = tostring(NanoAdv)
		--PrintStringAt(320 - ( (strlen(str) / 2) * (0.4*MSG_DIST_SIZE) ), MSG_DIST_POS_Y, str, S_FONTE, MSG_DIST_SIZE, 0, 0, 255, 255, 255, 0, 255, 255)
				
		str = tostring(GetPodPercentLife("Nano")) .. " %"
		PrintStringAt(320 - ( (strlen(str) / 2) * (0.55*MSG_LIFE_SIZE) ), MSG_LIFE_POS_Y, str, S_FONTE, MSG_LIFE_SIZE, 0, 255, 0, 255, 255, 255, 0, 255)
		
		if GetLuaObject("T_CercleV").passed == TRUE and (GetLuaObject("t_vagued").oki == FALSE or GetLuaObject("t_vagues").oki == TRUE) then
					
			if NanoState == 0 and NanoAdv > 250 then
				SetPodIaRatrappage("Nano", 190, 200)
				PrintDebug("NanoState = 1")
				NanoState = 1
			elseif NanoState == 1 and NanoAdv < 150 then
				SetPodIaRatrappage("Nano", 60, 200)
				PrintDebug("NanoState = 0")
				NanoState = 0
			end
		end
		
	end

end

-- Function 'End'
function L3lua:End()

end


function L3lua:Notify(event,param)

	if event==TM_ENTITY_MORT then

		if param.name == "Nano" then
			EndL3Race(TRUE)
		elseif param.name == "Player1" then
			EndL3Race(FALSE)
		end
		KillEntity(param.name)
	end

	if event==TM_POD_NEWLAP then
		EndL3Race(FALSE)
	end
	
	if event == TM_RACE_STARTS then
		L3start = TRUE
		--StartFadeTextIG(279, MSG_TARG_SIZE, 0, 0, 255, 255, 0, -1, MSG_TARG_POS_Y)
		StartFadeTextIG(280, MSG_TLIFE_SIZE, 0, 255, 0, 255, 0, -1, MSG_TLIFE_POS_Y)
		
		DisplayMsgCata(266)
	end

end

function L3lua:Clock(id)

	EndRaceClock(id)

end


------------------------- Bumpers ------------------------------

function Teleport(trig)

	if GetLuaObject("t_bumper01").p1_teleport == 0 then
	
		if IsEntityEnterInTrigger("Player1", trig) == 1 then
		
			GetLuaObject("t_bumper01").p1_teleport = GetLuaObject(trig).id
			TeleportEntityToTrigger("Player1", GetLuaObject(trig).teleport_to)
			
			PrintDebug(GetLuaObject(trig).id .. " -> " .. GetLuaObject(trig).teleport_to)
		end
		
	elseif GetLuaObject("t_bumper01").p1_teleport ~= GetLuaObject(trig).id then
	
		if IsEntityLeaveTrigger("Player1", trig) == 1 then
		
			GetLuaObject("t_bumper01").p1_teleport = 0
				
		end			
	end
	
	--if GetLuaObject("t_bumper01").nano_teleport == 0 then
	--
	--	if IsEntityEnterInTrigger("Nano", trig) == 1 then
	--
	--		GetLuaObject("t_bumper01").nano_teleport = GetLuaObject(trig).id
	--		TeleportEntityToTrigger("Nano", GetLuaObject(trig).teleport_to)
	--	end
	--	
	--elseif GetLuaObject("t_bumper01").nano_teleport ~= GetLuaObject(trig).id then
	--
	--	if IsEntityLeaveTrigger("Nano", trig) == 1 then
	--	
	--		GetLuaObject("t_bumper01").nano_teleport = 0
	--	end			
	--end
	
end