PRA_BT_CHOIXACTIF03={}

-- Function 'Init'
function PRA_BT_CHOIXACTIF03:Init()
end

-- Function 'Update'
function PRA_BT_CHOIXACTIF03:Update()



	if PushUpSelected()==1 then
		StopUp()
		JoueSon2DNoInst("MenuHB", 0,-1)
		Selected("PRA_BT_CHOIXACTIF02")
	end

	if PushDownSelected()==1 then
		StopDown()
		JoueSon2DNoInst("MenuHB", 0,-1)
		Selected("PRA_BT_CHOIXACTIF01")
	end

	if IsSelected()==1 then
		PrintTextOn("CURRENT", 148, S_FONTE, S_MF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
	else
		PrintTextOn("CURRENT", 148, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	end

	if PushEnterSelected()==1 then
		StopEnter()
		SetEtat(0)
		JoueSon2DNoInst("MenuVAL", 0,-1)
	end
end

-- Function 'End'
function PRA_BT_CHOIXACTIF03:End()

end

