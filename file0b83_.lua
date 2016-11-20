o3d_queen={fx_invincible, fx_normal}

-- Fonction 'Init'
function o3d_queen:Init()

	PrintDebug("Load o3d_queen")
	
	self.fx_invincible = "fx_invincible"
	self.fx_normal = "fx_normal"
	
	loadSFX("CURRENT", self.fx_invincible, "sfx_L2queen")
	loadSFX("CURRENT", self.fx_normal, "sfx_L2queen_end")
	
	LoadEntityAnim("CURRENT", "queen_marche")
	LoadEntityAnim("CURRENT", "queen_marche_ar")
	LoadEntityAnim("CURRENT", "queen_stand")
	LoadEntityAnim("CURRENT", "queen_attackfin")
	LoadEntityAnim("CURRENT", "queen_demi_avar")
	LoadEntityAnim("CURRENT", "queen_demi_arav01")
	LoadEntityAnim("CURRENT", "queen_marche2stand_2")
	LoadEntityAnim("CURRENT", "queen_marchear_st")
	LoadEntityAnim("CURRENT", "queen_marchear2st")
	LoadEntityAnim("CURRENT", "queen_stand_2")
	LoadEntityAnim("CURRENT", "queen_stand2march_2")
	LoadEntityAnim("CURRENT", "queenstand_2march")
	
	MakeSameColliAsTrack("CURRENT")
	EnableCollisionDetection("CURRENT", FALSE)
	SetFlagTestPhysicallyOnMissile("CURRENT", TRUE)
	
	NotifyToEntity("CURRENT", TE_ADD_MAXLIFE, 10000)
	NotifyToEntity("CURRENT", TE_ADD_DAMAGE_MISSILE_FACTOR, 0)
	
	SetEntityDamage("CURRENT", Q_COL_LIFE)

	MoveEntity("CURRENT", "o3d_dummy", "dummy", 0, 0, 0)
	
	HideEntity("CURRENT")
	
end

-- Fonction 'Update'
function o3d_queen:Update()

end

-- Fonction 'End'
function o3d_queen:End()

end

-- Fonction 'Notify'
function o3d_queen:Notify(event)

	if event == TM_ENTITY_ANIM_FINISH then
	
		AnimQueen()
		
	end

	if event == TM_ENTITY_COLLISION_MISSILE then
	
		HitQueen()
	end
	
end