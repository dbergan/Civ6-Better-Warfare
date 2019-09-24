function dump(o)
   if type(o) == 'table' then
      local s = '{ '
      for k,v in pairs(o) do
         if type(k) ~= 'number' then k = '"'..k..'"' end
         s = s .. '['..k..'] = ' .. dump(v) .. ','
      end
      return s .. '} '
   else
      return tostring(o)
   end
end

function GetAdjacentPlots(plot, includeCenter)

print("GAP plot " .. dump(plot))
print("GAP includeCenter " .. dump(includeCenter))

	local iX 	= plot:GetX()
print("GAP iX " .. dump(iX))
	local iY 	= plot:GetY()
print("GAP iY " .. dump(iY))

	local list	= {}
	
	if includeCenter then
		table.insert(list, plot)
	end

	for direction = 0, DirectionTypes.NUM_DIRECTION_TYPES - 1, 1 do
		local adjacentPlot 	= Map.GetAdjacentPlot(iX, iY, direction)
		if adjacentPlot then
			table.insert(list, adjacentPlot)
		end		
	end
print("GAP list " .. dump(list))
	return list
end

function BW_Combat(combatResult)
	local attacker 		= combatResult[CombatResultParameters.ATTACKER][CombatResultParameters.ID]
print("attacker " .. dump(attacker))
	local defender 		= combatResult[CombatResultParameters.DEFENDER][CombatResultParameters.ID]
print("defender " .. dump(defender))
	local locationX		= combatResult[CombatResultParameters.LOCATION].x
print("locationX " .. dump(locationX))
	local locationY		= combatResult[CombatResultParameters.LOCATION].y
print("locationY " .. dump(locationY))

	local location		= Map.GetPlotXY(locationX, locationY)
print("location " .. dump(location))
	local locationRC	= Map.GetPlotXYWithRangeCheck(locationX, locationY)
print("locationRC " .. dump(locationRC))

	local adjacentToLocation = GetAdjacentPlots(locationRC, true)

	for i, plotID in ipairs(adjacentToLocation) do
print("plotID " .. dump(plotID))

		local plot 		= Map.GetPlotByIndex(plotID)
print("plot " .. dump(plot))
print("plotx " .. dump(plot:GetX()))
print("ploty " .. dump(plot:GetY()))

		local aUnits 	= Units.GetUnitsInPlot(plot)
print("aUnits " .. dump(aUnits))
		for j, pUnit in ipairs(aUnits) do
print("pUnit " .. dump(pUnit))
print("pUnit ID " .. dump(pUnit:GetID()))
print("pUnit type " .. dump(pUnit:GetType()))
print("pUnit XP " .. dump(pUnit:GetExperience()))

			if pUnit:GetID() == attacker then
				print("IS attacker")
			elseif pUnit:GetID() == defender then
				print("IS defender")
			elseif GameInfo.Units[pUnit:GetType()].UnitType ~= "UNIT_SCOUT" then
				print("NOT SCOUT")
			else
				print("GETS XP " .. pUnit:GetID())
				local iXP = 1; -- pUnit:GetExperience():GetExperienceForNextLevel() - pUnit:GetExperience():GetExperiencePoints();
				pUnit:GetExperience():ChangeExperience(iXP);
			end

		end
	end
end
Events.Combat.Add(BW_Combat)