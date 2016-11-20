t_mort={}


function t_mort:Init()
end


function t_mort:Update()

	-- Activation de la zone de mort - Phase 1 et 3
	if trackStateL4==1 or trackStateL4==3 then

		-- On provoque la mort
		if SelectEntityInTrigger("CURRENT", "ALL_PODS", "")==1 then
			NotifyToEntiy("Player1", TE_ADD_LIFE, LIQUID_LIFE_LOST)
		end

	end

end


function t_mort:End()
end
