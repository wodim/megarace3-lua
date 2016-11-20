o3d_queen_abdo_front={mine_number, fx_invincible, fx_normal, mine_state}


function o3d_queen_abdo_front:Init()

	PrintDebug("Load o3d_queen_abdo_front")

	self.mine_number = 0
	self.fx_invincible = "fx_inv_abdo"
	self.fx_normal = "fx_nor_abdo"
	self.mine_state = 0
	
	LoadEntityAnim("CURRENT", "abdo")
	
	loadSFX("CURRENT", self.fx_invincible, "sfx_L2queen")
	loadSFX("CURRENT", self.fx_normal, "sfx_L2queen_end")
	
	MoveEntity("CURRENT", "o3d_dummy", "dummy", 0, 0, 0)
	
	CreateEventFallingObjects("queen_mines", "t_queen_mine", "o3d_queen_proj", "t_queen_bidon", QMINE_NUMBER)
	FallingObjectsSetLaunchPptiesFlagGenerationPointArray("queen_mines",  FALSE)
	FallingObjectsSetLaunchPptiesGenerationDensity("queen_mines", 1)
	FallingObjectsSetLaunchPptiesLaunchRate("queen_mines", QMINE_FREQ)
	FallingObjectsSetLaunchPptiesLifeTime("queen_mines", QMINE_TIME_LIFE)
	FallingObjectsSetTouchPptiesFlagSurvive("queen_mines", 1)
	FallingObjectsSetTouchPptiesFlagStayTrigger("queen_mines", 0 )
	FallingObjectsChangeGravityDirection("queen_mines", "o3d_queen_proj", 0, -1, 0)
	FallingObjectsChangeGravityValue("queen_mines","o3d_queen_proj" , 20000000)
	--FallingObjectsSetTouchPptiesFlagDestroyable("queen_mines", 1)	
	FallingObjectsSetLaunchPptiesCheckSpeed("queen_mines", -100000000)
	
	StartEvent("queen_mines")
	FallingObjectsPause("queen_mines")
	
	HideEntity("CURRENT")

end

function o3d_queen_abdo_front:Update()

end

function o3d_queen_abdo_front:End()

	DeleteEvent("queen_mines")

end

function o3d_queen_abdo_front:Clock(Id)
end

function o3d_queen_abdo_front:Notify(event)
end