o3d_alveole01={}


function o3d_alveole01:Init()

	LoadEntityAnim("CURRENT", "ventricules")
	EnableCollisionDetection("CURRENT", FALSE)

--	SetEntityDamage("CURRENT", ALV_GREY_COL_LIFE)
--	SetEntityDamageMult("CURRENT", ALV_GREY_COL_LIFE_FACTOR)

end


function o3d_alveole01:Update()
end


function o3d_alveole01:End()
end


function o3d_alveole01:Notify(event)
end
