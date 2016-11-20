CAR_BT_ECRANTV01={}

-- Function 'Init'
function CAR_BT_ECRANTV01:Init()


end

-- Function 'Update'
function CAR_BT_ECRANTV01:Update()

	local dispo		= ""
	local gm		= GetGameMode()

	local trckname	= GetUsedTrackName()
	
	if GetGlobalVariable("CarriereGagne") == 1 then 
		trckname = "or02" 
		if GetPodNameAtRank(1) == player then
		if GetCSMode() == 1 then
			dispo		= GetText(421)
		else
			dispo		= GetText(420)
		end
		end	
	end
		
	
	AfficheInfoCarriere(trckname)

	
	PrintStringOn("CURRENT", dispo, S_FONTE, S_MF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
	

end

-- Function 'End'
function CAR_BT_ECRANTV01:End()

end

