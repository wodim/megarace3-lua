plante={name,Checkdistok}

function plante:Init()
	self.name = GetEntityName()
	LoadEntityAnim(self.name,"plante")
	EnableCollisionDetection(self.name,1)
	self.Checkdistok = 0
	SetEntityDamage(self.name,100)
	SetEntityDamageMult(self.name,1.5)

end

function plante:Update()
	if self.Checkdistok == 0 then
		if (SelectEntityEnterInTrigger( "t_murplante", "ALL_PODS", "" ) == 1) then
			self.Checkdistok = 1
		end
	end

	if self.Checkdistok == 1 then
		if DistanceEntityToEntity(self.name,"Player1") < 100 then
			StartEntityAnim(self.name,"plante",-1,1,1.2)
			self.Checkdistok = 2
			
			JoueSon3D("Plante1", "CURRENT", FALSE, -1)
		end
	end

end

function plante:End()
end