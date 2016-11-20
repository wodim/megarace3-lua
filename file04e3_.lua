LOA_BT_PREVIOUS={hide}

-- Function 'Init'
function LOA_BT_PREVIOUS:Init()
	self.hide = FALSE
end

-- Function 'Update'
function LOA_BT_PREVIOUS:Update()

	if gLS_chosenBackup<1 then
		if self.hide==FALSE then
			HideInterfaceEntity("CURRENT")
			self.hide = TRUE
		end
	else
		if self.hide==TRUE then
			ShowInterfaceEntity("CURRENT")
			self.hide = FALSE
		end
	end

end

-- Function 'End'
function LOA_BT_PREVIOUS:End()
end
