INSERT INTO Types (Type, Kind)
SELECT 'BW_CLASS_' || ClassName, 'ABILITY_CLASS' FROM BW_NewUnitClasses ;


-- Rename Melee class abilities to Heavy Infantry class
UPDATE TypeTags SET Tag = 'BW_CLASS_HEAVY_INFANTRY' WHERE Tag = 'CLASS_MELEE' ;

-- Copy Heavy Infantry class abilities to Light Infantry class
INSERT INTO TypeTags (Type, Tag)
SELECT Type, 'BW_CLASS_LIGHT_INFANTRY' FROM TypeTags WHERE Tag = 'BW_CLASS_HEAVY_INFANTRY' ;

-- Copy Light Infantry class abilities to Monk class
INSERT INTO TypeTags (Type, Tag)
SELECT Type, 'BW_CLASS_MONK' FROM TypeTags WHERE Tag = 'BW_CLASS_LIGHT_INFANTRY' ;

-- Copy Naval Ranged class abilities to Naval Bombard class
INSERT INTO TypeTags (Type, Tag)
SELECT Type, 'BW_CLASS_NAVAL_BOMBARD' FROM TypeTags WHERE Tag = 'BW_CLASS_NAVAL_RANGED' ;





-- Assign classes to units from PromotionClass
INSERT INTO TypeTags (Type, Tag)
SELECT UnitType, REPLACE(PromotionClass, 'PROMOTION_', '') FROM Units WHERE PromotionClass != '' ;

-- Assign CLASS_AIRCRAFT to all units with DOMAIN_AIR
INSERT INTO TypeTags (Type, Tag)
SELECT UnitType, 'CLASS_AIRCRAFT' FROM Units WHERE Domain = 'DOMAIN_AIR' ;

-- Assign CLASS_ANTI_AIR to all units with AA CS
INSERT INTO TypeTags (Type, Tag)
SELECT UnitType, 'CLASS_ANTI_AIR' FROM Units WHERE AntiAirCombat > 0 ;


