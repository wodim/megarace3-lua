T_Antidote={}

function T_Antidote:Init()
	loadSFX(GetNamePlayer1(),"Antidote","sfx_L1gerbe")
end

function T_Antidote:Update()

	if (SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1) then
		DisplayMsgCata(259)
		startSFX("Antidote")
	end

end

function T_Antidote:End()
end

function T_Antidote:Clock(id)

end