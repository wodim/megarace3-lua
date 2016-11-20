FIN_TXT_ECRANINFO={}

-- Function 'Init'
function FIN_TXT_ECRANINFO:Init()

-- local nomtrck
-- local numtrck
-- local gm	= GetGameMode()
-- local etat	= GetTrackState(gm)
--local player = GetPlayerName()
--
--
--				PrintDebug("game mode : "..gm)
--				PrintDebug("Track State : "..etat)
--
--
--
--	if gm == 2 then
--		numtrck=GetUsedTrackIndex() + 1
--		if etat < 7 and numtrck > etat then
--			SetTrackState(gm,numtrck)
--			nomtrck="A"..numtrck
--			SetTrackAvailable(gm, nomtrck, 1);
--			PrintDebug(nomtrck.." Available")
--		elseif numtrck < 8 then
--			Selected("FIN_BT_CHOIXACTIF01")
--		else
--			Selected("FIN_BT_CHOIXACTIF03")
--		end
--	end
--
--	if gm == 3 then
--		numtrck=GetUsedTrackIndex() + 1
--		if etat < 7 and numtrck > etat then
--			SetTrackState(gm,numtrck)
--			nomtrck="A"..numtrck
--			SetTrackAvailable(gm, nomtrck, 1);
--			PrintDebug(nomtrck.." Available")
--		elseif numtrck < 8 then
--			Selected("FIN_BT_CHOIXACTIF01")
--		else
--			Selected("FIN_BT_CHOIXACTIF03")
--		end
--	end
--
--	if PlayerWin()==0 then
--		Selected("FIN_BT_CHOIXACTIF02")	
--	end


end


-- Function 'Update'
function FIN_TXT_ECRANINFO:Update()
	if PlayerWin()==0 then
		PrintTextOn("FIN_TXT_ECRANINFO", 406, S_FONTE, S_GF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
	else
		PrintTextOn("FIN_TXT_ECRANINFO", 405, S_FONTE, S_GF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
	end
	
end

function FIN_TXT_ECRANINFO:End()

end
