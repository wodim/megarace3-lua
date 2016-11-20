fleche2={name}

function fleche2:Init()
		self.name = GetEntityName()
	LoadEntityAnim(self.name, "fleche2")
	StartEntityAnim(self.name, "fleche2", -1, -1, 1)
end

function fleche2:Update()
end

function fleche2:End()
end
