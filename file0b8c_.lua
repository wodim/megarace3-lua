T_bave06={podname}

function T_bave06:Init()

end

function T_bave06:Update()

	if (SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1) then
		local podname = GetFirstSelectedEntity()
		JoueSon3D("Bave", podname, 1, -1)
		DiminishSpeed( podname, 0.5)
		AddTemporarySpeed( podname, -0.7, 1)
		AddTemporaryAcceleration( podname, -0.9, 1)
		AddTemporaryGrip( podname, -0.9, 1);
	end
		


	if (SelectEntityLeaveTrigger( "CURRENT", "ALL_PODS", "" ) == 1) then
		self.podname = GetFirstSelectedEntity()
		StoppeSon("Bave", self.podname)
		RestoreTemporarySpeed( self.podname );
		RestoreTemporaryAcceleration(self.podname);
		RestoreTemporaryGrip( self.podname);
	end

end

function T_bave06:End()

end
