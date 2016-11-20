o3d_alveole={}


function o3d_alveole:Init()

	LoadEntityAnim("CURRENT", "ventricules")
	EnableCollisionDetection("CURRENT", FALSE)

--	SetEntityDamage("CURRENT", ALV_COL_LIFE)
--	SetEntityDamageMult("CURRENT", ALV_COL_LIFE_FACTOR)

end


function o3d_alveole:Update()
end


function o3d_alveole:End()
end


function o3d_alveole:Notify(event)
end
