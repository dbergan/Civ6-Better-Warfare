-- Remove all MandatoryObsoletes
UPDATE Units SET MandatoryObsoleteTech = NULL, MandatoryObsoleteCivic = NULL ;

-- RECON units get their own tile layer
UPDATE Units SET FormationClass = 'BW_FORMATION_CLASS_RECON' WHERE PromotionClass = 'PROMOTION_CLASS_RECON' ;

-- LAND_RANGED units moved to support tile layer
UPDATE Units SET FormationClass = 'FORMATION_CLASS_SUPPORT' WHERE PromotionClass = 'BW_PROMOTION_CLASS_LAND_RANGED' ;

-- SIEGE units moved to support tile layer
UPDATE Units SET FormationClass = 'FORMATION_CLASS_SUPPORT' WHERE PromotionClass = 'BW_PROMOTION_CLASS_SIEGE' ;


-- All combat units start with a promotion
UPDATE Units SET InitialLevel = 2 WHERE PromotionClass = 'PROMOTION_CLASS_RECON' OR PromotionClass LIKE 'BW%' ;

-- Heavy Inf requires a population
UPDATE Units SET PopulationCost = 1, PrereqPopulation = 2 WHERE PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY' ;


-- Nothing has ZOC by default
UPDATE Units SET ZoneOfControl = 0 WHERE UnitType NOT LIKE '%BARBARIAN%' ;

-- Nothing has Priority Attack by default (Priority Attack is "ABILITY_BYPASS_COMBAT_UNIT")
DELETE FROM TypeTags WHERE Type = 'ABILITY_BYPASS_COMBAT_UNIT' ;

-- Remove the +1 movement for starting on clear terrain
DELETE FROM TypeTags WHERE Tag = 'CLASS_HEAVY_CHARIOT' ;

-- Remove Anti-Cavalry and Anti-Anti-Cavalry abilities (we can add ABILITY_ANTI_CAVALRY to specific units later, not sure how a unit would be "anti-spear"...)
DELETE FROM TypeTags WHERE Type = 'ABILITY_ANTI_CAVALRY' OR Type = 'ABILITY_ANTI_SPEAR' ;

-- Remove the reveal stealth tag (we assigned our own)
DELETE FROM TypeTags WHERE Tag = 'CLASS_REVEAL_STEALTH' ;


-- Update vanilla REQSETS
UPDATE RequirementArguments SET Value = 'BW_PROMOTION_CLASS_RECON' WHERE Value = 'PROMOTION_CLASS_RECON' ;
UPDATE Units SET Combat = 0 WHERE PromotionClass = 'PROMOTION_CLASS_RECON' ;

-- Copy vanilla ability classes to BW (where the name is the same, e.g. Heavy Cavalry)
INSERT OR REPLACE INTO TypeTags (Type, Tag)
SELECT TypeTags.Type, 'BW_CLASS_' || BW_NewUnitClasses.ClassName 
FROM BW_NewUnitClasses JOIN TypeTags ON TypeTags.Tag LIKE '%' || BW_NewUnitClasses.ClassName || '%' 
WHERE BW_NewUnitClasses.ClassName != 'RECON' ;

-- Copy Ranged abilities to Land Ranged, then delete Ranged
INSERT OR REPLACE INTO TypeTags (Type, Tag)
SELECT Type, 'BW_CLASS_LAND_RANGED' FROM TypeTags WHERE Tag = 'CLASS_RANGED' ;
DELETE FROM TypeTags WHERE Tag = 'CLASS_RANGED' ;

-- Copy Melee abilities to Heavy Infantry, then delete Melee
INSERT OR REPLACE INTO TypeTags (Type, Tag)
SELECT Type, 'BW_CLASS_HEAVY_INFANTRY' FROM TypeTags WHERE Tag = 'CLASS_MELEE' ;
DELETE FROM TypeTags WHERE Tag = 'CLASS_MELEE' ;


-- Copy Heavy Infantry abilities to Light Infantry
INSERT OR REPLACE INTO TypeTags (Type, Tag)
SELECT Type, 'BW_CLASS_LIGHT_INFANTRY' FROM TypeTags WHERE Tag = 'BW_CLASS_HEAVY_INFANTRY' ;

-- Copy Light Infantry abilities to Monk
INSERT OR REPLACE INTO TypeTags (Type, Tag)
SELECT Type, 'BW_CLASS_MONK' FROM TypeTags WHERE Tag = 'BW_CLASS_LIGHT_INFANTRY' ;

-- Copy Naval Ranged abilities to Naval Bombard
INSERT OR REPLACE INTO TypeTags (Type, Tag)
SELECT Type, 'BW_CLASS_NAVAL_BOMBARD' FROM TypeTags WHERE Tag = 'BW_CLASS_NAVAL_RANGED' ;




-- Assign classes to units based on their (new) their PromotionClass value
INSERT OR REPLACE INTO TypeTags (Type, Tag)
SELECT UnitType, REPLACE(PromotionClass, 'PROMOTION_', '') FROM Units WHERE PromotionClass LIKE 'BW_%' ;

INSERT OR REPLACE INTO TypeTags (Type, Tag)
SELECT UnitType, 'BW_CLASS_RECON' FROM Units WHERE PromotionClass = 'PROMOTION_CLASS_RECON' ;


-- Reassign CLASS_AIRCRAFT to all units with DOMAIN_AIR
DELETE FROM TypeTags WHERE Tag = 'CLASS_AIRCRAFT' AND Type LIKE '%UNIT%' ;
INSERT INTO TypeTags (Type, Tag)
SELECT UnitType, 'CLASS_AIRCRAFT' FROM Units WHERE Domain = 'DOMAIN_AIR' ;

-- Reassign CLASS_ANTI_AIR to all units with AA CS
DELETE FROM TypeTags WHERE Tag = 'CLASS_ANTI_AIR' AND Type LIKE '%UNIT%' ;
INSERT INTO TypeTags (Type, Tag)
SELECT UnitType, 'CLASS_ANTI_AIR' FROM Units WHERE AntiAirCombat > 0 ;


-- Reassign DB classes
DELETE FROM TypeTags WHERE Tag = 'DB_CLASS_ALL' AND Type LIKE '%UNIT%' ;
INSERT OR IGNORE INTO TypeTags (Type, Tag)
  SELECT UnitType, 'DB_CLASS_ALL' FROM Units ;

DELETE FROM TypeTags WHERE Tag = 'DB_CLASS_LAND_COMBAT' AND Type LIKE '%UNIT%' ;
INSERT OR IGNORE INTO TypeTags (Type, Tag)
  SELECT UnitType, 'DB_CLASS_LAND_COMBAT' FROM Units WHERE FormationClass = 'FORMATION_CLASS_LAND_COMBAT' ;

DELETE FROM TypeTags WHERE Tag = 'DB_CLASS_NAVAL_COMBAT' AND Type LIKE '%UNIT%' ;
INSERT OR IGNORE INTO TypeTags (Type, Tag)
  SELECT UnitType, 'DB_CLASS_NAVAL_COMBAT' FROM Units WHERE FormationClass = 'FORMATION_CLASS_NAVAL' ;

DELETE FROM TypeTags WHERE Tag = 'DB_CLASS_AIR_COMBAT' AND Type LIKE '%UNIT%' ;
INSERT OR IGNORE INTO TypeTags (Type, Tag)
  SELECT UnitType, 'DB_CLASS_AIR_COMBAT' FROM Units WHERE FormationClass = 'FORMATION_CLASS_AIR' ;

DELETE FROM TypeTags WHERE Tag = 'DB_CLASS_LAND_MELEE_ATTACKER' AND Type LIKE '%UNIT%' ;
INSERT OR IGNORE INTO TypeTags (Type, Tag)
  SELECT UnitType, 'DB_CLASS_LAND_MELEE_ATTACKER' FROM Units WHERE FormationClass = 'FORMATION_CLASS_LAND_COMBAT' AND Combat > 0 AND RangedCombat = 0 AND Bombard = 0 ;

DELETE FROM TypeTags WHERE Tag = 'DB_CLASS_LAND_RANGED_ATTACKER' AND Type LIKE '%UNIT%' ;
INSERT OR IGNORE INTO TypeTags (Type, Tag)
  SELECT UnitType, 'DB_CLASS_LAND_RANGED_ATTACKER' FROM Units WHERE FormationClass = 'FORMATION_CLASS_LAND_COMBAT' AND RangedCombat > 0 ;

DELETE FROM TypeTags WHERE Tag = 'DB_CLASS_LAND_BOMBARD_ATTACKER' AND Type LIKE '%UNIT%' ;
INSERT OR IGNORE INTO TypeTags (Type, Tag)
  SELECT UnitType, 'DB_CLASS_LAND_BOMBARD_ATTACKER' FROM Units WHERE FormationClass = 'FORMATION_CLASS_LAND_COMBAT' AND Bombard > 0 ;

DELETE FROM TypeTags WHERE Tag = 'DB_CLASS_NAVAL_MELEE_ATTACKER' AND Type LIKE '%UNIT%' ;
INSERT OR IGNORE INTO TypeTags (Type, Tag)
  SELECT UnitType, 'DB_CLASS_NAVAL_MELEE_ATTACKER' FROM Units WHERE FormationClass = 'FORMATION_CLASS_NAVAL' AND Combat > 0 AND RangedCombat = 0 AND Bombard = 0 ;

DELETE FROM TypeTags WHERE Tag = 'DB_CLASS_NAVAL_RANGED_ATTACKER' AND Type LIKE '%UNIT%' ;
INSERT OR IGNORE INTO TypeTags (Type, Tag)
  SELECT UnitType, 'DB_CLASS_NAVAL_RANGED_ATTACKER' FROM Units WHERE FormationClass = 'FORMATION_CLASS_NAVAL' AND RangedCombat > 0 ;

DELETE FROM TypeTags WHERE Tag = 'DB_CLASS_NAVAL_BOMBARD_ATTACKER' AND Type LIKE '%UNIT%' ;
INSERT OR IGNORE INTO TypeTags (Type, Tag)
  SELECT UnitType, 'DB_CLASS_NAVAL_BOMBARD_ATTACKER' FROM Units WHERE FormationClass = 'FORMATION_CLASS_NAVAL' AND Bombard > 0 ;

