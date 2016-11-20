GAR_BT_CHOIXACTIF08={}

-- Function 'Init'
function GAR_BT_CHOIXACTIF08:Init()

end

-- Function 'Update'
function GAR_BT_CHOIXACTIF08:Update()


	if PushUpSelected()==1 then
		StopUp()
		JoueSon2DNoInst("MenuHB", 0,-1)
		if GetGameMode() == 2 or (GetGameMode()> 6 and GetGameMode() < 11) then
			Selected("GAR_BT_CHOIXACTIF01")
		else
			Selected("GAR_BT_CHOIXACTIF05")
		end
	end

	if PushDownSelected()==1 then
		StopDown()
		JoueSon2DNoInst("MenuHB", 0,-1)
		Selected("GAR_BT_CHOIXACTIF01")
	end




	if IsSelected()==1 then
		PrintTextOn("CURRENT", 148, S_FONTE, S_MF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
	else
		PrintTextOn("CURRENT", 148, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	end


	if PushEnterSelected()==1 then
		StopEnter()
		JoueSon2D("MenuVAL", "GAR_Fond", 0,-1)
		Selected("GAR_BT_SELECT")
		local trckidx	= GetUsedTrackIndex()
		local pobj = GetUsedPodName()..".dff"
		local pscript = GetUsedPodName()
--		local pattm = ListModAtt[0+ GetUsedPodAttModName()]
--		local pdefm = ListModDef[0+ GetUsedPodDefModName()]
--		local pspem = ListModVit[0+ GetUsedPodVitModName()]


		local pattm = GetUsedModAttName()
		local pdefm = GetUsedModDefName()
		local pspem = GetUsedModVitName()
		PrintDebug(pattm)
		PrintDebug(pdefm)
		PrintDebug(pspem)

		PrintDebug(pobj)
		PrintDebug(pscript)

		CreatePodPlayer("Player1", pobj, pscript ,8 , pattm  ,pdefm  ,pspem)
		
		if GetGameMode() == 2 then LanceCourseArcade(trckidx) end
		local m = GetGameMode() 
		if (m == 4 ) then
			SetCustumPod(GetUsedPodName())
			SetCustumAttMod(GetUsedModAttIndex() + 1)
			SetCustumDefMod(GetUsedModDefIndex() + 1)
			SetCustumVitMod(GetUsedModVitIndex() + 1)
			LanceCourseCarriere(trckidx) 
		end
		if GetGameMode() > 6 then
			if (m == 11 or m == 12 or m == 13 or m == 14) then 
				SetCustumPod(GetUsedPodName())
				SetCustumAttMod(GetUsedModAttIndex() + 1)
				SetCustumDefMod(GetUsedModDefIndex() + 1)
				SetCustumVitMod(GetUsedModVitIndex() + 1)
			end
			LoadInterface("Menu_multiwait") 
			SetGlobalVariable("PodSelected",1)
		end
	end


end

-- Function 'End'
function GAR_BT_CHOIXACTIF08:End()

end

