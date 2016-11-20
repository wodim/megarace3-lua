T_libellule_fin={}

function T_libellule_fin:Init()

end




function T_libellule_fin:Update()


	if (SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1) then
		StoppeSon("Luciole", "O3D_ANI_LIBEL")
		--StopEntityAnim("O3D_ANI_LIBEL","libelulle_anim")
	end
end

function T_libellule_fin:End()

end



