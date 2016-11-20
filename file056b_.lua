pop_texte={}

-- Function 'Init'
function pop_texte:Init()
end

-- Function 'Update'
function pop_texte:Update()

	local idPopup = GetValuePopup()

	-- ----------------------------------------------- ERROR ---------------------------------------------------------------------------------
	-- Serious error
	if idPopup==520 then
		PrintTextOn("CURRENT", 520, S_FONTE, S_FPP,"CENTER", S_selpp.r1, S_selpp.v1,S_selpp.b1,S_selpp.a1,S_selpp.r2,S_selpp.v2,S_selpp.b2,S_selpp.a2)
	elseif idPopup==521 then
		PrintTextOn("CURRENT", 521, S_FONTE, S_FPP,"CENTER", S_selpp.r1, S_selpp.v1,S_selpp.b1,S_selpp.a1,S_selpp.r2,S_selpp.v2,S_selpp.b2,S_selpp.a2)

	-- Process canceled by change
	elseif idPopup==522 then
		PrintTextOn("CURRENT", 522, S_FONTE, S_FPP,"CENTER", S_selpp.r1, S_selpp.v1,S_selpp.b1,S_selpp.a1,S_selpp.r2,S_selpp.v2,S_selpp.b2,S_selpp.a2)

	-- MC not inserted
	elseif idPopup==524 then
		PrintTextOn("CURRENT", 524, S_FONTE, S_FPP,"CENTER", S_selpp.r1, S_selpp.v1,S_selpp.b1,S_selpp.a1,S_selpp.r2,S_selpp.v2,S_selpp.b2,S_selpp.a2)

	-- MC with corrupted data
	elseif idPopup==528 then
		PrintTextOn("CURRENT", 528, S_FONTE, S_FPP,"CENTER", S_selpp.r1, S_selpp.v1,S_selpp.b1,S_selpp.a1,S_selpp.r2,S_selpp.v2,S_selpp.b2,S_selpp.a2)

	-- MC with not enough free space
	elseif idPopup==530 then
		local str = ReplaceByFreeSpaceNeeded(GetText(530));
		PrintStringOn("CURRENT", str, S_FONTE, S_FPP,"CENTER", S_selpp.r1, S_selpp.v1,S_selpp.b1,S_selpp.a1,S_selpp.r2,S_selpp.v2,S_selpp.b2,S_selpp.a2)

	-- ----------------------------------------------- FORMAT ---------------------------------------------------------------------------------
	-- MC is not formated
	elseif idPopup==550 then
		PrintTextOn("CURRENT", 550, S_FONTE, S_FPP,"CENTER", S_selpp.r1, S_selpp.v1,S_selpp.b1,S_selpp.a1,S_selpp.r2,S_selpp.v2,S_selpp.b2,S_selpp.a2)

	-- Format MC ?
	elseif idPopup==554 then
		PrintTextOn("CURRENT", 554, S_FONTE, S_FPP,"CENTER", S_selpp.r1, S_selpp.v1,S_selpp.b1,S_selpp.a1,S_selpp.r2,S_selpp.v2,S_selpp.b2,S_selpp.a2)

	-- Formating
	elseif idPopup==556 then
		PrintTextOn("CURRENT", 556, S_FONTE, S_FPP,"CENTER", S_selpp.r1, S_selpp.v1,S_selpp.b1,S_selpp.a1,S_selpp.r2,S_selpp.v2,S_selpp.b2,S_selpp.a2)

	-- Format successful
	elseif idPopup==558 then
		PrintTextOn("CURRENT", 558, S_FONTE, S_FPP,"CENTER", S_selpp.r1, S_selpp.v1,S_selpp.b1,S_selpp.a1,S_selpp.r2,S_selpp.v2,S_selpp.b2,S_selpp.a2)

	-- format failed
	elseif idPopup==560 then
		PrintTextOn("CURRENT", 560, S_FONTE, S_FPP,"CENTER", S_selpp.r1, S_selpp.v1,S_selpp.b1,S_selpp.a1,S_selpp.r2,S_selpp.v2,S_selpp.b2,S_selpp.a2)

	-- ----------------------------------------------- BEGIN ---------------------------------------------------------------------------------
	-- Caution no mc
	elseif idPopup==570 then
		local str = ReplaceByFreeSpaceNeeded(GetText(570));
		PrintStringOn("CURRENT", str, S_FONTE, S_FPP,"CENTER", S_selpp.r1, S_selpp.v1,S_selpp.b1,S_selpp.a1,S_selpp.r2,S_selpp.v2,S_selpp.b2,S_selpp.a2)

	-- Checking mc
	elseif idPopup==572 then
		--PrintTextOn("CURRENT", 572, S_FONTE, S_FPP,"CENTER", S_selpp.r1, S_selpp.v1,S_selpp.b1,S_selpp.a1,S_selpp.r2,S_selpp.v2,S_selpp.b2,S_selpp.a2)
		PrintTextOn("pop_texte", 572, S_FONTE, S_FPP,"CENTER", S_selpp.r1, S_selpp.v1,S_selpp.b1,S_selpp.a1,S_selpp.r2,S_selpp.v2,S_selpp.b2,S_selpp.a2)

	-- Saving data to memory
	elseif idPopup==574 then
		PrintTextOn("CURRENT", 574, S_FONTE, S_FPP,"CENTER", S_selpp.r1, S_selpp.v1,S_selpp.b1,S_selpp.a1,S_selpp.r2,S_selpp.v2,S_selpp.b2,S_selpp.a2)

	-- ----------------------------------------------- SAVE ----------------------------------------------------------------------------------
	-- Saving
	elseif idPopup==580 then
		PrintTextOn("CURRENT", 580, S_FONTE, S_FPP,"CENTER", S_selpp.r1, S_selpp.v1,S_selpp.b1,S_selpp.a1,S_selpp.r2,S_selpp.v2,S_selpp.b2,S_selpp.a2)
	elseif idPopup==581 then
		PrintTextOn("CURRENT", 581, S_FONTE, S_FPP,"CENTER", S_selpp.r1, S_selpp.v1,S_selpp.b1,S_selpp.a1,S_selpp.r2,S_selpp.v2,S_selpp.b2,S_selpp.a2)

	-- Overwrite ?
	elseif idPopup==582 then
		PrintTextOn("CURRENT", 582, S_FONTE, S_FPP,"CENTER", S_selpp.r1, S_selpp.v1,S_selpp.b1,S_selpp.a1,S_selpp.r2,S_selpp.v2,S_selpp.b2,S_selpp.a2)

	-- Save failed
	elseif idPopup==584 then
		PrintTextOn("CURRENT", 584, S_FONTE, S_FPP,"CENTER", S_selpp.r1, S_selpp.v1,S_selpp.b1,S_selpp.a1,S_selpp.r2,S_selpp.v2,S_selpp.b2,S_selpp.a2)

	-- Save failed error
	elseif idPopup==586 then
		PrintTextOn("CURRENT", 586, S_FONTE, S_FPP,"CENTER", S_selpp.r1, S_selpp.v1,S_selpp.b1,S_selpp.a1,S_selpp.r2,S_selpp.v2,S_selpp.b2,S_selpp.a2)
	elseif idPopup==587 then
		PrintTextOn("CURRENT", 587, S_FONTE, S_FPP,"CENTER", S_selpp.r1, S_selpp.v1,S_selpp.b1,S_selpp.a1,S_selpp.r2,S_selpp.v2,S_selpp.b2,S_selpp.a2)

	-- Save successful
	elseif idPopup==588 then
		PrintTextOn("CURRENT", 588, S_FONTE, S_FPP,"CENTER", S_selpp.r1, S_selpp.v1,S_selpp.b1,S_selpp.a1,S_selpp.r2,S_selpp.v2,S_selpp.b2,S_selpp.a2)

	-- ----------------------------------------------- LOAD ---------------------------------------------------------------------------------
	-- MC with no M3 save
	elseif idPopup==600 then
		PrintTextOn("CURRENT", 600, S_FONTE, S_FPP,"CENTER", S_selpp.r1, S_selpp.v1,S_selpp.b1,S_selpp.a1,S_selpp.r2,S_selpp.v2,S_selpp.b2,S_selpp.a2)

	-- All saves are empty
	elseif idPopup==603 then
		PrintTextOn("CURRENT", 603, S_FONTE, S_FPP,"CENTER", S_selpp.r1, S_selpp.v1,S_selpp.b1,S_selpp.a1,S_selpp.r2,S_selpp.v2,S_selpp.b2,S_selpp.a2)

	-- Loading
	elseif idPopup==604 then
		PrintTextOn("CURRENT", 604, S_FONTE, S_FPP,"CENTER", S_selpp.r1, S_selpp.v1,S_selpp.b1,S_selpp.a1,S_selpp.r2,S_selpp.v2,S_selpp.b2,S_selpp.a2)
	elseif idPopup==605 then
		PrintTextOn("CURRENT", 605, S_FONTE, S_FPP,"CENTER", S_selpp.r1, S_selpp.v1,S_selpp.b1,S_selpp.a1,S_selpp.r2,S_selpp.v2,S_selpp.b2,S_selpp.a2)

	-- Load failed
	elseif idPopup==606 then
		PrintTextOn("CURRENT", 606, S_FONTE, S_FPP,"CENTER", S_selpp.r1, S_selpp.v1,S_selpp.b1,S_selpp.a1,S_selpp.r2,S_selpp.v2,S_selpp.b2,S_selpp.a2)

	-- Load faile error
	elseif idPopup==608 then
		PrintTextOn("CURRENT", 608, S_FONTE, S_FPP,"CENTER", S_selpp.r1, S_selpp.v1,S_selpp.b1,S_selpp.a1,S_selpp.r2,S_selpp.v2,S_selpp.b2,S_selpp.a2)
	elseif idPopup==609 then
		PrintTextOn("CURRENT", 609, S_FONTE, S_FPP,"CENTER", S_selpp.r1, S_selpp.v1,S_selpp.b1,S_selpp.a1,S_selpp.r2,S_selpp.v2,S_selpp.b2,S_selpp.a2)

	-- Load successful
	elseif idPopup==610 then
		PrintTextOn("CURRENT", 610, S_FONTE, S_FPP,"CENTER", S_selpp.r1, S_selpp.v1,S_selpp.b1,S_selpp.a1,S_selpp.r2,S_selpp.v2,S_selpp.b2,S_selpp.a2)

	-- ----------------------------------------------- DELETE -------------------------------------------------------------------------------
	-- Clearing
	elseif idPopup==620 then
		PrintTextOn("CURRENT", 620, S_FONTE, S_FPP,"CENTER", S_selpp.r1, S_selpp.v1,S_selpp.b1,S_selpp.a1,S_selpp.r2,S_selpp.v2,S_selpp.b2,S_selpp.a2)
	elseif idPopup==621 then
		PrintTextOn("CURRENT", 621, S_FONTE, S_FPP,"CENTER", S_selpp.r1, S_selpp.v1,S_selpp.b1,S_selpp.a1,S_selpp.r2,S_selpp.v2,S_selpp.b2,S_selpp.a2)

	-- Clearing ???
	elseif idPopup==622 then
		PrintTextOn("CURRENT", 622, S_FONTE, S_FPP,"CENTER", S_selpp.r1, S_selpp.v1,S_selpp.b1,S_selpp.a1,S_selpp.r2,S_selpp.v2,S_selpp.b2,S_selpp.a2)

	-- Clear failed
	elseif idPopup==624 then
		PrintTextOn("CURRENT", 624, S_FONTE, S_FPP,"CENTER", S_selpp.r1, S_selpp.v1,S_selpp.b1,S_selpp.a1,S_selpp.r2,S_selpp.v2,S_selpp.b2,S_selpp.a2)

	-- Clear failed error
	elseif idPopup==626 then
		PrintTextOn("CURRENT", 626, S_FONTE, S_FPP,"CENTER", S_selpp.r1, S_selpp.v1,S_selpp.b1,S_selpp.a1,S_selpp.r2,S_selpp.v2,S_selpp.b2,S_selpp.a2)
	elseif idPopup==627 then
		PrintTextOn("CURRENT", 627, S_FONTE, S_FPP,"CENTER", S_selpp.r1, S_selpp.v1,S_selpp.b1,S_selpp.a1,S_selpp.r2,S_selpp.v2,S_selpp.b2,S_selpp.a2)

	-- Clear successful
	elseif idPopup==628 then
		PrintTextOn("CURRENT", 628, S_FONTE, S_FPP,"CENTER", S_selpp.r1, S_selpp.v1,S_selpp.b1,S_selpp.a1,S_selpp.r2,S_selpp.v2,S_selpp.b2,S_selpp.a2)

	-- ----------------------------------------------- DIVERS -------------------------------------------------------------------------------
	-- Exit ?
	elseif idPopup==660 then
		PrintTextOn("CURRENT", 660, S_FONTE, S_FPP,"CENTER", S_selpp.r1, S_selpp.v1,S_selpp.b1,S_selpp.a1,S_selpp.r2,S_selpp.v2,S_selpp.b2,S_selpp.a2)

	-- Save the game ? (en fin de course)
	elseif idPopup==661 then
		PrintTextOn("CURRENT", 661, S_FONTE, S_FPP,"CENTER", S_selpp.r1, S_selpp.v1,S_selpp.b1,S_selpp.a1,S_selpp.r2,S_selpp.v2,S_selpp.b2,S_selpp.a2)

	-- Retry ?
	elseif idPopup==662 then
		PrintTextOn("CURRENT", 662, S_FONTE, S_FPP,"CENTER", S_selpp.r1, S_selpp.v1,S_selpp.b1,S_selpp.a1,S_selpp.r2,S_selpp.v2,S_selpp.b2,S_selpp.a2)

	-- Network connction dropped by server
	elseif idPopup==727 then
		PrintTextOn("CURRENT", 727, S_FONTE, S_FPP,"CENTER", S_selpp.r1, S_selpp.v1,S_selpp.b1,S_selpp.a1,S_selpp.r2,S_selpp.v2,S_selpp.b2,S_selpp.a2)

	-- ------------------------------------------------------------------------------------------------------------------------------------------
	end

	if PushUpSelected() == TRUE then
		StopUp()
	end

	if PushDownSelected() == TRUE then
		StopDown()
	end

	if PushEnterSelected() == TRUE then
		StopEnter()
		if GetGlobalVariable("gPOPUP_state") ~= POPUP_STATE_WAIT then
			ExitPopup(POPUP_YES)
		end
	end

end

-- Function 'End'
function pop_texte:End()
end
