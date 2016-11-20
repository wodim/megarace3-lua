Quezacoatls_Feather_sfx={ QuezaSFX }

function Quezacoatls_Feather_sfx:Init()
	self.QuezaSFX = GetEntityName() .. "QF"

	if GetNameTypeEntitee("CURRENT")=="gc.dff" then
		loadSFX( "CURRENT", self.QuezaSFX, "sfx_shieldgc1" )
	elseif GetNameTypeEntitee("CURRENT")=="hy.dff" then
		loadSFX( "CURRENT", self.QuezaSFX, "sfx_shieldhy1" )
	elseif GetNameTypeEntitee("CURRENT")=="mr.dff" then
		loadSFX( "CURRENT", self.QuezaSFX, "sfx_shieldmr1" )
	elseif GetNameTypeEntitee("CURRENT")=="nt.dff" then
		loadSFX( "CURRENT", self.QuezaSFX, "sfx_shieldnt1" )
	elseif GetNameTypeEntitee("CURRENT")=="ps.dff" then
		loadSFX( "CURRENT", self.QuezaSFX, "sfx_shieldps1" )
	elseif GetNameTypeEntitee("CURRENT")=="rb.dff" then
		loadSFX( "CURRENT", self.QuezaSFX, "sfx_shieldrb1" )
	elseif GetNameTypeEntitee("CURRENT")=="sa.dff" then
		loadSFX( "CURRENT", self.QuezaSFX, "sfx_shieldsa1" )
	elseif GetNameTypeEntitee("CURRENT")=="sap.dff" then
		loadSFX( "CURRENT", self.QuezaSFX, "sfx_shieldsap1" )
	elseif GetNameTypeEntitee("CURRENT")=="tn.dff" then
		loadSFX( "CURRENT", self.QuezaSFX, "sfx_shieldtn1" )
	elseif GetNameTypeEntitee("CURRENT")=="vul.dff" then
		loadSFX( "CURRENT", self.QuezaSFX, "sfx_shieldvul1" )
	elseif GetNameTypeEntitee("CURRENT")=="wo.dff" then
		loadSFX( "CURRENT", self.QuezaSFX, "sfx_shieldwo1" )
	elseif GetNameTypeEntitee("CURRENT")=="xb.dff" then
		loadSFX( "CURRENT", self.QuezaSFX, "sfx_shieldxb1" )
	end

	ChargeSon("Defense1")

end

function Quezacoatls_Feather_sfx:Update()
end

function Quezacoatls_Feather_sfx:End()
end

function Quezacoatls_Feather_sfx:Fnc1()
	JoueSon3D("Defense1", "CURRENT", 1, -1)
	startSFX( self.QuezaSFX )
end

function Quezacoatls_Feather_sfx:Fnc2()
	StoppeSon("Defense1", "CURRENT")
	stopSFX( self.QuezaSFX )
end

function Quezacoatls_Feather_sfx:KillSfx()
	StoppeSon("Defense1", "CURRENT")
	stopSFX( self.QuezaSFX )
end

