LOA_BT_PLAYER={}

-- Function 'Init'
function LOA_BT_PLAYER:Init()

	loadSFX( "CURRENT", "flash_init", "LOA_FX_INIT" )
	startSFX("flash_init")

	loadSFX( "CURRENT", "flash", "LOA_FX" )

end

-- Function 'Update'
function LOA_BT_PLAYER:Update()

	if GetLuaObject("LOA_FOND").change==FALSE then
		local pn = GetPlayerNamePSI()
		if pn~=nil and pn~="" then
			PrintStringOn("CURRENT", pn, S_FONTE, S_PF,"CENTER", S_colorPl.r1, S_colorPl.v1,S_colorPl.b1,S_colorPl.a1,S_colorPl.r2,S_colorPl.v2,S_colorPl.b2,S_colorPl.a2)
		else
			PrintTextOn("CURRENT", 510, S_FONTE, S_PF,"CENTER", S_colorPl.r1, S_colorPl.v1,S_colorPl.b1,S_colorPl.a1,S_colorPl.r2,S_colorPl.v2,S_colorPl.b2,S_colorPl.a2)
		end
	end

	if PushLeftSelected()==1 then
		StopLeft()
		if GetLuaObject("LOA_FOND").change==FALSE then
			if gLS_chosenBackup>0 then
				JoueSon2DNoInst("MenuGD", 0,-1)
				gLS_chosenBackup = gLS_chosenBackup - 1
				GoToPlayerSaveAt(gLS_chosenBackup)
				GetLuaObject("LOA_FOND").change = TRUE
				StartClock("CURRENT", 0.5, 10000)
				startSFX("flash")
			else
				JoueSon2DNoInst("MenuIMP", 0,-1)
			end
		end
	end

	if PushRightSelected()==1 then
		StopRight()
		if GetLuaObject("LOA_FOND").change==FALSE then
			if gLS_chosenBackup<(gLS_backupNum-1) then
				JoueSon2DNoInst("MenuGD", 0,-1)
				gLS_chosenBackup = gLS_chosenBackup + 1
				GoToPlayerSaveAt(gLS_chosenBackup)
				GetLuaObject("LOA_FOND").change = TRUE
				StartClock("CURRENT", 0.5, 10000)
				startSFX("flash")
			else
				JoueSon2DNoInst("MenuIMP", 0,-1)
			end
		end
	end

	if PushEnterSelected()==1 then
		StopEnter()
		if IsPlayerGameFree(GetPlayerSaveNamePSI())==TRUE then
			if gLS_mode==LS_MODE_SAVE then
				JoueSon2DNoInst("MenuVAL", 0, -1)
				gLS_count = 0
				gLS_state = LS_STATE_NEED_COUNT
			else
				JoueSon2DNoInst("MenuIMP", 0, -1)
			end
		else
			JoueSon2DNoInst("MenuVAL", 0, -1)
			-- La partie existe: demande d'ecrasement ...
			if gLS_mode==LS_MODE_SAVE then
				gLS_state = LS_STATE_OVERWRITE
			elseif gLS_mode==LS_MODE_LOAD then
				gLS_count = 0
				gLS_state = LS_STATE_NEED_COUNT
			elseif gLS_mode==LS_MODE_DEL then
				gLS_count = 0
				gLS_state = LS_STATE_ENTER
			end
			Selected("LOA_BT_SELECT")
		end
	end

end

-- Function 'End'
function LOA_BT_PLAYER:End()
end

function LOA_BT_PLAYER:Clock(id)

	if id==10000 then
		GetLuaObject("LOA_FOND").change = FALSE
		--stopSFX("camfx_flash")
	end
end
