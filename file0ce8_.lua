t_plantpont={oki,no}

function t_plantpont:Init()
	LoadEntityAnim("o3d_dummy","dummy")
	self.oki = -1
	self.no = 12
end

function t_plantpont:Update()
	
	if GetLuaObject("check_1").tour == 2 and self.oki == -1 then
		self.oki = 0
	end


	if (SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1 and self.oki == 0) then
		StartEntityAnim("o3d_dummy","dummy",-1,1,1.75)
		DisplayMsgCata(260)
		self.oki = 1
		
		--JoueSon3D("Plante1", "o3d_dummy", FALSE, -1)
		JoueSon2DNoInst("Plante1", FALSE, -1)
	end

end

function t_plantpont:End()
end




