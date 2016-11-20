CMU_password={}	

-- Function 'Init'
function CMU_password:Init()
	
end

-- Function 'Update'
function CMU_password:Update()

	if IsSelected()==1 then
		PrintTextOn("CURRENT", 51, S_FONTE, S_Fmi,"LEFT", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
	else
		PrintTextOn("CURRENT", 51, S_FONTE, S_Fmi,"LEFT", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	end


	if PushUpSelected() == 1 then
		StopUp()
		if GetLuaObject("CMU_Team").aff == 1 then
			Selected("CMU_Team")	
		else
			Selected("CMU_Create")
		end
		JoueSon2DNoInst("MenuHB", 0,-1)
	end

	if PushDownSelected() == 1 then
		StopDown()
		if GetGlobalVariable("PodSelected") == 1 then
			Selected("CMU_Create")
			JoueSon2DNoInst("MenuHB", 0,-1)
		else
			JoueSon2DNoInst("MenuIMP", 0,-1)
		end
	end

	if PushEnterSelected() == 1 then
		StopEnter()
		if cmuIsChatOn==FALSE then
			LoadInterface("Menu_Garage")
		end
	end

end

-- Function 'End'
function CMU_password:End()

end
