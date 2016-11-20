o3d_alveole_big={}


function o3d_alveole_big:Init()

	LoadEntityAnim("CURRENT", "ventricules+")
	EnableCollisionDetection("CURRENT", FALSE)
--	MakeSameColliAsTrack( "CURRENT" )

--	SetEntityDamage("CURRENT", ALV_BIG_COL_LIFE)
--	SetEntityDamageMult("CURRENT", ALV_BIG_COL_LIFE_FACTOR)

end


function o3d_alveole_big:Update()
end


function o3d_alveole_big:End()
end


function o3d_alveole_big:Notify(event)
end
