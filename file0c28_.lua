fleche={name}

function fleche:Init()
		self.name = GetEntityName()
	LoadEntityAnim(self.name, "fleche")
	StartEntityAnim(self.name, "fleche", -1, -1, 1)
end

function fleche:Update()
end

function fleche:End()
end
