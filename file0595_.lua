RSO_password={saisie}

-- Function 'Init'
function RSO_password:Init()
	self.saisie = 0
end

-- Function 'Update'
function RSO_password:Update()

	if IsSelected() == 1 then
		--PrintTextOn("CURRENT", 88, S_FONTE, S_MUMF,"LEFT", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
		PrintTextOn("CURRENT", 88, S_FONTE, S_MUMF,"LEFT", S_RSO_PSW_S.r1, S_RSO_PSW_S.v1,S_RSO_PSW_S.b1,S_RSO_PSW_S.a1,S_RSO_PSW_S.r2,S_RSO_PSW_S.v2,S_RSO_PSW_S.b2,S_RSO_PSW_S.a2)
	else
		--PrintTextOn("CURRENT", 88, S_FONTE, S_MUMF,"LEFT", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		PrintTextOn("CURRENT", 88, S_FONTE, S_MUMF,"LEFT", S_RSO_PSW_NS.r1, S_RSO_PSW_NS.v1,S_RSO_PSW_NS.b1,S_RSO_PSW_NS.a1,S_RSO_PSW_NS.r2,S_RSO_PSW_NS.v2,S_RSO_PSW_NS.b2,S_RSO_PSW_NS.a2)
	end

	if PushUpSelected() == 1 and self.saisie == 0 then
		StopUp()		
			if GetLuaObject("RSO_opt04").aff == 1 then
				Selected("RSO_opt04")
			else
				Selected("RSO_opt2")
			end
		JoueSon2DNoInst("MenuHB", 0,-1)
	end

	if PushDownSelected() == 1 and self.saisie == 0 then
		StopDown()
		Selected("RSO_Create")
		JoueSon2DNoInst("MenuHB", 0,-1)
	end



	if PushEnterSelected() == 1 then
		StopEnter()
		StartPopup("Popup_password", 1000000)
		JoueSon2DNoInst("MenuVAL", 0,-1)
	end



end

-- Function 'End'
function RSO_password:End()

end

function RSO_password:Notify(event)

end

function MUL_option03:Popup_password (id, res)

	if id==1000000 then
		if res==POPUP_YES then
			Selected("RSO_Create")
		else
			PwdNet = ""
		end
	end

end


