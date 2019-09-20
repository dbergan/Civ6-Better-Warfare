-- Set baseline support and flanking is 1 CS because modifiers are all in terms of percentages (standard = 2)
UPDATE GlobalParameters SET Value = 1 WHERE Name = 'COMBAT_FLANKING_BONUS_MODIFIER' OR Name = 'COMBAT_SUPPORT_BONUS_MODIFIER' ;

-- Set baseline damage multipler to 100 because modifier is in terms of percentages (standard = 10; also exists: COMBAT_WOUNDED_DISTRICT_DAMAGE_MULTIPLIER)
UPDATE GlobalParameters SET Value = 100 WHERE Name = 'COMBAT_WOUNDED_DAMAGE_MULTIPLIER' ;

-- Change starting unit from Warrior to Scout
UPDATE MajorStartingUnits SET Unit = 'UNIT_SCOUT' WHERE Unit = 'UNIT_WARRIOR' AND Era = 'ERA_ANCIENT' ;


-- Clear tables that will be re-populated by UnitUpdates.sql
DELETE FROM Units_XP2 ;
DELETE FROM UnitReplaces ;
DELETE FROM UnitUpgrades ;
