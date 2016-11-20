T_libellule={}

function T_libellule:Init()


	LoadEntityAnim("O3D_ANI_LIBEL","libelulle_anim")


end




function T_libellule:Update()


	if (SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1) then
		StartEntityAnim("O3D_ANI_LIBEL","libelulle_anim",1,1,1)
		JoueSon3DOnAtomic("Luciole", "O3D_ANI_LIBEL", "corps", 1, -1)
	end
end

function T_libellule:End()

end



