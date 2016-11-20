TranslationTriggerStop={}



function TranslationTriggerStop:Init()

end



function TranslationTriggerStop:Update()

	if( SelectEntityEnterInTrigger( "CURRENT", "ALL_ENTITIES", "" ) == 1 ) then

		TranslationRestart( "rototo" )
		StartEvent( "rototo" )

	end

end



function TranslationTriggerStop:End()

end
