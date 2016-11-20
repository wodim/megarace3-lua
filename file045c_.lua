CAT_BT_ECRANTV01={oldtrckname}

-- Function 'Init'
function CAT_BT_ECRANTV01:Init()
	self.oldtrckname = ""
end

-- Function 'Update'
function CAT_BT_ECRANTV01:Update()

	local dispo		= ""
	local gm		= GetGameMode()

	local trckname	= GetUsedTrackName()
	if self.oldtrckname ~= trckname then
		ChangeTexture("CAT_BT_ECRANTV","ARC_BT_ECRANTV",trckname)
		self.oldtrckname = trckname
	end
	AfficheInfoCata(trckname)
	

end

-- Function 'End'
function CAT_BT_ECRANTV01:End()
end
