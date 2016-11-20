end_track_1={}

function end_track_1:Init()
end

function end_track_1:Update()

	if IsEntityEnterInTrigger("Player1", "CURRENT") == TRUE then
		DiminishSpeed("Player1", 0.5)
		EndRace(TRUE)
	end
end

function end_track_1:End()
end