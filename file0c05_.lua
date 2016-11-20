TranslationTriggerStart={}



function TranslationTriggerStart:Init()

	CreateEventTranslation( "rototo", "CURRENT" )
	TranslationAttachEntity( "rototo", "box", 1000000, 0, -1, 0 )

end



function TranslationTriggerStart:Update()

	if( SelectEntityEnterInTrigger( "CURRENT", "ALL_ENTITIES", "" ) == 1 ) then

		StartEvent( "rototo" )

	end

end



function TranslationTriggerStart:End()

end
