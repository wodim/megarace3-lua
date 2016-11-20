LOA_TXT_PETTITRE={}

-- Function 'Init'
function LOA_TXT_PETTITRE:Init()
end


-- Function 'Update'
function LOA_TXT_PETTITRE:Update()

	if gLS_mode==LS_MODE_LOAD then
		PrintTextOn("LOA_TXT_GRDTITRE", 501, S_FONTE, S_TGF,"LEFT", S_selt.r1, S_selt.v1,S_selt.b1,S_selt.a1,S_selt.r2,S_selt.v2,S_selt.b2,S_selt.a2)
		PrintTextOn("CURRENT", 501, S_FONTE, S_GF,"LEFT", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)

	elseif gLS_mode==LS_MODE_SAVE then
		PrintTextOn("LOA_TXT_GRDTITRE", 502, S_FONTE, S_TGF,"LEFT", S_selt.r1, S_selt.v1,S_selt.b1,S_selt.a1,S_selt.r2,S_selt.v2,S_selt.b2,S_selt.a2)
		PrintTextOn("CURRENT", 502, S_FONTE, S_GF,"LEFT", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)

	elseif gLS_mode==LS_MODE_DEL then
		PrintTextOn("LOA_TXT_GRDTITRE", 503, S_FONTE, S_TGF,"LEFT", S_selt.r1, S_selt.v1,S_selt.b1,S_selt.a1,S_selt.r2,S_selt.v2,S_selt.b2,S_selt.a2)
		PrintTextOn("CURRENT", 503, S_FONTE, S_GF,"LEFT", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
	end

	PrintStringOn("LOA_TXT_NOMJOUEUR", player, S_FONTE, S_MF,"LEFT", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
end

-- Function 'End'
function LOA_TXT_PETTITRE:End()
end
