INSERT INTO Types 
(Type, Kind) 
VALUES 
('RW_CLASS_HEAVY_INFANTRY', 'ABILITY_CLASS'),
('RW_CLASS_LIGHT_INFANTRY', 'ABILITY_CLASS')
 ;

-- Rename Melee class abilities to Heavy Infantry class
UPDATE TypeTags SET Tag = 'RW_CLASS_HEAVY_INFANTRY' WHERE Tag = 'CLASS_MELEE' ;

-- Copy Heavy Infantry class abilities to Light Infantry class
INSERT INTO TypeTags (Type, Tag)
SELECT Type, 'RW_CLASS_LIGHT_INFANTRY' FROM TypeTags WHERE Tag = 'RW_CLASS_HEAVY_INFANTRY' ;


-- Assign CLASS_ANTI_AIR to all units with AA CS
INSERT INTO TypeTags (Type, Tag)
SELECT UnitType, 'CLASS_ANTI_AIR' FROM Units WHERE AntiAirCombat > 0 ;

-- Assign classes to units from PromotionClass
INSERT INTO TypeTags (Type, Tag)
SELECT UnitType, REPLACE(PromotionClass, 'PROMOTION_', '') FROM Units WHERE PromotionClass != '' ;

