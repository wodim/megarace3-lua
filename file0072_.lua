L1lua={tourz}


Effect	= 0


-- Function 'Init'
function L1lua:Init()
  	PrintDebug("Tarck L1 Update...")
	self.tourz = 0
	AutoriseWrongWay(0)
	JoueFluxMusique("L1-Bio-Organic", 3, TRUE);	
	
	ChargeSon("Plante1")
	ChargeSon("PlantLum")
	ChargeSon("Eboul1")
	--ChargeSon("Eboul2")
	ChargeSon("Impact1")
	ChargeSon("Rocher1")
	ChargeSon("PluiEau1")
	ChargeSon("PluiEau2")
	ChargeSon("PluiEau3")
	ChargeSon("BulleEau")
	ChargeSon("PluieAci")
	
	SetDrawRank(FALSE)
	SetDrawLap(FALSE)
	SetDrawProgBar(FALSE)
	SetDrawTarget(FALSE)
	
	SetTotalLimitTime(0, 5, 0, FALSE)
	SetCalibrateTime(148)
end

-- Function 'Update'
function L1lua:Update()

end

-- Function 'End'
function L1lua:End()

end


function L1lua:Notify(event,param)

	if event==TM_POD_NEWLAP then
		self.tourz = self.tourz + 1
		if GetLuaObject("check_2").tour == 2 then
			DisplayMsgCata(262)
		end
	end



	if event==TM_ENTITY_MORT then
		if param.name=="Player1" then
			setVideo( "sequence10", "sequence_10" )
			EndRace(FALSE)
		end
		KillEntity(param.name)
	end


end

function L1lua:Clock(Id)

	EndRaceClock(Id)
end



---------------------------  Elements spécifiques aux rochers  -------------------------------

R_DESTRUC_SPEED			= 250
R_DESTRUC_LIFE			= -80

function ColRock(rock)

	startSFX( GetLuaObject(rock).module1SFX )

	if HitEntity(rock) == "Player1" then
	
		JoueSon3D("Impact1", "Player1", FALSE, -1)
		if (GetSpeed(rock) + GetSpeed("Player1")) > R_DESTRUC_SPEED then
			KillEntity(rock)
			DiminishSpeed("Player1", 1)
			NotifyToEntity("Player1",TE_ADD_LIFE_WITH_SHIELD, R_DESTRUC_LIFE)
		end
	else
		JoueSon3D("Rocher1", rock, FALSE, -1)
	end
end