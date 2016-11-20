ARC_BT_CHOIXACTIF01={}

-- Function 'Init'
function ARC_BT_CHOIXACTIF01:Init()

end

-- Function 'Update'
function ARC_BT_CHOIXACTIF01:Update()


	local gm		= GetGameMode()
	local trckname	= GetUsedTrackName()
	local trckidx	= GetUsedTrackIndex()

	local nber = 41+trckidx

	if PushUpSelected()==1 then
		StopUp()
		JoueSon2DNoInst("MenuIMP", 0,-1)
	end

	if PushDownSelected()==1 then
		StopDown()
		JoueSon2DNoInst("MenuIMP", 0,-1)
	end

	if PushRightSelected() == 1 then
		StopRight()
		if GetLuaObject("ARC_Fond").balade == 1 then
			JoueSon2DNoInst("MenuGD", 0,-1)
			NextTrack()
		else
			JoueSon2DNoInst("MenuIMP", 0,-1)
		end
	end

	if PushLeftSelected() == 1 then
		StopLeft()
		if GetLuaObject("ARC_Fond").balade == 1 then
			JoueSon2DNoInst("MenuGD", 0,-1)
			PreviousTrack()
		else
			JoueSon2DNoInst("MenuIMP", 0,-1)
		end
	end


	if IsSelected()==1 then
		PrintStringOn("CURRENT", temp6, S_FONTE, S_MF,"LEFT", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
	else
		PrintStringOn("CURRENT", temp6, S_FONTE, S_MF,"LEFT", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	end


	if PushEnterSelected()==1 then
		StopEnter()
		if IsTrackAvailable(gm,trckname) == 1 then
			JoueSon2DNoInst("MenuVAL", 0,-1)
			LoadInterface("Menu_Garage")
			Selected("ARC_BT_SELECT")
		else
			JoueSon2D("MenuIMP", "ARC_Fond", 0,-1)
		end
	end
end

-- Function 'End'
function ARC_BT_CHOIXACTIF01:End()

end

