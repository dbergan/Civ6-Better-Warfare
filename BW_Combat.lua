function BW_Combat(combatResult)

--[[
	local attacker 		= combatResult[CombatResultParameters.ATTACKER]
	local defender 		= combatResult[CombatResultParameters.DEFENDER]
	local locX, locY	= combatResult[CombatResultParameters.LOCATION].x, combatResult[CombatResultParameters.LOCATION].y
]]--
end
Events.Combat.Add(BW_Combat)