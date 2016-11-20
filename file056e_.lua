popig_txt1={}

-- Function 'Init'
function popig_txt1:Init()
	Selected("popig_back01")
	HideInterfaceEntity("CURRENT")
end

-- Function 'Update'
function popig_txt1:Update()

	PrintTextOn("CURRENT", 685, S_FONTE, S_GF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)


end

-- Function 'End'
function popig_txt1:End()
end
