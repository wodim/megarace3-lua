OPTJ_TXT_PETTITRE={}

-- Function 'Init'
function OPTJ_TXT_PETTITRE:Init()
end

-- Function 'Update'
function OPTJ_TXT_PETTITRE:Update()
	PrintTextOn("OPTJ_TXT_GRDTITRE", 20, S_FONTE, S_TGF,"LEFT", S_selt.r1, S_selt.v1,S_selt.b1,S_selt.a1,S_selt.r2,S_selt.v2,S_selt.b2,S_selt.a2)
	PrintTextOn("CURRENT", 20, S_FONTE, S_GF,"LEFT", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
	PrintStringOn("OPTJ_TXT_NOMJOUEUR", player, S_FONTE, S_MF,"LEFT", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
end

function OPTJ_TXT_PETTITRE:End()
end
