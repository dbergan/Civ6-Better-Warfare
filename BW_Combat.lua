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
	local iX 	= plot:GetX()
	local iY 	= plot:GetY()

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
	return list
end

function BW_Combat(combatResult)
	local CType = combatResult[CombatResultParameters.COMBAT_TYPE]

	-- Melee is 748940753
	-- Ranged is 784649805
	if CType == 748940753 then
		local attackerID 		= combatResult[CombatResultParameters.ATTACKER][CombatResultParameters.ID].id
		local attackerPlayerID 		= combatResult[CombatResultParameters.ATTACKER][CombatResultParameters.ID].player
		local attackerPlot	= Map.GetPlotXYWithRangeCheck(combatResult[CombatResultParameters.ATTACKER][CombatResultParameters.LOCATION].x, combatResult[CombatResultParameters.ATTACKER][CombatResultParameters.LOCATION].y)
		local attackerAdjacentPlots = GetAdjacentPlots(attackerPlot, true)

		local defenderID 		= combatResult[CombatResultParameters.DEFENDER][CombatResultParameters.ID].id
		local defenderPlayerID 		= combatResult[CombatResultParameters.DEFENDER][CombatResultParameters.ID].player
		local defenderPlot	= Map.GetPlotXYWithRangeCheck(combatResult[CombatResultParameters.DEFENDER][CombatResultParameters.LOCATION].x, combatResult[CombatResultParameters.DEFENDER][CombatResultParameters.LOCATION].y)
		local defenderAdjacentPlots = GetAdjacentPlots(defenderPlot, true)

		-- Units next to defender get XP (but not the attacker and defender, naturally)
		for i, plot in ipairs(defenderAdjacentPlots) do
			local aUnits 	= Units.GetUnitsInPlot(plot)
			for j, pUnit in ipairs(aUnits) do
				if pUnit:GetID() ~= attackerID and pUnit:GetID() ~= defenderID then
					if GameInfo.Units[pUnit:GetType()].PromotionClass == "PROMOTION_CLASS_RECON" then
						pUnit:GetExperience():ChangeExperience(2);
					else
						pUnit:GetExperience():ChangeExperience(1);
					end
				end
			end
		end


		-- Units next to the enemy (attacker OR defender) get XP (but not the attacker and defender, naturally)
		for i, plot in ipairs(attackerAdjacentPlots) do
			local aUnits 	= Units.GetUnitsInPlot(plot)
			for j, pUnit in ipairs(aUnits) do
				if Players[pUnit:GetOwner()]:GetID() ~= attackerPlayerID and pUnit:GetID() ~= attackerID and pUnit:GetID() ~= defenderID then
					if GameInfo.Units[pUnit:GetType()].PromotionClass == "PROMOTION_CLASS_RECON" then
						pUnit:GetExperience():ChangeExperience(2);
					else
						pUnit:GetExperience():ChangeExperience(1);
					end
				end
			end
		end

		for i, plot in ipairs(defenderAdjacentPlots) do
			local aUnits 	= Units.GetUnitsInPlot(plot)
			for j, pUnit in ipairs(aUnits) do
				if Players[pUnit:GetOwner()]:GetID() ~= defenderPlayerID and pUnit:GetID() ~= attackerID and pUnit:GetID() ~= defenderID then
					if GameInfo.Units[pUnit:GetType()].PromotionClass == "PROMOTION_CLASS_RECON" then
						pUnit:GetExperience():ChangeExperience(2);
					else
						pUnit:GetExperience():ChangeExperience(1);
					end
				end
			end
		end
	end
end
Events.Combat.Add(BW_Combat)