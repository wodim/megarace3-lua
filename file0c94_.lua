t_alveole={}


function t_alveole:Init()
end


function t_alveole:Update()

	if SelectEntityEnterInTrigger("CURRENT", "ALL_PODS", "")==1 then

		-- Phase 1 / 2
		if trackStateL4==1 or trackStateL4==2 then

			if IsCollisionDetectionEnabled("o3d_alveole")==FALSE then

				-- Ferme l'entrée orange
				JoueSon3D("Ventri", "o3d_alveole", FALSE, -1)
				SetAnimFinishMode("o3d_alveole", 0)
				StartEntityAnim("o3d_alveole", "ventricules", -1, 1, 1)
				EnableCollisionDetection("o3d_alveole", TRUE)

				-- Laisse ouverte l'entrée grise partie 2

			end

		-- Phase 3 / 4
		else

			if IsCollisionDetectionEnabled("o3d_alveole01")==FALSE then

				-- Laisse ouverte l'entrée orange

				-- Ferme l'entrée grise partie 2
				JoueSon3D("Ventri", "o3d_alveole01", FALSE, -1)
				SetAnimFinishMode("o3d_alveole01", 0)
				StartEntityAnim("o3d_alveole01", "ventricules", -1, 1, 1)
				EnableCollisionDetection("o3d_alveole01", TRUE)

			end

		end

	end

end


function t_alveole:End()
end
