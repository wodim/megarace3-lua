o3d_mort={}

function o3d_mort:Init()
	LoadEntityAnim("CURRENT", "ventricules+_dec")
	StartEntityAnim("CURRENT", "ventricules+_dec", -1, -1, 1)

	-- POUR TESTER - A VIRER -----------------------------------------------
	if trackStateL4==1 then
		ShowEntity("CURRENT")

	elseif trackStateL4==2 then
		HideEntity("CURRENT")

	elseif trackStateL4==3 then
		ShowEntity("CURRENT")

	elseif trackStateL4==4 then
		HideEntity("CURRENT")
	end
	-- ---------------------------------------------------------------------
end

function o3d_mort:Update()
end

function o3d_mort:End()
end

function o3d_mort:Notify(event)
end
