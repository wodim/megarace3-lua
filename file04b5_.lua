GAR_BT_CHOIXACTIF04={Nme}

-- Function 'Init'
function GAR_BT_CHOIXACTIF04:Init()

end

-- Function 'Update'
function GAR_BT_CHOIXACTIF04:Update()


	if PushUpSelected()==1 then
		StopUp()
		Selected("GAR_BT_CHOIXACTIF03")
		JoueSon2DNoInst("MenuHB", 0,-1)
	end

	if PushDownSelected()==1 then
		StopDown()
		Selected("GAR_BT_CHOIXACTIF05")
		JoueSon2DNoInst("MenuHB", 0,-1)
	end


	if IsSelected()==1 then
		PrintStringOn("CURRENT", self.Nme, S_FONTE, S_MF,"CENTER",S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
	else
		PrintStringOn("CURRENT", self.Nme, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	end



		if PushRightSelected() == 1 then
		StopRight()
		JoueSon2DNoInst("MenuGD", 0,-1)
		NextDefModule()
		AffGar = 1
	end

	if PushLeftSelected() == 1 then
		StopLeft()
		JoueSon2DNoInst("MenuGD", 0,-1)
		PreviousDefModule()
		AffGar = 1
	end

	if PushEnterSelected()==1 then
		StopEnter()
		JoueSon2DNoInst("MenuVAL", 0,-1)
		Selected("GAR_BT_CHOIXACTIF08")
	end

end

-- Function 'End'
function GAR_BT_CHOIXACTIF04:End()

end

