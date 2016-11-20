t_pontbave={podname}

function t_pontbave:Init()

end




function t_pontbave:Update()

	if (SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1) then
		local podname = GetFirstSelectedEntity()
		JoueSon3D("Bave", podname, TRUE, -1)
		DiminishSpeed( podname, 0.5)
		AddTemporarySpeed( podname, -0.5, 1)
		AddTemporaryAcceleration( podname, -0.9, 1)
		AddTemporaryGrip( podname, -0.95, 1);
	end
		


	if (SelectEntityLeaveTrigger( "CURRENT", "ALL_PODS", "" ) == 1) then
		self.podname = GetFirstSelectedEntity()
		StoppeSon("Bave", self.podname)
		RestoreTemporarySpeed( self.podname );
		RestoreTemporaryAcceleration(self.podname);
		RestoreTemporaryGrip( self.podname);

	end

end

function t_pontbave:End()

end

