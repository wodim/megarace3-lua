Practice={}

-- Function 'Init'
function Practice:Init()

	ClearTrack()
	ClearPod()
	ClearModule(ATT)
	ClearModule(DEF)
	ClearModule(VIT)

  PrintDebug("PracticeInit ...")
	SetGlobalVariable("PracticeTyp",0)
	SetGlobalVariable("PracticeNivo",0)

	if GetPracticeDifficultyResult(0) == 1 then
		SetGlobalVariable("Practiceok",1)
	else 
		SetGlobalVariable("Practiceok",0)
	end

  SetEtat(-1)
end

-- Function 'Update'
function Practice:Update()
  if GetEtat()==0 then
    StartRace("P1")
    IncrementeEtat()
  end


end

-- Function 'End'
function Practice:End()

end

