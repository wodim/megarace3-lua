t_alveole_big={}


function t_alveole_big:Init()
end


function t_alveole_big:Update()

	if SelectEntityEnterInTrigger("CURRENT", "ALL_PODS", "")==TRUE then

		PrintDebug("---------------->> Entre dans trigger !")
		-- Phase 2 / 4
		if trackStateL4==2 or trackStateL4==4 then

			if IsCollisionDetectionEnabled("o3d_alveole_big")==FALSE then
				-- Ferme l'alvéole de l'entrée de la partie 3 grise
				JoueSon3D("Ventri", "o3d_alveole_big", FALSE, -1)
				EnableCollisionDetection("o3d_alveole_big", TRUE)
				SetAnimFinishMode("o3d_alveole_big", 0)
				StartEntityAnim("o3d_alveole_big", "ventricules+", -1, 1, 1)
			end

		end

	end

end


function t_alveole_big:End()
end
