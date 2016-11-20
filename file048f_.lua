DRA_BT_ECRANTV={i}

NBLANGUE = 5

Langues = {

"lan_fra",
"lan_gbr",
"lan_ger",
"lan_ita",
"lan_spa"

}

-- Function 'Init'
function DRA_BT_ECRANTV:Init()
	self.i = 1
	ChangeTexture("DRA_BT_ECRANTV","ARC_BT_ECRANTV",Langues[self.i])

end

-- Function 'Update'
function DRA_BT_ECRANTV:Update()

	if PushRightSelected() == 1 then
		StopRight()
		if self.i + 1 > NBLANGUE then
			self.i = 1
		else
			self.i = self.i + 1
		end
		ChangeTexture("DRA_BT_ECRANTV","ARC_BT_ECRANTV",Langues[self.i])
		JoueSon2DNoInst("MenuGD", 0,-1)
	end
	
	if PushLeftSelected() == 1 then
		StopLeft()
		if self.i - 1 == 0 then
			self.i = NBLANGUE 
		else
			self.i = self.i - 1
		end
		ChangeTexture("DRA_BT_ECRANTV","ARC_BT_ECRANTV",Langues[self.i])
		JoueSon2DNoInst("MenuGD", 0,-1)
	end


end

-- Function 'End'
function DRA_BT_ECRANTV:End()

end


function DRA_BT_ECRANTV:Clock(Id)

end