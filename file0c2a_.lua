fleche3={name}

function fleche3:Init()
		self.name = GetEntityName()
	LoadEntityAnim(self.name, "fleche3")
	StartEntityAnim(self.name, "fleche3", -1, -1, 1)
end

function fleche3:Update()
end

function fleche3:End()
end
