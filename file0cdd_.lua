pont_seul={name,numro,tmp}

function pont_seul:Init()

	self.name = GetEntityName()
	HideEntity(self.name)
	self.numro = 0
	while self.numro < 154 do
		self.numro = self.numro + 1
		local lofteuse = ""
		if self.numro < 10 then
			lofteuse = "Loft0"..self.numro
		else
			lofteuse = "Loft"..self.numro
		end
		HideAtomic( self.name, lofteuse, 1 )
	end
	self.numro = 0

end

function pont_seul:Update()

	if (GetLuaObject("t_plantpont").oki == 1 and self.numro == 0) then
		GetLuaObject("t_plantpont").oki = 2 
		HideAtomic( self.name, "Loft01", 0 )
		EnableCollisionDetection("colbou",1)
		self.numro = 1
		self.tmp = 0
		StartClock( self.name, 0,1)
	end

end

function pont_seul:End()
end

function pont_seul:Clock(Id)

	if Id == 1 then
		self.numro = self.numro + 1
		local lofteuse = ""
		if self.numro < 10 then
			lofteuse = "Loft0"..self.numro
		else
			lofteuse = "Loft"..self.numro
		end
		HideAtomic( self.name, lofteuse, 0 )
		if self.numro < 13 then
			if self.tmp < 13 then
				StartClock(self.name,0.133 ,1)
			else
				self.tmp = 0
			end
			self.tmp = self.tmp + 1
		end
	end


end