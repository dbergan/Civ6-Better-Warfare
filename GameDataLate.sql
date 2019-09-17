INSERT INTO Tags (Tag, Vocabulary)
SELECT 'BW_CLASS_' || ClassName, 'ABILITY_CLASS' FROM BW_NewUnitClasses ;


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




-- Assign classes to units from their PromotionClass
INSERT OR REPLACE INTO TypeTags (Type, Tag)
SELECT UnitType, REPLACE(PromotionClass, 'PROMOTION_', '') FROM Units WHERE PromotionClass LIKE 'BW_%' ;

/*
-- Assign CLASS_AIRCRAFT to all units with DOMAIN_AIR
DELETE FROM TypeTags WHERE Tag = 'CLASS_AIRCRAFT' ;
INSERT INTO TypeTags (Type, Tag)
SELECT UnitType, 'CLASS_AIRCRAFT' FROM Units WHERE Domain = 'DOMAIN_AIR' ;

-- Assign CLASS_ANTI_AIR to all units with AA CS
DELETE FROM TypeTags WHERE Tag = 'CLASS_ANTI_AIR' ;
INSERT INTO TypeTags (Type, Tag)
SELECT UnitType, 'CLASS_ANTI_AIR' FROM Units WHERE AntiAirCombat > 0 ;
*/