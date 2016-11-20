GAR_BT_CHOIXACTIF01={}

-- Function 'Init'
function GAR_BT_CHOIXACTIF01:Init()

end

-- Function 'Update'
function GAR_BT_CHOIXACTIF01:Update()


	if PushUpSelected()==1 then
		StopUp()
		JoueSon2DNoInst("MenuHB", 0,-1)
		Selected("GAR_BT_CHOIXACTIF08")
	end

	if PushDownSelected()==1 then
		StopDown()
		JoueSon2DNoInst("MenuHB", 0,-1)
		if GetGameMode() == 2 or (GetGameMode()> 6 and GetGameMode() < 11) then
			Selected("GAR_BT_CHOIXACTIF08")
		else
			Selected("GAR_BT_CHOIXACTIF03")
		end
	end

	if PushRightSelected() == 1 then
		StopRight()
		JoueSon2DNoInst("MenuGD", 0,-1)
		NextPod()
		while GetUsedModAttIndex() ~= (GetUsedPodAttModName() - 1) do NextAttModule() end
		while GetUsedModDefIndex() ~= (GetUsedPodDefModName() - 1) do NextDefModule() end
		while GetUsedModVitIndex() ~= (GetUsedPodVitModName() - 1) do NextVitModule() end
	end

	if PushLeftSelected() == 1 then
		StopLeft()
		JoueSon2DNoInst("MenuGD", 0,-1)
		PreviousPod()
		while GetUsedModAttIndex() ~= (GetUsedPodAttModName() - 1) do NextAttModule() end
		while GetUsedModDefIndex() ~= (GetUsedPodDefModName() - 1) do NextDefModule() end
		while GetUsedModVitIndex() ~= (GetUsedPodVitModName() - 1) do NextVitModule() end
	end


	if IsSelected()==1 then
		PrintTextOn("CURRENT", 55, S_FONTE, S_MF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
	else
		PrintTextOn("CURRENT", 55, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	end

	if PushEnterSelected()==1 then
		StopEnter()
		JoueSon2DNoInst("MenuVAL", 0,-1)
		Selected("GAR_BT_CHOIXACTIF08")
	end
end

-- Function 'End'
function GAR_BT_CHOIXACTIF01:End()

end

