RSO_type02={}

-- Function 'Init'
function RSO_type02:Init()
	HideInterfaceEntity("RSO_type02")

end

-- Function 'Update'
function RSO_type02:Update()

	if IsSelected()==1 then
		PrintStringOn("CURRENT", "Deathmatch", S_FONTE, S_PF,"RIGHT", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
		PrintTextOn("RSO_type01", 89, S_FONTE, S_PF,"LEFT", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
	else
		PrintStringOn("CURRENT", "Deathmatch", S_FONTE, S_PF,"RIGHT", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		PrintTextOn("RSO_type01", 89, S_FONTE, S_PF,"LEFT", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	end

	if PushUpSelected() == 1 then
		StopUp()
		Selected("RSO_mode")
		JoueSon2DNoInst("MenuHB", 0,-1)
	end

	if PushDownSelected() == 1 then
		StopDown()
		Selected("RSO_option")
		JoueSon2DNoInst("MenuHB", 0,-1)
	end


end

-- Function 'End'
function RSO_type02:End()

end

