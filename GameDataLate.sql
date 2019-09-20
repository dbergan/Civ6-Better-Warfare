-- Remove all MandatoryObsoletes
UPDATE Units SET MandatoryObsoleteTech = NULL, MandatoryObsoleteCivic = NULL ;

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


-- Copy vanilla ability classes to BW (where the name is the same, e.g. Heavy Cavalry)
INSERT OR REPLACE INTO TypeTags (Type, Tag)
SELECT TypeTags.Type, 'BW_CLASS_' || BW_NewUnitClasses.ClassName 
FROM BW_NewUnitClasses JOIN TypeTags ON TypeTags.Tag LIKE '%' || BW_NewUnitClasses.ClassName || '%' ;

-- Reclass Melee abilities to Heavy Infantry
UPDATE TypeTags SET Tag = 'BW_CLASS_HEAVY_INFANTRY' WHERE Tag = 'CLASS_MELEE' ;

-- Copy Heavy Infantry abilities to Light Infantry
DELETE FROM TypeTags WHERE Tag = 'BW_CLASS_LIGHT_INFANTRY' ;
INSERT INTO TypeTags (Type, Tag)
SELECT Type, 'BW_CLASS_LIGHT_INFANTRY' FROM TypeTags WHERE Tag = 'BW_CLASS_HEAVY_INFANTRY' ;

-- Copy Light Infantry abilities to Monk
DELETE FROM TypeTags WHERE Tag = 'BW_CLASS_MONK' ;
INSERT INTO TypeTags (Type, Tag)
SELECT Type, 'BW_CLASS_MONK' FROM TypeTags WHERE Tag = 'BW_CLASS_LIGHT_INFANTRY' ;

-- Copy Naval Ranged abilities to Naval Bombard
DELETE FROM TypeTags WHERE Tag = 'BW_CLASS_NAVAL_BOMBARD' ;
INSERT INTO TypeTags (Type, Tag)
SELECT Type, 'BW_CLASS_NAVAL_BOMBARD' FROM TypeTags WHERE Tag = 'BW_CLASS_NAVAL_RANGED' ;




-- Assign classes to units based on their (new) their PromotionClass value
INSERT OR REPLACE INTO TypeTags (Type, Tag)
SELECT UnitType, REPLACE(PromotionClass, 'PROMOTION_', '') FROM Units WHERE PromotionClass LIKE 'BW_%' ;

INSERT OR REPLACE INTO TypeTags (Type, Tag)
SELECT UnitType, 'BW_CLASS_RECON' FROM Units WHERE PromotionClass = 'PROMOTION_CLASS_RECON' ;

-- Assign CLASS_AIRCRAFT to all units with DOMAIN_AIR
DELETE FROM TypeTags WHERE Tag = 'CLASS_AIRCRAFT' ;
INSERT INTO TypeTags (Type, Tag)
SELECT UnitType, 'CLASS_AIRCRAFT' FROM Units WHERE Domain = 'DOMAIN_AIR' ;

-- Assign CLASS_ANTI_AIR to all units with AA CS
DELETE FROM TypeTags WHERE Tag = 'CLASS_ANTI_AIR' ;
INSERT INTO TypeTags (Type, Tag)
SELECT UnitType, 'CLASS_ANTI_AIR' FROM Units WHERE AntiAirCombat > 0 ;
