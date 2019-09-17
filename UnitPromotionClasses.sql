INSERT INTO Types (Type, Kind) 
VALUES ('BW_TEST', 'KIND_PROMOTION_CLASS') ;


INSERT INTO Types (Type, Kind) 
SELECT 'BW_PROMOTION_CLASS_' || ClassName, 'KIND_PROMOTION_CLASS' FROM BW_NewUnitClasses ;

INSERT INTO UnitPromotionClasses (PromotionClassType, Name) 
SELECT 'BW_PROMOTION_CLASS_' || ClassName, 'BW_PROMOTION_CLASS_' || ClassName || '_NAME' FROM BW_NewUnitClasses ;


UPDATE UnitPromotions SET PromotionClass = 'BW_PROMOTION_CLASS_AIR_ATTACK' WHERE PromotionClass = 'PROMOTION_CLASS_AIR_ATTACK' ;
UPDATE UnitPromotions SET PromotionClass = 'BW_PROMOTION_CLASS_AIR_BOMBER' WHERE PromotionClass = 'PROMOTION_CLASS_AIR_BOMBER' ;
UPDATE UnitPromotions SET PromotionClass = 'BW_PROMOTION_CLASS_AIR_FIGHTER' WHERE PromotionClass = 'PROMOTION_CLASS_AIR_FIGHTER' ;
DELETE FROM UnitPromotions WHERE PromotionClass = 'PROMOTION_CLASS_ANTI_CAVALRY' ;
DELETE FROM UnitPromotions WHERE PromotionClass = 'PROMOTION_CLASS_AUTOMATIC_GUN' ;
UPDATE UnitPromotions SET PromotionClass = 'BW_PROMOTION_CLASS_GIANT_DEATH_ROBOT' WHERE PromotionClass = 'PROMOTION_CLASS_GIANT_DEATH_ROBOT' ;
UPDATE UnitPromotions SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_CAVALRY' WHERE PromotionClass = 'PROMOTION_CLASS_HEAVY_CAVALRY' ;
UPDATE UnitPromotions SET PromotionClass = 'BW_PROMOTION_CLASS_LIGHT_CAVALRY' WHERE PromotionClass = 'PROMOTION_CLASS_LIGHT_CAVALRY' ;
UPDATE UnitPromotions SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY' WHERE PromotionClass = 'PROMOTION_CLASS_MELEE' ;
UPDATE UnitPromotions SET PromotionClass = 'BW_PROMOTION_CLASS_MARINE' WHERE PromotionClass = 'PROMOTION_CLASS_MARINE' ;
UPDATE UnitPromotions SET PromotionClass = 'BW_PROMOTION_CLASS_MONK' WHERE PromotionClass = 'PROMOTION_CLASS_MONK' ;
UPDATE UnitPromotions SET PromotionClass = 'BW_PROMOTION_CLASS_NAVAL_BOMBARD' WHERE PromotionClass = 'PROMOTION_CLASS_NAVAL_BOMBARD' ;
UPDATE UnitPromotions SET PromotionClass = 'BW_PROMOTION_CLASS_NAVAL_CARRIER' WHERE PromotionClass = 'PROMOTION_CLASS_NAVAL_CARRIER' ;
UPDATE UnitPromotions SET PromotionClass = 'BW_PROMOTION_CLASS_NAVAL_MELEE' WHERE PromotionClass = 'PROMOTION_CLASS_NAVAL_MELEE' ;
UPDATE UnitPromotions SET PromotionClass = 'BW_PROMOTION_CLASS_NAVAL_RAIDER' WHERE PromotionClass = 'PROMOTION_CLASS_NAVAL_RAIDER' ;
UPDATE UnitPromotions SET PromotionClass = 'BW_PROMOTION_CLASS_NAVAL_RANGED' WHERE PromotionClass = 'PROMOTION_CLASS_NAVAL_RANGED' ;
UPDATE UnitPromotions SET PromotionClass = 'BW_PROMOTION_CLASS_RANGED' WHERE PromotionClass = 'PROMOTION_CLASS_RANGED' ;
UPDATE UnitPromotions SET PromotionClass = 'BW_PROMOTION_CLASS_RECON' WHERE PromotionClass = 'PROMOTION_CLASS_RECON' ;
UPDATE UnitPromotions SET PromotionClass = 'BW_PROMOTION_CLASS_SIEGE' WHERE PromotionClass = 'PROMOTION_CLASS_SIEGE' ;


INSERT INTO UnitPromotions (UnitPromotionType, Name, Description, Level, Specialization, PromotionClass, Column) 
SELECT UnitPromotionType, Name, Description, Level, Specialization, 'BW_PROMOTION_CLASS_ANTIAIR', Column FROM UnitPromotions WHERE PromotionClass = 'BW_PROMOTION_CLASS_RANGED' ;

INSERT INTO UnitPromotions (UnitPromotionType, Name, Description, Level, Specialization, PromotionClass, Column) 
SELECT UnitPromotionType, Name, Description, Level, Specialization, 'BW_PROMOTION_CLASS_DEFENSIVE_GUN', Column FROM UnitPromotions WHERE PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY' ;

INSERT INTO UnitPromotions (UnitPromotionType, Name, Description, Level, Specialization, PromotionClass, Column) 
SELECT UnitPromotionType, Name, Description, Level, Specialization, 'BW_PROMOTION_CLASS_ELEPHANT', Column FROM UnitPromotions WHERE PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_CAVALRY' ;

INSERT INTO UnitPromotions (UnitPromotionType, Name, Description, Level, Specialization, PromotionClass, Column) 
SELECT UnitPromotionType, Name, Description, Level, Specialization, 'BW_PROMOTION_CLASS_LIGHT_INFANTRY', Column FROM UnitPromotions WHERE PromotionClass = 'BW_PROMOTION_CLASS_RANGED' ;