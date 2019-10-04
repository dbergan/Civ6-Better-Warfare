-- Set baseline flanking to 1 CS because modifiers are all in terms of percentages (standard = 2)
-- UPDATE GlobalParameters SET Value = 1 WHERE Name = 'COMBAT_FLANKING_BONUS_MODIFIER' ;

-- Set baseline support to 1 CS because modifiers are all in terms of percentages (standard = 2)
-- UPDATE GlobalParameters SET Value = 1 WHERE Name = 'COMBAT_SUPPORT_BONUS_MODIFIER' ;

-- Set baseline damage multipler to 20 for Troop Intel because modifier only adjusts downward by percentage (standard = 10; also exists: COMBAT_WOUNDED_DISTRICT_DAMAGE_MULTIPLIER)
UPDATE GlobalParameters SET Value = 20 WHERE Name = 'COMBAT_WOUNDED_DAMAGE_MULTIPLIER' ;

-- ***************** TESTING *****************************
-- Takes all randomness out of combat (damage is always 30 among equal CS units)
UPDATE GlobalParameters SET Value = 30 WHERE Name = 'COMBAT_BASE_DAMAGE' ;
UPDATE GlobalParameters SET Value = 0 WHERE Name = 'COMBAT_MAX_EXTRA_DAMAGE' ;
-- ***************** TESTING *****************************


-- Change starting unit from Warrior to Scout
UPDATE MajorStartingUnits SET Unit = 'UNIT_SCOUT' WHERE Unit = 'UNIT_WARRIOR' AND Era = 'ERA_ANCIENT' ;


-- Clear tables that will be re-populated by UnitUpdates.sql
DELETE FROM Units_XP2 ;
DELETE FROM UnitReplaces ;
DELETE FROM UnitUpgrades ;