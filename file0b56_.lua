function print(p)
  PrintDebug(p)
end

function IsInTrigger(object, trigger)
  if IsEntityInTrigger(object, trigger)==1 then
    return 1
  else
    return nil
  end
end

function EnterTrigger(object, trigger)
  if IsEntityEnterInTrigger(object, trigger)==1 then
    return 1
  else
    return nil
  end
end

function LeaveTrigger(object, trigger)
  if IsEntityLeaveTrigger(object, trigger)==1 then
    return 1
  else
    return nil
  end
end

function DistanceToTrigger(object, trigger)
  local dist = DistanceEntityToTrigger(object, trigger)
  if ( dist < 0 ) then
    return nil
  else
    return dist
  end
end

function SelectThePodInBonus(bonus, word)
  if SelectPodInBonus(bonus, word)==1 then
    return 1
  else
    return nil
  end
end

function OffBonus(bonus)
  OffTheBonus(bonus)
end

