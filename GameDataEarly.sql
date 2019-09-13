-- Baseline support and flanking is 1 CS because modifiers are all in terms of percentages
UPDATE GlobalParameters SET Value = 1 WHERE Name = 'COMBAT_FLANKING_BONUS_MODIFIER' OR Name = 'COMBAT_SUPPORT_BONUS_MODIFIER' ;
-- Baseline damage multipler to 100 because modifier is in terms of percentages
UPDATE GlobalParameters SET Value = 100 WHERE Name = 'COMBAT_WOUNDED_DAMAGE_MULTIPLIER' ;  -- standard = 10 (also exists: COMBAT_WOUNDED_DISTRICT_DAMAGE_MULTIPLIER)


DELETE FROM Types WHERE Type = 'ABILITY_NAVAL_BOMBARD' OR Type = 'ABILITY_ATTACK_SUB_RAIDER' OR Type = 'ABILITY_ATTACK_SUB_SURFACE_WARSHIP' ;
DELETE FROM TypeTags WHERE Type = 'ABILITY_NAVAL_BOMBARD' OR Type = 'ABILITY_ATTACK_SUB_RAIDER' OR Type = 'ABILITY_ATTACK_SUB_SURFACE_WARSHIP' ;
DELETE FROM UnitAbilities WHERE UnitAbilityType = 'ABILITY_NAVAL_BOMBARD' OR UnitAbilityType = 'ABILITY_ATTACK_SUB_RAIDER' OR UnitAbilityType = 'ABILITY_ATTACK_SUB_SURFACE_WARSHIP' ;
DELETE FROM UnitAbilityModifiers WHERE UnitAbilityType = 'ABILITY_NAVAL_BOMBARD' OR UnitAbilityType = 'ABILITY_ATTACK_SUB_RAIDER' OR UnitAbilityType = 'ABILITY_ATTACK_SUB_SURFACE_WARSHIP' ;

-- Priority Attack is "ABILITY_BYPASS_COMBAT_UNIT"
-- Restrict that ability to only snipers (e.g. Spec Ops)
DELETE FROM TypeTags WHERE Type = 'ABILITY_BYPASS_COMBAT_UNIT' AND Tag != 'CLASS_SNIPER' ;

-- Remove the +1 movement for Tanks & Modern Armor on flat terrain (seriously, if we're going to use this on modern units, it would apply to a lot more than just tanks)
DELETE FROM TypeTags WHERE Tag = 'CLASS_HEAVY_CHARIOT' AND (Type = 'UNIT_TANK' OR Type = 'UNIT_MODERN_ARMOR');

-- Remove Anti-Cavalry and Anti-Anti-Cavalry abilities (we can add ABILITY_ANTI_CAVALRY to specific units later, not sure that there's really any "anti-spear" units...)
DELETE FROM TypeTags WHERE Type = 'ABILITY_ANTI_CAVALRY' OR Type = 'ABILITY_ANTI_SPEAR' ;

-- Remove these classes altogether (the units will be re-classed)
DELETE FROM TypeTags WHERE Tag = 'CLASS_ANTI_CAVALRY' OR Tag LIKE '%AUTOMATIC_GUN%' ;

CREATE TABLE BW_UnitClasses (NewClass VARCHAR) ;

INSERT INTO BW_NewUnitClasses
(ClassName)
VALUES
('RECON'),
('AIR_ATTACK'),
('AIR_BOMBER'),
('AIR_FIGHTER'),
('ANTIAIR'),
('DEFENSIVE_GUN'),
('ELEPHANT'),
('GIANT_DEATH_ROBOT'),
('HEAVY_CAVALRY'),
('HEAVY_INFANTRY'),
('LIGHT_CAVALRY'),
('LIGHT_INFANTRY'),
('MARINE'),
('MONK'),
('NAVAL_BOMBARD'),
('NAVAL_CARRIER'),
('NAVAL_MELEE'),
('NAVAL_RAIDER'),
('NAVAL_RANGED'),
('RANGED'),
('RECON'),
('SIEGE'),
('SUPPORT') ;





-- Remove these classes from units (they'll be re-added properly in GameDataLate.sql)
DELETE FROM TypeTags WHERE Type LIKE 'Unit%' AND (
Tag LIKE 'CLASS_ANTI_AIR'
OR Tag LIKE 'CLASS_ANTI_CAVALRY'
OR Tag LIKE 'CLASS_MELEE'
OR Tag LIKE 'CLASS_HEAVY_CAVALRY'
OR Tag LIKE 'CLASS_LIGHT_CAVALRY'
OR Tag LIKE 'CLASS_RECON'
OR Tag LIKE 'CLASS_RANGED'
OR Tag LIKE 'CLASS_SUPPORT'
OR Tag LIKE 'CLASS_MONK'
OR Tag LIKE 'CLASS_SIEGE'
OR Tag LIKE ''
OR Tag LIKE ''
OR Tag LIKE ''
OR Tag LIKE ''
OR Tag LIKE ''
OR Tag LIKE ''
OR Tag LIKE ''
OR Tag LIKE ''
OR Tag LIKE ''
OR Tag LIKE ''
OR Tag LIKE ''
OR Tag LIKE ''
OR Tag LIKE ''
OR Tag LIKE ''
OR Tag LIKE ''
OR Tag LIKE ''
OR Tag LIKE ''
OR Tag LIKE ''
);

-- Prep for the Excel SQLs
UPDATE Units SET MandatoryObsoleteTech = NULL, MandatoryObsoleteCivic = NULL ;
DELETE FROM Units_XP2 ;
DELETE FROM UnitReplaces ;
DELETE FROM UnitUpgrades ;

