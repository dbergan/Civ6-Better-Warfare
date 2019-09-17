UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_RECON', BaseMoves = 3, Combat = 10, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 30, Maintenance = 0, StrategicResource = NULL WHERE UnitType = 'UNIT_SCOUT' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_RECON', BaseMoves = 3, Combat = 20, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 40, Maintenance = 0, StrategicResource = NULL WHERE UnitType = 'UNIT_CREE_OKIHTCITAW' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_RECON', BaseMoves = 4, Combat = 10, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 30, Maintenance = 0, StrategicResource = NULL WHERE UnitType = 'UNIT_INCA_CHASQUI' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_LIGHT_INFANTRY', BaseMoves = 2, Combat = 10, RangedCombat = 20, Bombard = 0, Range = 1, AntiAirCombat = 0, Cost = 35, Maintenance = 0, StrategicResource = NULL WHERE UnitType = 'UNIT_SLINGER' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_LIGHT_CAVALRY', BaseMoves = 3, Combat = 10, RangedCombat = 15, Bombard = 0, Range = 1, AntiAirCombat = 0, Cost = 35, Maintenance = 1, StrategicResource = NULL WHERE UnitType = 'UNIT_BARBARIAN_HORSE_ARCHER' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_CAVALRY', BaseMoves = 2, Combat = 20, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 40, Maintenance = 1, StrategicResource = NULL WHERE UnitType = 'UNIT_BARBARIAN_HORSEMAN' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY', BaseMoves = 2, Combat = 30, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 40, Maintenance = 0, StrategicResource = NULL WHERE UnitType = 'UNIT_WARRIOR' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY', BaseMoves = 2, Combat = 38, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 65, Maintenance = 0, StrategicResource = NULL WHERE UnitType = 'UNIT_AZTEC_EAGLE_WARRIOR' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_RANGED', BaseMoves = 2, Combat = 10, RangedCombat = 20, Bombard = 0, Range = 2, AntiAirCombat = 0, Cost = 60, Maintenance = 1, StrategicResource = NULL WHERE UnitType = 'UNIT_ARCHER' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_RANGED', BaseMoves = 3, Combat = 12, RangedCombat = 25, Bombard = 0, Range = 2, AntiAirCombat = 0, Cost = 70, Maintenance = 1, StrategicResource = NULL WHERE UnitType = 'UNIT_NUBIAN_PITATI' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY', BaseMoves = 2, Combat = 40, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 65, Maintenance = 1, StrategicResource = NULL WHERE UnitType = 'UNIT_SPEARMAN' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY', BaseMoves = 2, Combat = 40, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 65, Maintenance = 1, StrategicResource = NULL WHERE UnitType = 'UNIT_GREEK_HOPLITE' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY', BaseMoves = 2, Combat = 40, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 65, Maintenance = 1, StrategicResource = NULL WHERE UnitType = 'UNIT_SUMERIAN_PHALANX' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_CAVALRY', BaseMoves = 2, Combat = 30, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 65, Maintenance = 1, StrategicResource = 'RESOURCE_HORSES' WHERE UnitType = 'UNIT_HEAVY_CHARIOT' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_CAVALRY', BaseMoves = 2, Combat = 32, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 55, Maintenance = 0, StrategicResource = NULL WHERE UnitType = 'UNIT_SUMERIAN_WAR_CART' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_SUPPORT', BaseMoves = 2, Combat = 0, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 65, Maintenance = 1, StrategicResource = NULL WHERE UnitType = 'UNIT_BATTERING_RAM' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_LIGHT_CAVALRY', BaseMoves = 2, Combat = 10, RangedCombat = 20, Bombard = 0, Range = 1, AntiAirCombat = 0, Cost = 65, Maintenance = 1, StrategicResource = 'RESOURCE_HORSES' WHERE UnitType = 'UNIT_CHARIOT_ARCHER' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_LIGHT_CAVALRY', BaseMoves = 2, Combat = 20, RangedCombat = 30, Bombard = 0, Range = 1, AntiAirCombat = 0, Cost = 90, Maintenance = 1, StrategicResource = 'RESOURCE_HORSES' WHERE UnitType = 'UNIT_EGYPTIAN_CHARIOT_ARCHER' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_SUPPORT', BaseMoves = 2, Combat = 0, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 100, Maintenance = 3, StrategicResource = NULL WHERE UnitType = 'UNIT_NORWEGIAN_ULFHEDNAR' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_SUPPORT', BaseMoves = 2, Combat = 0, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 120, Maintenance = 3, StrategicResource = NULL WHERE UnitType = 'UNIT_KONGO_MEDICINE_MAN' ;

UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_CAVALRY', BaseMoves = 3, Combat = 36, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 80, Maintenance = 2, StrategicResource = 'RESOURCE_HORSES' WHERE UnitType = 'UNIT_HORSEMAN' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_CAVALRY', BaseMoves = 3, Combat = 36, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 100, Maintenance = 2, StrategicResource = 'RESOURCE_HORSES' WHERE UnitType = 'UNIT_MACEDONIAN_HETAIROI' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_CAVALRY', BaseMoves = 3, Combat = 36, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 80, Maintenance = 2, StrategicResource = 'RESOURCE_HORSES' WHERE UnitType = 'UNIT_ROMAN_EQUITE' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_RANGED', BaseMoves = 2, Combat = 22, RangedCombat = 32, Bombard = 0, Range = 2, AntiAirCombat = 0, Cost = 85, Maintenance = 2, StrategicResource = NULL WHERE UnitType = 'UNIT_COMPOSITE_BOWMAN' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY', BaseMoves = 2, Combat = 36, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 80, Maintenance = 2, StrategicResource = NULL WHERE UnitType = 'UNIT_HEAVY_INFANTRY' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY', BaseMoves = 2, Combat = 36, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 90, Maintenance = 2, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_SWORDSMAN' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY', BaseMoves = 2, Combat = 34, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 90, Maintenance = 2, StrategicResource = NULL WHERE UnitType = 'UNIT_AZTEC_JAGUAR' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY', BaseMoves = 2, Combat = 36, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 90, Maintenance = 2, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_EGYPTIAN_KHOPESH' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY', BaseMoves = 2, Combat = 36, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 110, Maintenance = 2, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_KONGO_SHIELD_BEARER' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY', BaseMoves = 2, Combat = 36, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 100, Maintenance = 2, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_MACEDONIAN_HYPASPIST' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY', BaseMoves = 2, Combat = 36, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 120, Maintenance = 0, StrategicResource = NULL WHERE UnitType = 'UNIT_MAORI_TOA' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY', BaseMoves = 2, Combat = 30, RangedCombat = 25, Bombard = 0, Range = 2, AntiAirCombat = 0, Cost = 100, Maintenance = 2, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_PERSIAN_IMMORTAL' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY', BaseMoves = 2, Combat = 40, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 110, Maintenance = 2, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_ROMAN_LEGION' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_MONK', BaseMoves = 3, Combat = 35, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 100, Maintenance = 2, StrategicResource = NULL WHERE UnitType = 'UNIT_WARRIOR_MONK' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_MONK', BaseMoves = 3, Combat = 40, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 80, Maintenance = 2, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_INDONESIAN_KRIS_SWORDSMAN' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_LIGHT_CAVALRY', BaseMoves = 3, Combat = 15, RangedCombat = 25, Bombard = 0, Range = 1, AntiAirCombat = 0, Cost = 80, Maintenance = 2, StrategicResource = 'RESOURCE_HORSES' WHERE UnitType = 'UNIT_HORSE_ARCHER' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_LIGHT_CAVALRY', BaseMoves = 4, Combat = 15, RangedCombat = 25, Bombard = 0, Range = 1, AntiAirCombat = 0, Cost = 100, Maintenance = 2, StrategicResource = 'RESOURCE_HORSES' WHERE UnitType = 'UNIT_SCYTHIAN_HORSE_ARCHER' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_LIGHT_CAVALRY', BaseMoves = 3, Combat = 15, RangedCombat = 25, Bombard = 0, Range = 1, AntiAirCombat = 0, Cost = 80, Maintenance = 2, StrategicResource = NULL WHERE UnitType = 'UNIT_ARABIAN_CAMEL_ARCHER' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_LIGHT_CAVALRY', BaseMoves = 4, Combat = 15, RangedCombat = 30, Bombard = 0, Range = 1, AntiAirCombat = 0, Cost = 80, Maintenance = 2, StrategicResource = 'RESOURCE_HORSES' WHERE UnitType = 'UNIT_PHOENICIA_NUMIDIAN_CAVALRY' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_LIGHT_INFANTRY', BaseMoves = 2, Combat = 25, RangedCombat = 29, Bombard = 0, Range = 1, AntiAirCombat = 0, Cost = 100, Maintenance = 2, StrategicResource = NULL WHERE UnitType = 'UNIT_PELTAST' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_LIGHT_INFANTRY', BaseMoves = 2, Combat = 28, RangedCombat = 33, Bombard = 0, Range = 1, AntiAirCombat = 0, Cost = 60, Maintenance = 2, StrategicResource = NULL WHERE UnitType = 'UNIT_GREEK_PELTAST' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_LIGHT_INFANTRY', BaseMoves = 2, Combat = 20, RangedCombat = 25, Bombard = 0, Range = 1, AntiAirCombat = 0, Cost = 60, Maintenance = 2, StrategicResource = NULL WHERE UnitType = 'UNIT_ZULU_ASSEGAI' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_SUPPORT', BaseMoves = 2, Combat = 0, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 100, Maintenance = 3, StrategicResource = NULL WHERE UnitType = 'UNIT_CHINESE_SHIGONG' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_CAVALRY', BaseMoves = 2, Combat = 40, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 100, Maintenance = 2, StrategicResource = 'RESOURCE_HORSES' WHERE UnitType = 'UNIT_ARMORED_HORSEMAN' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_CAVALRY', BaseMoves = 2, Combat = 40, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 100, Maintenance = 2, StrategicResource = 'RESOURCE_HORSES' WHERE UnitType = 'UNIT_PERSIAN_CATAPHRACT' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_ELEPHANT', BaseMoves = 2, Combat = 40, RangedCombat = 25, Bombard = 0, Range = 1, AntiAirCombat = 0, Cost = 120, Maintenance = 2, StrategicResource = NULL WHERE UnitType = 'UNIT_INDIAN_VARU' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_ELEPHANT', BaseMoves = 2, Combat = 40, RangedCombat = 25, Bombard = 0, Range = 1, AntiAirCombat = 0, Cost = 120, Maintenance = 2, StrategicResource = NULL WHERE UnitType = 'UNIT_NUBIAN_AFRICAN_FOREST_ELEPHANT' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_SIEGE', BaseMoves = 2, Combat = 23, RangedCombat = 0, Bombard = 35, Range = 1, AntiAirCombat = 0, Cost = 120, Maintenance = 2, StrategicResource = NULL WHERE UnitType = 'UNIT_CATAPULT' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_SIEGE', BaseMoves = 2, Combat = 23, RangedCombat = 0, Bombard = 35, Range = 1, AntiAirCombat = 0, Cost = 120, Maintenance = 2, StrategicResource = NULL WHERE UnitType = 'UNIT_MACEDONIAN_BALLISTA' ;

UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_SUPPORT', BaseMoves = 2, Combat = 0, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 100, Maintenance = 2, StrategicResource = NULL WHERE UnitType = 'UNIT_SIEGE_TOWER' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_RECON', BaseMoves = 3, Combat = 20, RangedCombat = 30, Bombard = 0, Range = 1, AntiAirCombat = 0, Cost = 150, Maintenance = 2, StrategicResource = NULL WHERE UnitType = 'UNIT_SKIRMISHER' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_RECON', BaseMoves = 3, Combat = 20, RangedCombat = 40, Bombard = 0, Range = 1, AntiAirCombat = 0, Cost = 165, Maintenance = 2, StrategicResource = NULL WHERE UnitType = 'UNIT_INCA_WARAKAQ' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY', BaseMoves = 2, Combat = 45, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 140, Maintenance = 2, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_GEORGIAN_KHEVSURETI' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY', BaseMoves = 2, Combat = 44, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 160, Maintenance = 2, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_LONGSWORDSMAN' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY', BaseMoves = 2, Combat = 46, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 160, Maintenance = 2, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_ELEANOR_TEMPLAR' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY', BaseMoves = 2, Combat = 48, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 160, Maintenance = 2, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_JAPANESE_SAMURAI' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY', BaseMoves = 2, Combat = 40, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 160, Maintenance = 2, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_NORWEGIAN_BERSERKER' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY', BaseMoves = 2, Combat = 46, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 160, Maintenance = 2, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_SCOTTISH_GALLOWGLASS' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY', BaseMoves = 2, Combat = 42, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 180, Maintenance = 1, StrategicResource = NULL WHERE UnitType = 'UNIT_JAPANESE_SOHEI' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_RANGED', BaseMoves = 2, Combat = 30, RangedCombat = 50, Bombard = 0, Range = 1, AntiAirCombat = 0, Cost = 160, Maintenance = 3, StrategicResource = NULL WHERE UnitType = 'UNIT_CHINESE_CROUCHING_TIGER' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_SUPPORT', BaseMoves = 2, Combat = 0, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 170, Maintenance = 2, StrategicResource = NULL WHERE UnitType = 'UNIT_MILITARY_ENGINEER' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_LIGHT_INFANTRY', BaseMoves = 2, Combat = 33, RangedCombat = 37, Bombard = 0, Range = 1, AntiAirCombat = 0, Cost = 180, Maintenance = 3, StrategicResource = NULL WHERE UnitType = 'UNIT_AXE_THROWER' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_RANGED', BaseMoves = 2, Combat = 30, RangedCombat = 40, Bombard = 0, Range = 2, AntiAirCombat = 0, Cost = 180, Maintenance = 3, StrategicResource = NULL WHERE UnitType = 'UNIT_CROSSBOWMAN' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_RANGED', BaseMoves = 2, Combat = 30, RangedCombat = 40, Bombard = 0, Range = 2, AntiAirCombat = 0, Cost = 180, Maintenance = 3, StrategicResource = NULL WHERE UnitType = 'UNIT_ENGLISH_LONGBOWMAN' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_RANGED', BaseMoves = 2, Combat = 30, RangedCombat = 40, Bombard = 0, Range = 2, AntiAirCombat = 0, Cost = 180, Maintenance = 3, StrategicResource = NULL WHERE UnitType = 'UNIT_MALI_SOFA' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_LIGHT_CAVALRY', BaseMoves = 4, Combat = 30, RangedCombat = 40, Bombard = 0, Range = 2, AntiAirCombat = 0, Cost = 180, Maintenance = 3, StrategicResource = 'RESOURCE_HORSES' WHERE UnitType = 'UNIT_HUNGARY_KALANDOZO' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_LIGHT_CAVALRY', BaseMoves = 4, Combat = 30, RangedCombat = 40, Bombard = 0, Range = 2, AntiAirCombat = 0, Cost = 180, Maintenance = 3, StrategicResource = 'RESOURCE_HORSES' WHERE UnitType = 'UNIT_MONGOLIAN_KESHIG' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_LIGHT_CAVALRY', BaseMoves = 4, Combat = 30, RangedCombat = 40, Bombard = 0, Range = 2, AntiAirCombat = 0, Cost = 200, Maintenance = 3, StrategicResource = 'RESOURCE_HORSES' WHERE UnitType = 'UNIT_MOUNTED_CROSSBOW' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY', BaseMoves = 2, Combat = 41, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 180, Maintenance = 2, StrategicResource = NULL WHERE UnitType = 'UNIT_PIKEMAN' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY', BaseMoves = 2, Combat = 45, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 80, Maintenance = 3, StrategicResource = NULL WHERE UnitType = 'UNIT_GERMAN_LANDSKNECHT' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY', BaseMoves = 2, Combat = 45, RangedCombat = 33, Bombard = 0, Range = 1, AntiAirCombat = 0, Cost = 160, Maintenance = 2, StrategicResource = NULL WHERE UnitType = 'UNIT_MAPUCHE_GUERILLA' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY', BaseMoves = 2, Combat = 41, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 125, Maintenance = 1, StrategicResource = NULL WHERE UnitType = 'UNIT_ZULU_IMPI' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_SIEGE', BaseMoves = 2, Combat = 38, RangedCombat = 0, Bombard = 50, Range = 2, AntiAirCombat = 0, Cost = 200, Maintenance = 3, StrategicResource = NULL WHERE UnitType = 'UNIT_MONGOLIAN_HUI_HUI_PAO' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_SIEGE', BaseMoves = 2, Combat = 33, RangedCombat = 0, Bombard = 45, Range = 2, AntiAirCombat = 0, Cost = 200, Maintenance = 3, StrategicResource = NULL WHERE UnitType = 'UNIT_TREBUCHET' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_CAVALRY', BaseMoves = 5, Combat = 44, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 200, Maintenance = 3, StrategicResource = 'RESOURCE_HORSES' WHERE UnitType = 'UNIT_COURSER' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_CAVALRY', BaseMoves = 4, Combat = 44, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 150, Maintenance = 2, StrategicResource = 'RESOURCE_HORSES' WHERE UnitType = 'UNIT_RUSSIAN_DRUZHINA' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_CAVALRY', BaseMoves = 5, Combat = 47, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 205, Maintenance = 3, StrategicResource = 'RESOURCE_HORSES' WHERE UnitType = 'UNIT_HUNGARY_BLACK_ARMY' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_SIEGE', BaseMoves = 2, Combat = 33, RangedCombat = 0, Bombard = 45, Range = 2, AntiAirCombat = 0, Cost = 220, Maintenance = 3, StrategicResource = NULL WHERE UnitType = 'UNIT_KHMER_DOMREY' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_CAVALRY', BaseMoves = 4, Combat = 48, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 220, Maintenance = 4, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_KNIGHT' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_CAVALRY', BaseMoves = 4, Combat = 48, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 220, Maintenance = 4, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_ARABIAN_MAMLUK' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_CAVALRY', BaseMoves = 4, Combat = 50, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 200, Maintenance = 3, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_FRENCH_GENDARME' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_CAVALRY', BaseMoves = 4, Combat = 48, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 180, Maintenance = 3, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_GEORGIAN_TADZREULI' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_CAVALRY', BaseMoves = 4, Combat = 49, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 220, Maintenance = 4, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_MALI_MANDEKALU_CAVALRY' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_CAVALRY', BaseMoves = 4, Combat = 50, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 220, Maintenance = 4, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_OTTOMAN_SIPAHI' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_CAVALRY', BaseMoves = 4, Combat = 48, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 200, Maintenance = 3, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_SCYTHIAN_AMAZON' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_CAVALRY', BaseMoves = 4, Combat = 55, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 250, Maintenance = 3, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_POLISH_HUSSAR' ;

UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_RANGED', BaseMoves = 2, Combat = 40, RangedCombat = 50, Bombard = 0, Range = 2, AntiAirCombat = 0, Cost = 230, Maintenance = 4, StrategicResource = NULL WHERE UnitType = 'UNIT_CULVERIN' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY', BaseMoves = 2, Combat = 55, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 240, Maintenance = 4, StrategicResource = 'RESOURCE_NITER' WHERE UnitType = 'UNIT_MUSKETMAN' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY', BaseMoves = 2, Combat = 55, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 120, Maintenance = 2, StrategicResource = 'RESOURCE_NITER' WHERE UnitType = 'UNIT_DUTCH_SCHUTTERIJ' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY', BaseMoves = 2, Combat = 55, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 250, Maintenance = 4, StrategicResource = 'RESOURCE_NITER' WHERE UnitType = 'UNIT_SPANISH_CONQUISTADOR' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY', BaseMoves = 2, Combat = 60, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 120, Maintenance = 4, StrategicResource = 'RESOURCE_NITER' WHERE UnitType = 'UNIT_SULEIMAN_JANISSARY' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_DEFENSIVE_GUN', BaseMoves = 2, Combat = 43, RangedCombat = 47, Bombard = 0, Range = 1, AntiAirCombat = 0, Cost = 240, Maintenance = 3, StrategicResource = NULL WHERE UnitType = 'UNIT_ARQUEBUSIER' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY', BaseMoves = 2, Combat = 55, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 250, Maintenance = 4, StrategicResource = NULL WHERE UnitType = 'UNIT_PIKE_AND_SHOT' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY', BaseMoves = 2, Combat = 60, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 250, Maintenance = 4, StrategicResource = NULL WHERE UnitType = 'UNIT_SPANISH_TERCIO' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY', BaseMoves = 3, Combat = 62, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 300, Maintenance = 4, StrategicResource = NULL WHERE UnitType = 'UNIT_SWEDEN_CAROLEAN' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_LIGHT_CAVALRY', BaseMoves = 4, Combat = 52, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 250, Maintenance = 3, StrategicResource = 'RESOURCE_NITER' WHERE UnitType = 'UNIT_HARQUEBUSIER' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_LIGHT_CAVALRY', BaseMoves = 4, Combat = 55, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 250, Maintenance = 3, StrategicResource = NULL WHERE UnitType = 'UNIT_MAPUCHE_MALON_RAIDER' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_CAVALRY', BaseMoves = 4, Combat = 56, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 260, Maintenance = 4, StrategicResource = 'RESOURCE_NITER' WHERE UnitType = 'UNIT_REITER' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_SIEGE', BaseMoves = 2, Combat = 43, RangedCombat = 0, Bombard = 55, Range = 2, AntiAirCombat = 0, Cost = 280, Maintenance = 4, StrategicResource = 'RESOURCE_NITER' WHERE UnitType = 'UNIT_BOMBARD' ;

UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_SUPPORT', BaseMoves = 2, Combat = 0, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 240, Maintenance = 2, StrategicResource = NULL WHERE UnitType = 'UNIT_OBSERVATION_BALLOON' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY', BaseMoves = 2, Combat = 62, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 300, Maintenance = 4, StrategicResource = NULL WHERE UnitType = 'UNIT_LINE_INFANTRY' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY', BaseMoves = 2, Combat = 62, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 320, Maintenance = 4, StrategicResource = 'RESOURCE_NITER' WHERE UnitType = 'UNIT_RIFLEMAN' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_DEFENSIVE_GUN', BaseMoves = 2, Combat = 53, RangedCombat = 57, Bombard = 0, Range = 1, AntiAirCombat = 0, Cost = 320, Maintenance = 4, StrategicResource = NULL WHERE UnitType = 'UNIT_GATLING_GUN' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_MARINE', BaseMoves = 2, Combat = 60, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 350, Maintenance = 3, StrategicResource = NULL WHERE UnitType = 'UNIT_INDUSTRIAL_MARINE' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_LIGHT_CAVALRY', BaseMoves = 5, Combat = 62, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 330, Maintenance = 5, StrategicResource = 'RESOURCE_HORSES' WHERE UnitType = 'UNIT_CAVALRY' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_LIGHT_CAVALRY', BaseMoves = 5, Combat = 62, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 330, Maintenance = 5, StrategicResource = 'RESOURCE_HORSES' WHERE UnitType = 'UNIT_CREE_OTEHTAPIW' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_LIGHT_CAVALRY', BaseMoves = 5, Combat = 65, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 335, Maintenance = 5, StrategicResource = 'RESOURCE_HORSES' WHERE UnitType = 'UNIT_HUNGARY_HUSZAR' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_LIGHT_CAVALRY', BaseMoves = 5, Combat = 62, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 330, Maintenance = 5, StrategicResource = 'RESOURCE_HORSES' WHERE UnitType = 'UNIT_POLISH_UHLAN' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_LIGHT_CAVALRY', BaseMoves = 5, Combat = 67, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 340, Maintenance = 5, StrategicResource = 'RESOURCE_HORSES' WHERE UnitType = 'UNIT_RUSSIAN_COSSACK' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_LIGHT_CAVALRY', BaseMoves = 5, Combat = 62, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 330, Maintenance = 5, StrategicResource = 'RESOURCE_HORSES' WHERE UnitType = 'UNIT_SWEDEN_HAKKAPELIITTA' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_CAVALRY', BaseMoves = 4, Combat = 64, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 330, Maintenance = 5, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_CUIRASSIER' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_CAVALRY', BaseMoves = 5, Combat = 67, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 385, Maintenance = 2, StrategicResource = NULL WHERE UnitType = 'UNIT_AMERICAN_ROUGH_RIDER' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_RANGED', BaseMoves = 2, Combat = 50, RangedCombat = 60, Bombard = 0, Range = 2, AntiAirCombat = 0, Cost = 330, Maintenance = 5, StrategicResource = NULL WHERE UnitType = 'UNIT_FIELD_CANNON' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_RANGED', BaseMoves = 2, Combat = 45, RangedCombat = 60, Bombard = 0, Range = 2, AntiAirCombat = 0, Cost = 250, Maintenance = 3, StrategicResource = NULL WHERE UnitType = 'UNIT_KOREAN_HWACHA' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY', BaseMoves = 2, Combat = 65, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 340, Maintenance = 4, StrategicResource = 'RESOURCE_NITER' WHERE UnitType = 'UNIT_ENGLISH_REDCOAT' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY', BaseMoves = 2, Combat = 65, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 340, Maintenance = 4, StrategicResource = 'RESOURCE_NITER' WHERE UnitType = 'UNIT_FRENCH_GARDE_IMPERIALE' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY', BaseMoves = 2, Combat = 64, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 350, Maintenance = 4, StrategicResource = 'RESOURCE_NITER' WHERE UnitType = 'UNIT_INDIAN_SEPOY' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_LIGHT_CAVALRY', BaseMoves = 4, Combat = 50, RangedCombat = 60, Bombard = 0, Range = 2, AntiAirCombat = 0, Cost = 350, Maintenance = 5, StrategicResource = 'RESOURCE_NITER' WHERE UnitType = 'UNIT_HORSE_ARTILLERY' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_RANGED', BaseMoves = 2, Combat = 53, RangedCombat = 0, Bombard = 65, Range = 2, AntiAirCombat = 0, Cost = 360, Maintenance = 5, StrategicResource = 'RESOURCE_NITER' WHERE UnitType = 'UNIT_RIFLED_CANNON' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_RECON', BaseMoves = 3, Combat = 45, RangedCombat = 60, Bombard = 0, Range = 1, AntiAirCombat = 0, Cost = 380, Maintenance = 5, StrategicResource = NULL WHERE UnitType = 'UNIT_RANGER' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_RECON', BaseMoves = 3, Combat = 46, RangedCombat = 60, Bombard = 0, Range = 1, AntiAirCombat = 0, Cost = 220, Maintenance = 4, StrategicResource = NULL WHERE UnitType = 'UNIT_BRAZILIAN_BANDEIRANTE' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_SUPPORT', BaseMoves = 2, Combat = 0, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 370, Maintenance = 5, StrategicResource = NULL WHERE UnitType = 'UNIT_MEDIC' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_RECON', BaseMoves = 3, Combat = 45, RangedCombat = 55, Bombard = 0, Range = 1, AntiAirCombat = 0, Cost = 380, Maintenance = 5, StrategicResource = NULL WHERE UnitType = 'UNIT_MAORI_TUPARA' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_RECON', BaseMoves = 3, Combat = 50, RangedCombat = 65, Bombard = 0, Range = 1, AntiAirCombat = 0, Cost = 380, Maintenance = 5, StrategicResource = NULL WHERE UnitType = 'UNIT_SCOTTISH_HIGHLANDER' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_CAVALRY', BaseMoves = 4, Combat = 61, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 420, Maintenance = 4, StrategicResource = 'RESOURCE_HORSES' WHERE UnitType = 'UNIT_LANCER' ;

UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_RECON', BaseMoves = 5, Combat = 65, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 390, Maintenance = 5, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_EARLY_LIGHT_TANK' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_DEFENSIVE_GUN', BaseMoves = 2, Combat = 61, RangedCombat = 65, Bombard = 0, Range = 2, AntiAirCombat = 50, Cost = 400, Maintenance = 5, StrategicResource = NULL WHERE UnitType = 'UNIT_MACHINE_GUN' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY', BaseMoves = 2, Combat = 60, RangedCombat = 68, Bombard = 0, Range = 1, AntiAirCombat = 0, Cost = 400, Maintenance = 5, StrategicResource = NULL WHERE UnitType = 'UNIT_ANTI_TANK_RIFLE' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_LIGHT_CAVALRY', BaseMoves = 5, Combat = 60, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 400, Maintenance = 3, StrategicResource = NULL WHERE UnitType = 'UNIT_CANADA_MOUNTIE' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_LIGHT_CAVALRY', BaseMoves = 5, Combat = 70, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 410, Maintenance = 6, StrategicResource = 'RESOURCE_HORSES' WHERE UnitType = 'UNIT_MOUNTED_RIFLES' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_DEFENSIVE_GUN', BaseMoves = 4, Combat = 61, RangedCombat = 65, Bombard = 0, Range = 1, AntiAirCombat = 50, Cost = 420, Maintenance = 5, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_ARMORED_CAR' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_CAVALRY', BaseMoves = 4, Combat = 80, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 420, Maintenance = 6, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_LANDSHIP' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_RANGED', BaseMoves = 2, Combat = 58, RangedCombat = 68, Bombard = 0, Range = 2, AntiAirCombat = 0, Cost = 420, Maintenance = 6, StrategicResource = NULL WHERE UnitType = 'UNIT_FIELD_GUN' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY', BaseMoves = 2, Combat = 70, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 430, Maintenance = 5, StrategicResource = NULL WHERE UnitType = 'UNIT_WW1_INFANTRY' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY', BaseMoves = 2, Combat = 80, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 430, Maintenance = 5, StrategicResource = NULL WHERE UnitType = 'UNIT_DIGGER' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_SIEGE', BaseMoves = 2, Combat = 63, RangedCombat = 0, Bombard = 75, Range = 2, AntiAirCombat = 0, Cost = 450, Maintenance = 6, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_ARTILLERY' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_SUPPORT', BaseMoves = 4, Combat = 0, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 450, Maintenance = 2, StrategicResource = NULL WHERE UnitType = 'UNIT_SUPPLY_CONVOY' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_ANTIAIR', BaseMoves = 2, Combat = 0, RangedCombat = 0, Bombard = 0, Range = 1, AntiAirCombat = 90, Cost = 455, Maintenance = 2, StrategicResource = NULL WHERE UnitType = 'UNIT_ANTIAIR_GUN' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_LIGHT_INFANTRY', BaseMoves = 5, Combat = 80, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 470, Maintenance = 7, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_ARMORED_INFANTRY' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY', BaseMoves = 2, Combat = 68, RangedCombat = 72, Bombard = 0, Range = 1, AntiAirCombat = 60, Cost = 490, Maintenance = 6, StrategicResource = NULL WHERE UnitType = 'UNIT_AT_CREW' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_CAVALRY', BaseMoves = 4, Combat = 88, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 530, Maintenance = 6, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_TANK' ;

UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_SUPPORT', BaseMoves = 3, Combat = 0, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 420, Maintenance = 3, StrategicResource = NULL WHERE UnitType = 'UNIT_DRONE' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_MARINE', BaseMoves = 2, Combat = 76, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 430, Maintenance = 5, StrategicResource = NULL WHERE UnitType = 'UNIT_WW2_MARINE' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_RECON', BaseMoves = 5, Combat = 72, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 450, Maintenance = 6, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_LIGHT_TANK' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY', BaseMoves = 2, Combat = 70, RangedCombat = 75, Bombard = 0, Range = 1, AntiAirCombat = 66, Cost = 490, Maintenance = 6, StrategicResource = NULL WHERE UnitType = 'UNIT_ANTI_TANK_GUN' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY', BaseMoves = 2, Combat = 80, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 500, Maintenance = 6, StrategicResource = NULL WHERE UnitType = 'UNIT_INFANTRY' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_RANGED', BaseMoves = 2, Combat = 65, RangedCombat = 75, Bombard = 0, Range = 2, AntiAirCombat = 0, Cost = 500, Maintenance = 7, StrategicResource = NULL WHERE UnitType = 'UNIT_FIELD_HOWITZER' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_DEFENSIVE_GUN', BaseMoves = 4, Combat = 68, RangedCombat = 72, Bombard = 0, Range = 1, AntiAirCombat = 60, Cost = 510, Maintenance = 6, StrategicResource = 'RESOURCE_OIL' WHERE UnitType = 'UNIT_ASSAULT_GUN' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY', BaseMoves = 4, Combat = 70, RangedCombat = 75, Bombard = 0, Range = 1, AntiAirCombat = 0, Cost = 510, Maintenance = 6, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_TANK_DESTROYER' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_ANTIAIR', BaseMoves = 4, Combat = 0, RangedCombat = 0, Bombard = 0, Range = 1, AntiAirCombat = 75, Cost = 520, Maintenance = 6, StrategicResource = NULL WHERE UnitType = 'UNIT_MOBILE_AAA' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_RECON', BaseMoves = 3, Combat = 60, RangedCombat = 65, Bombard = 0, Range = 2, AntiAirCombat = 0, Cost = 520, Maintenance = 7, StrategicResource = NULL WHERE UnitType = 'UNIT_SPEC_OPS' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_SIEGE', BaseMoves = 3, Combat = 72, RangedCombat = 0, Bombard = 88, Range = 3, AntiAirCombat = 0, Cost = 560, Maintenance = 7, StrategicResource = 'RESOURCE_OIL' WHERE UnitType = 'UNIT_HEAVY_HOWITZER' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_RANGED', BaseMoves = 4, Combat = 65, RangedCombat = 75, Bombard = 0, Range = 2, AntiAirCombat = 0, Cost = 560, Maintenance = 6, StrategicResource = 'RESOURCE_OIL' WHERE UnitType = 'UNIT_SP_HOWITZER' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_LIGHT_CAVALRY', BaseMoves = 4, Combat = 75, RangedCombat = 85, Bombard = 0, Range = 1, AntiAirCombat = 0, Cost = 600, Maintenance = 7, StrategicResource = 'RESOURCE_ALUMINUM' WHERE UnitType = 'UNIT_HELICOPTER' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_LIGHT_CAVALRY', BaseMoves = 4, Combat = 78, RangedCombat = 88, Bombard = 0, Range = 1, AntiAirCombat = 0, Cost = 600, Maintenance = 7, StrategicResource = NULL WHERE UnitType = 'UNIT_AMERICAN_AH64_APACHE' ;

UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY', BaseMoves = 3, Combat = 78, RangedCombat = 82, Bombard = 0, Range = 1, AntiAirCombat = 70, Cost = 580, Maintenance = 7, StrategicResource = NULL WHERE UnitType = 'UNIT_MODERN_AT' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_RECON', BaseMoves = 5, Combat = 80, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 580, Maintenance = 7, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_ARMORED_CAVALRY' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_ANTIAIR', BaseMoves = 4, Combat = 0, RangedCombat = 0, Bombard = 0, Range = 2, AntiAirCombat = 100, Cost = 590, Maintenance = 4, StrategicResource = NULL WHERE UnitType = 'UNIT_MOBILE_SAM' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_RANGED', BaseMoves = 2, Combat = 75, RangedCombat = 85, Bombard = 0, Range = 2, AntiAirCombat = 0, Cost = 600, Maintenance = 8, StrategicResource = NULL WHERE UnitType = 'UNIT_FIELD_ARTILLERY' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY', BaseMoves = 4, Combat = 75, RangedCombat = 85, Bombard = 0, Range = 1, AntiAirCombat = 0, Cost = 600, Maintenance = 7, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_MODERN_TANK_DEST' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_DEFENSIVE_GUN', BaseMoves = 4, Combat = 78, RangedCombat = 82, Bombard = 0, Range = 1, AntiAirCombat = 70, Cost = 600, Maintenance = 7, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_MOBILE_GUN_SYSTEM' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY', BaseMoves = 2, Combat = 90, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 640, Maintenance = 6, StrategicResource = NULL WHERE UnitType = 'UNIT_MODERN_INFANTRY' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_LIGHT_CAVALRY', BaseMoves = 5, Combat = 90, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 650, Maintenance = 8, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_MECHANIZED_INFANTRY' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_LIGHT_CAVALRY', BaseMoves = 6, Combat = 96, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 650, Maintenance = 8, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_AUSTRALIAN_SASR' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_MARINE', BaseMoves = 4, Combat = 86, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 650, Maintenance = 7, StrategicResource = NULL WHERE UnitType = 'UNIT_MODERN_MARINE' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_RANGED', BaseMoves = 4, Combat = 75, RangedCombat = 85, Bombard = 0, Range = 2, AntiAirCombat = 0, Cost = 675, Maintenance = 7, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_SP_GUN' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_CAVALRY', BaseMoves = 4, Combat = 98, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 680, Maintenance = 8, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_MODERN_ARMOR' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_SIEGE', BaseMoves = 4, Combat = 83, RangedCombat = 0, Bombard = 95, Range = 3, AntiAirCombat = 0, Cost = 680, Maintenance = 8, StrategicResource = NULL WHERE UnitType = 'UNIT_ROCKET_ARTILLERY' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_RANGED', BaseMoves = 4, Combat = 60, RangedCombat = 80, Bombard = 0, Range = 1, AntiAirCombat = 0, Cost = 700, Maintenance = 7, StrategicResource = 'RESOURCE_ALUMINUM' WHERE UnitType = 'UNIT_UAV' ;

UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_GIANT_DEATH_ROBOT', BaseMoves = 5, Combat = 130, RangedCombat = 120, Bombard = 0, Range = 3, AntiAirCombat = 0, Cost = 1500, Maintenance = 15, StrategicResource = 'RESOURCE_ALUMINUM' WHERE UnitType = 'UNIT_GIANT_DEATH_ROBOT' ;


UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_NAVAL_MELEE', BaseMoves = 3, Combat = 25, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 65, Maintenance = 1, StrategicResource = NULL WHERE UnitType = 'UNIT_GALLEY' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_NAVAL_MELEE', BaseMoves = 3, Combat = 25, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 65, Maintenance = 1, StrategicResource = NULL WHERE UnitType = 'UNIT_BARBARIAN_RAIDER' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_NAVAL_MELEE', BaseMoves = 3, Combat = 25, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 65, Maintenance = 1, StrategicResource = NULL WHERE UnitType = 'UNIT_KHMER_WAR_CANOE' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_NAVAL_MELEE', BaseMoves = 3, Combat = 30, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 65, Maintenance = 1, StrategicResource = NULL WHERE UnitType = 'UNIT_NORWEGIAN_LONGSHIP' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_NAVAL_MELEE', BaseMoves = 4, Combat = 30, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 65, Maintenance = 1, StrategicResource = NULL WHERE UnitType = 'UNIT_PHOENICIA_BIREME' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_NAVAL_RANGED', BaseMoves = 3, Combat = 25, RangedCombat = 25, Bombard = 0, Range = 1, AntiAirCombat = 0, Cost = 120, Maintenance = 2, StrategicResource = NULL WHERE UnitType = 'UNIT_QUADRIREME' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_NAVAL_BOMBARD', BaseMoves = 3, Combat = 25, RangedCombat = 0, Bombard = 39, Range = 1, AntiAirCombat = 0, Cost = 120, Maintenance = 2, StrategicResource = NULL WHERE UnitType = 'UNIT_GREEK_FIRE_SHIP' ;

UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_NAVAL_MELEE', BaseMoves = 3, Combat = 48, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 200, Maintenance = 3, StrategicResource = NULL WHERE UnitType = 'UNIT_COG' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_NAVAL_RANGED', BaseMoves = 3, Combat = 40, RangedCombat = 41, Bombard = 0, Range = 2, AntiAirCombat = 0, Cost = 200, Maintenance = 3, StrategicResource = 'RESOURCE_NITER' WHERE UnitType = 'UNIT_GALLEASS' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_NAVAL_BOMBARD', BaseMoves = 3, Combat = 40, RangedCombat = 0, Bombard = 54, Range = 2, AntiAirCombat = 0, Cost = 200, Maintenance = 3, StrategicResource = 'RESOURCE_NITER' WHERE UnitType = 'UNIT_GALLEON' ;

UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_NAVAL_MELEE', BaseMoves = 4, Combat = 50, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 250, Maintenance = 4, StrategicResource = NULL WHERE UnitType = 'UNIT_CARAVEL' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_NAVAL_MELEE', BaseMoves = 5, Combat = 55, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 250, Maintenance = 4, StrategicResource = NULL WHERE UnitType = 'UNIT_KOREAN_TURTLE_SHIP' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_NAVAL_MELEE', BaseMoves = 5, Combat = 61, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 300, Maintenance = 4, StrategicResource = NULL WHERE UnitType = 'UNIT_CORVETTE' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_NAVAL_RAIDER', BaseMoves = 4, Combat = 45, RangedCombat = 54, Bombard = 0, Range = 1, AntiAirCombat = 0, Cost = 300, Maintenance = 4, StrategicResource = 'RESOURCE_NITER' WHERE UnitType = 'UNIT_PRIVATEER' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_NAVAL_RAIDER', BaseMoves = 4, Combat = 45, RangedCombat = 54, Bombard = 0, Range = 1, AntiAirCombat = 0, Cost = 260, Maintenance = 3, StrategicResource = NULL WHERE UnitType = 'UNIT_OTTOMAN_BARBARY_CORSAIR' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_NAVAL_RANGED', BaseMoves = 4, Combat = 50, RangedCombat = 55, Bombard = 0, Range = 2, AntiAirCombat = 0, Cost = 300, Maintenance = 4, StrategicResource = 'RESOURCE_NITER' WHERE UnitType = 'UNIT_FRIGATE' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_NAVAL_RANGED', BaseMoves = 4, Combat = 55, RangedCombat = 60, Bombard = 0, Range = 2, AntiAirCombat = 0, Cost = 300, Maintenance = 4, StrategicResource = 'RESOURCE_NITER' WHERE UnitType = 'UNIT_DE_ZEVEN_PROVINCIEN' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_NAVAL_RANGED', BaseMoves = 5, Combat = 50, RangedCombat = 55, Bombard = 0, Range = 2, AntiAirCombat = 0, Cost = 300, Maintenance = 4, StrategicResource = NULL WHERE UnitType = 'UNIT_INDONESIAN_JONG' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_NAVAL_BOMBARD', BaseMoves = 3, Combat = 50, RangedCombat = 0, Bombard = 71, Range = 2, AntiAirCombat = 0, Cost = 300, Maintenance = 4, StrategicResource = 'RESOURCE_NITER' WHERE UnitType = 'UNIT_SHIP_OF_THE_LINE' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_NAVAL_BOMBARD', BaseMoves = 3, Combat = 55, RangedCombat = 0, Bombard = 76, Range = 2, AntiAirCombat = 0, Cost = 300, Maintenance = 4, StrategicResource = 'RESOURCE_NITER' WHERE UnitType = 'UNIT_ENGLISH_SHIP_OF_THE_LINE' ;

UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_NAVAL_MELEE', BaseMoves = 5, Combat = 66, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 380, Maintenance = 5, StrategicResource = NULL WHERE UnitType = 'UNIT_IRONCLAD' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_NAVAL_RAIDER', BaseMoves = 4, Combat = 55, RangedCombat = 54, Bombard = 0, Range = 1, AntiAirCombat = 0, Cost = 380, Maintenance = 5, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_RAIDER' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_NAVAL_RANGED', BaseMoves = 4, Combat = 60, RangedCombat = 59, Bombard = 0, Range = 2, AntiAirCombat = 0, Cost = 380, Maintenance = 5, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_ARMORED_CRUISER' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_NAVAL_BOMBARD', BaseMoves = 3, Combat = 60, RangedCombat = 0, Bombard = 78, Range = 2, AntiAirCombat = 0, Cost = 380, Maintenance = 5, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_PRE_DREADNOUGHT' ;

UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_NAVAL_MELEE', BaseMoves = 6, Combat = 74, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 460, Maintenance = 6, StrategicResource = NULL WHERE UnitType = 'UNIT_TORPEDO_GUNBOAT' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_NAVAL_RANGED', BaseMoves = 5, Combat = 70, RangedCombat = 60, Bombard = 0, Range = 2, AntiAirCombat = 0, Cost = 460, Maintenance = 6, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_LIGHT_CRUISER' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_NAVAL_RAIDER', BaseMoves = 4, Combat = 65, RangedCombat = 54, Bombard = 0, Range = 1, AntiAirCombat = 0, Cost = 460, Maintenance = 6, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_SUBMARINE' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_NAVAL_RAIDER', BaseMoves = 4, Combat = 65, RangedCombat = 54, Bombard = 0, Range = 1, AntiAirCombat = 0, Cost = 410, Maintenance = 6, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_GERMAN_UBOAT' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_NAVAL_BOMBARD', BaseMoves = 3, Combat = 70, RangedCombat = 0, Bombard = 78, Range = 3, AntiAirCombat = 0, Cost = 460, Maintenance = 6, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_DREADNOUGHT' ;

UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_NAVAL_MELEE', BaseMoves = 6, Combat = 83, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 75, Cost = 580, Maintenance = 7, StrategicResource = NULL WHERE UnitType = 'UNIT_DESTROYER' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_NAVAL_MELEE', BaseMoves = 6, Combat = 83, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 75, Cost = 580, Maintenance = 7, StrategicResource = NULL WHERE UnitType = 'UNIT_CANADA_HMCS_HAIDA' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_NAVAL_RANGED', BaseMoves = 5, Combat = 75, RangedCombat = 77, Bombard = 0, Range = 2, AntiAirCombat = 100, Cost = 580, Maintenance = 7, StrategicResource = NULL WHERE UnitType = 'UNIT_BATTLECRUISER' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_NAVAL_BOMBARD', BaseMoves = 3, Combat = 75, RangedCombat = 0, Bombard = 87, Range = 3, AntiAirCombat = 75, Cost = 580, Maintenance = 7, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_BATTLESHIP' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_NAVAL_BOMBARD', BaseMoves = 3, Combat = 85, RangedCombat = 0, Bombard = 97, Range = 3, AntiAirCombat = 80, Cost = 580, Maintenance = 7, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_BRAZILIAN_MINAS_GERAES' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_NAVAL_CARRIER', BaseMoves = 4, Combat = 65, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 580, Maintenance = 7, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_AIRCRAFT_CARRIER' ;

UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_NAVAL_MELEE', BaseMoves = 6, Combat = 99, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 100, Cost = 690, Maintenance = 8, StrategicResource = NULL WHERE UnitType = 'UNIT_MISSILE_DESTROYER' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_NAVAL_RANGED', BaseMoves = 5, Combat = 90, RangedCombat = 90, Bombard = 0, Range = 3, AntiAirCombat = 130, Cost = 690, Maintenance = 8, StrategicResource = NULL WHERE UnitType = 'UNIT_MISSILE_CRUISER' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_NAVAL_RAIDER', BaseMoves = 4, Combat = 90, RangedCombat = 73, Bombard = 0, Range = 1, AntiAirCombat = 0, Cost = 690, Maintenance = 8, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_NUCLEAR_SUBMARINE' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_NAVAL_BOMBARD', BaseMoves = 3, Combat = 90, RangedCombat = 0, Bombard = 100, Range = 4, AntiAirCombat = 100, Cost = 690, Maintenance = 8, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_RAILGUN_WARSHIP' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_NAVAL_MELEE', BaseMoves = 5, Combat = 61, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 690, Maintenance = 8, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_ATTACK_SUBMARINE' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_NAVAL_CARRIER', BaseMoves = 5, Combat = 80, RangedCombat = 0, Bombard = 0, Range = 0, AntiAirCombat = 0, Cost = 690, Maintenance = 8, StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_SUPERCARRIER' ;


UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_AIR_FIGHTER', BaseMoves = 6, Combat = 80, RangedCombat = 70, Bombard = 0, Range = 5, AntiAirCombat = 0, Cost = 460, Maintenance = 6, StrategicResource = NULL WHERE UnitType = 'UNIT_BIPLANE' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_AIR_ATTACK', BaseMoves = 6, Combat = 70, RangedCombat = 80, Bombard = 0, Range = 5, AntiAirCombat = 0, Cost = 460, Maintenance = 6, StrategicResource = NULL WHERE UnitType = 'UNIT_WW1_GROUND_ATTACK' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_AIR_BOMBER', BaseMoves = 6, Combat = 60, RangedCombat = 0, Bombard = 85, Range = 7, AntiAirCombat = 0, Cost = 460, Maintenance = 6, StrategicResource = NULL WHERE UnitType = 'UNIT_WW1_BOMBER' ;

UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_AIR_FIGHTER', BaseMoves = 8, Combat = 105, RangedCombat = 95, Bombard = 0, Range = 8, AntiAirCombat = 0, Cost = 580, Maintenance = 7, StrategicResource = NULL WHERE UnitType = 'UNIT_FIGHTER' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_AIR_FIGHTER', BaseMoves = 10, Combat = 110, RangedCombat = 100, Bombard = 0, Range = 8, AntiAirCombat = 0, Cost = 580, Maintenance = 7, StrategicResource = NULL WHERE UnitType = 'UNIT_AMERICAN_P51' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_AIR_ATTACK', BaseMoves = 8, Combat = 95, RangedCombat = 105, Bombard = 0, Range = 8, AntiAirCombat = 0, Cost = 580, Maintenance = 7, StrategicResource = 'RESOURCE_ALUMINUM' WHERE UnitType = 'UNIT_GROUND_ATTACK' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_AIR_BOMBER', BaseMoves = 10, Combat = 85, RangedCombat = 0, Bombard = 110, Range = 10, AntiAirCombat = 0, Cost = 580, Maintenance = 7, StrategicResource = 'RESOURCE_ALUMINUM' WHERE UnitType = 'UNIT_BOMBER' ;

UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_AIR_FIGHTER', BaseMoves = 10, Combat = 115, RangedCombat = 105, Bombard = 0, Range = 10, AntiAirCombat = 0, Cost = 690, Maintenance = 8, StrategicResource = NULL WHERE UnitType = 'UNIT_JET_FIGHTER' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_AIR_ATTACK', BaseMoves = 10, Combat = 105, RangedCombat = 115, Bombard = 0, Range = 10, AntiAirCombat = 0, Cost = 690, Maintenance = 8, StrategicResource = 'RESOURCE_ALUMINUM' WHERE UnitType = 'UNIT_JET_GROUND_ATTACK' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_AIR_BOMBER', BaseMoves = 15, Combat = 90, RangedCombat = 0, Bombard = 120, Range = 15, AntiAirCombat = 0, Cost = 690, Maintenance = 8, StrategicResource = 'RESOURCE_ALUMINUM' WHERE UnitType = 'UNIT_JET_BOMBER' ;

UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_AIR_FIGHTER', BaseMoves = 10, Combat = 125, RangedCombat = 115, Bombard = 0, Range = 10, AntiAirCombat = 0, Cost = 800, Maintenance = 8, StrategicResource = NULL WHERE UnitType = 'UNIT_STEALTH_FIGHTER' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_AIR_ATTACK', BaseMoves = 10, Combat = 115, RangedCombat = 125, Bombard = 0, Range = 10, AntiAirCombat = 0, Cost = 800, Maintenance = 8, StrategicResource = 'RESOURCE_ALUMINUM' WHERE UnitType = 'UNIT_STEALTH_ATTACK' ;
UPDATE Units SET PromotionClass = 'BW_PROMOTION_CLASS_AIR_BOMBER', BaseMoves = 15, Combat = 100, RangedCombat = 0, Bombard = 130, Range = 15, AntiAirCombat = 0, Cost = 800, Maintenance = 8, StrategicResource = 'RESOURCE_ALUMINUM' WHERE UnitType = 'UNIT_STEALTH_BOMBER' ;














INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_HEAVY_CHARIOT', 1, NULL, 0) ;


INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_CHARIOT_ARCHER', 1, NULL, 0) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_EGYPTIAN_CHARIOT_ARCHER', 1, NULL, 0) ;



INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_HORSEMAN', 20, NULL, 0) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_MACEDONIAN_HETAIROI', 10, NULL, 0) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_ROMAN_EQUITE', 10, NULL, 0) ;


INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_SWORDSMAN', 20, NULL, 0) ;

INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_EGYPTIAN_KHOPESH', 10, NULL, 0) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_KONGO_SHIELD_BEARER', 5, NULL, 0) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_MACEDONIAN_HYPASPIST', 5, NULL, 0) ;

INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_PERSIAN_IMMORTAL', 10, NULL, 0) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_ROMAN_LEGION', 10, NULL, 0) ;

INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_INDONESIAN_KRIS_SWORDSMAN', 10, NULL, 0) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_HORSE_ARCHER', 10, NULL, 0) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_SCYTHIAN_HORSE_ARCHER', 5, NULL, 0) ;

INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_PHOENICIA_NUMIDIAN_CAVALRY', 10, NULL, 0) ;




INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_ARMORED_HORSEMAN', 20, NULL, 0) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_PERSIAN_CATAPHRACT', 10, NULL, 0) ;








INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_GEORGIAN_KHEVSURETI', 10, NULL, 0) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_LONGSWORDSMAN', 20, NULL, 0) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_ELEANOR_TEMPLAR', 20, NULL, 0) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_JAPANESE_SAMURAI', 10, NULL, 0) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_NORWEGIAN_BERSERKER', 10, NULL, 0) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_SCOTTISH_GALLOWGLASS', 10, NULL, 0) ;







INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_HUNGARY_KALANDOZO', 10, NULL, 0) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_MONGOLIAN_KESHIG', 10, NULL, 0) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_MOUNTED_CROSSBOW', 20, NULL, 0) ;






INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_COURSER', 20, NULL, 0) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_RUSSIAN_DRUZHINA', 10, NULL, 0) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_HUNGARY_BLACK_ARMY', 10, NULL, 0) ;

INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_KNIGHT', 20, NULL, 0) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_ARABIAN_MAMLUK', 10, NULL, 0) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_FRENCH_GENDARME', 10, NULL, 0) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_GEORGIAN_TADZREULI', 10, NULL, 0) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_MALI_MANDEKALU_CAVALRY', 10, NULL, 0) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_OTTOMAN_SIPAHI', 20, NULL, 0) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_SCYTHIAN_AMAZON', 10, NULL, 0) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_POLISH_HUSSAR', 10, NULL, 0) ;


INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_MUSKETMAN', 20, NULL, 0) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_DUTCH_SCHUTTERIJ', 10, NULL, 0) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_SPANISH_CONQUISTADOR', 10, NULL, 0) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_SULEIMAN_JANISSARY', 10, NULL, 0) ;




INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_HARQUEBUSIER', 20, NULL, 0) ;

INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_REITER', 20, NULL, 0) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_BOMBARD', 20, NULL, 0) ;



INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_RIFLEMAN', 20, NULL, 0) ;


INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_CAVALRY', 20, NULL, 0) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_CREE_OTEHTAPIW', 10, NULL, 0) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_HUNGARY_HUSZAR', 10, NULL, 0) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_POLISH_UHLAN', 10, NULL, 0) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_RUSSIAN_COSSACK', 10, NULL, 0) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_SWEDEN_HAKKAPELIITTA', 20, NULL, 0) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_CUIRASSIER', 20, NULL, 0) ;



INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_ENGLISH_REDCOAT', 10, NULL, 0) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_FRENCH_GARDE_IMPERIALE', 10, NULL, 0) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_INDIAN_SEPOY', 10, NULL, 0) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_HORSE_ARTILLERY', 20, NULL, 0) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_RIFLED_CANNON', 20, NULL, 0) ;





INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_LANCER', 20, NULL, 0) ;

INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_EARLY_LIGHT_TANK', 1, 'RESOURCE_OIL', 1) ;



INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_MOUNTED_RIFLES', 20, NULL, 0) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_ARMORED_CAR', 1, 'RESOURCE_OIL', 1) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_LANDSHIP', 1, 'RESOURCE_OIL', 1) ;



INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_ARTILLERY', 1, NULL, 0) ;


INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_ARMORED_INFANTRY', 1, 'RESOURCE_OIL', 1) ;

INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_TANK', 1, 'RESOURCE_OIL', 1) ;



INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_LIGHT_TANK', 1, 'RESOURCE_OIL', 1) ;



INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_ASSAULT_GUN', 1, 'RESOURCE_OIL', 1) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_TANK_DESTROYER', 1, 'RESOURCE_OIL', 1) ;


INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_HEAVY_HOWITZER', 1, 'RESOURCE_OIL', 1) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_SP_HOWITZER', 1, 'RESOURCE_OIL', 1) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_HELICOPTER', 30, 'RESOURCE_OIL', 1) ;



INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_ARMORED_CAVALRY', 1, 'RESOURCE_OIL', 1) ;


INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_MODERN_TANK_DEST', 1, 'RESOURCE_OIL', 1) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_MOBILE_GUN_SYSTEM', 1, 'RESOURCE_OIL', 1) ;

INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_MECHANIZED_INFANTRY', 1, 'RESOURCE_OIL', 1) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_AUSTRALIAN_SASR', 1, 'RESOURCE_OIL', 1) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_MODERN_MARINE', 0, 'RESOURCE_OIL', 1) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_SP_GUN', 1, 'RESOURCE_OIL', 1) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_MODERN_ARMOR', 50, 'RESOURCE_OIL', 1) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_ROCKET_ARTILLERY', 0, 'RESOURCE_OIL', 1) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_UAV', 40, NULL, 0) ;

INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_GIANT_DEATH_ROBOT', 50, 'RESOURCE_URANIUM', 3) ;











INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_GALLEASS', 10, NULL, 0) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_GALLEON', 10, NULL, 0) ;




INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_PRIVATEER', 20, NULL, 0) ;

INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_FRIGATE', 20, NULL, 0) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_DE_ZEVEN_PROVINCIEN', 10, NULL, 0) ;

INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_SHIP_OF_THE_LINE', 20, NULL, 0) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_ENGLISH_SHIP_OF_THE_LINE', 20, NULL, 0) ;


INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_RAIDER', 20, 'RESOURCE_COAL', 1) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_ARMORED_CRUISER', 20, 'RESOURCE_COAL', 1) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_PRE_DREADNOUGHT', 20, 'RESOURCE_COAL', 1) ;


INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_LIGHT_CRUISER', 30, 'RESOURCE_COAL', 1) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_SUBMARINE', 30, 'RESOURCE_OIL', 1) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_GERMAN_UBOAT', 30, 'RESOURCE_OIL', 1) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_DREADNOUGHT', 30, 'RESOURCE_COAL', 1) ;




INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_BATTLESHIP', 40, 'RESOURCE_OIL', 1) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_BRAZILIAN_MINAS_GERAES', 40, 'RESOURCE_COAL', 1) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_AIRCRAFT_CARRIER', 40, 'RESOURCE_OIL', 1) ;



INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_NUCLEAR_SUBMARINE', 50, 'RESOURCE_URANIUM', 1) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_RAILGUN_WARSHIP', 50, 'RESOURCE_OIL', 1) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_ATTACK_SUBMARINE', 50, 'RESOURCE_OIL', 1) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_SUPERCARRIER', 50, 'RESOURCE_URANIUM', 1) ;


INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_BIPLANE', 0, 'RESOURCE_OIL', 1) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_WW1_GROUND_ATTACK', 0, 'RESOURCE_OIL', 1) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_WW1_BOMBER', 0, 'RESOURCE_OIL', 1) ;

INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_FIGHTER', 0, 'RESOURCE_OIL', 1) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_AMERICAN_P51', 0, 'RESOURCE_OIL', 1) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_GROUND_ATTACK', 20, 'RESOURCE_OIL', 1) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_BOMBER', 20, 'RESOURCE_OIL', 1) ;

INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_JET_FIGHTER', 0, 'RESOURCE_OIL', 1) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_JET_GROUND_ATTACK', 30, 'RESOURCE_OIL', 1) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_JET_BOMBER', 30, 'RESOURCE_OIL', 1) ;

INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_STEALTH_FIGHTER', 0, 'RESOURCE_OIL', 1) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_STEALTH_ATTACK', 40, 'RESOURCE_OIL', 1) ;
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) VALUES ('UNIT_STEALTH_BOMBER', 40, 'RESOURCE_OIL', 1) ;


INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_SCOUT', 'UNIT_SKIRMISHER') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_CREE_OKIHTCITAW', 'UNIT_SKIRMISHER') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_INCA_CHASQUI', 'UNIT_SKIRMISHER') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_SLINGER', 'UNIT_PELTAST') ;


INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_WARRIOR', 'UNIT_SPEARMAN') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_AZTEC_EAGLE_WARRIOR', 'UNIT_SPEARMAN') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_ARCHER', 'UNIT_COMPOSITE_BOWMAN') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_NUBIAN_PITATI', 'UNIT_COMPOSITE_BOWMAN') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_SPEARMAN', 'UNIT_HEAVY_INFANTRY') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_GREEK_HOPLITE', 'UNIT_HEAVY_INFANTRY') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_SUMERIAN_PHALANX', 'UNIT_HEAVY_INFANTRY') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_HEAVY_CHARIOT', 'UNIT_HORSEMAN') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_SUMERIAN_WAR_CART', 'UNIT_HORSEMAN') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_BATTERING_RAM', 'UNIT_SIEGE_TOWER') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_CHARIOT_ARCHER', 'UNIT_HORSE_ARCHER') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_EGYPTIAN_CHARIOT_ARCHER', 'UNIT_HORSE_ARCHER') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_NORWEGIAN_ULFHEDNAR', 'UNIT_MEDIC') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_KONGO_MEDICINE_MAN', 'UNIT_MEDIC') ;

INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_HORSEMAN', 'UNIT_ARMORED_HORSEMAN') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_MACEDONIAN_HETAIROI', 'UNIT_ARMORED_HORSEMAN') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_ROMAN_EQUITE', 'UNIT_ARMORED_HORSEMAN') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_COMPOSITE_BOWMAN', 'UNIT_CROSSBOWMAN') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_HEAVY_INFANTRY', 'UNIT_PIKEMAN') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_SWORDSMAN', 'UNIT_LONGSWORDSMAN') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_AZTEC_JAGUAR', 'UNIT_LONGSWORDSMAN') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_EGYPTIAN_KHOPESH', 'UNIT_LONGSWORDSMAN') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_KONGO_SHIELD_BEARER', 'UNIT_LONGSWORDSMAN') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_MACEDONIAN_HYPASPIST', 'UNIT_LONGSWORDSMAN') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_MAORI_TOA', 'UNIT_LONGSWORDSMAN') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_PERSIAN_IMMORTAL', 'UNIT_LONGSWORDSMAN') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_ROMAN_LEGION', 'UNIT_LONGSWORDSMAN') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_WARRIOR_MONK', 'UNIT_AXE_THROWER') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_INDONESIAN_KRIS_SWORDSMAN', 'UNIT_AXE_THROWER') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_HORSE_ARCHER', 'UNIT_MOUNTED_CROSSBOW') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_SCYTHIAN_HORSE_ARCHER', 'UNIT_MOUNTED_CROSSBOW') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_ARABIAN_CAMEL_ARCHER', 'UNIT_MOUNTED_CROSSBOW') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_PHOENICIA_NUMIDIAN_CAVALRY', 'UNIT_MOUNTED_CROSSBOW') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_PELTAST', 'UNIT_AXE_THROWER') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_GREEK_PELTAST', 'UNIT_AXE_THROWER') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_ZULU_ASSEGAI', 'UNIT_AXE_THROWER') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_CHINESE_SHIGONG', 'UNIT_MEDIC') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_ARMORED_HORSEMAN', 'UNIT_COURSER') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_PERSIAN_CATAPHRACT', 'UNIT_COURSER') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_INDIAN_VARU', 'UNIT_COURSER') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_NUBIAN_AFRICAN_FOREST_ELEPHANT', 'UNIT_COURSER') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_CATAPULT', 'UNIT_TREBUCHET') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_MACEDONIAN_BALLISTA', 'UNIT_TREBUCHET') ;

INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_SIEGE_TOWER', 'UNIT_TREBUCHET') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_SKIRMISHER', 'UNIT_RANGER') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_INCA_WARAKAQ', 'UNIT_RANGER') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_LONGSWORDSMAN', 'UNIT_MUSKETMAN') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_GEORGIAN_KHEVSURETI', 'UNIT_MUSKETMAN') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_ELEANOR_TEMPLAR', 'UNIT_MUSKETMAN') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_JAPANESE_SAMURAI', 'UNIT_MUSKETMAN') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_NORWEGIAN_BERSERKER', 'UNIT_MUSKETMAN') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_SCOTTISH_GALLOWGLASS', 'UNIT_MUSKETMAN') ;

INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_JAPANESE_SOHEI', 'UNIT_MUSKETMAN') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_AXE_THROWER', 'UNIT_ARQUEBUSIER') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_CHINESE_CROUCHING_TIGER', 'UNIT_GATLING_GUN') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_CROSSBOWMAN', 'UNIT_CULVERIN') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_ENGLISH_LONGBOWMAN', 'UNIT_CULVERIN') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_MALI_SOFA', 'UNIT_CULVERIN') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_MOUNTED_CROSSBOW', 'UNIT_HARQUEBUSIER') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_HUNGARY_KALANDOZO', 'UNIT_HARQUEBUSIER') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_MONGOLIAN_KESHIG', 'UNIT_HARQUEBUSIER') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_PIKEMAN', 'UNIT_PIKE_AND_SHOT') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_GERMAN_LANDSKNECHT', 'UNIT_PIKE_AND_SHOT') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_MAPUCHE_GUERILLA', 'UNIT_PIKE_AND_SHOT') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_ZULU_IMPI', 'UNIT_PIKE_AND_SHOT') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_COURSER', 'UNIT_KNIGHT') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_RUSSIAN_DRUZHINA', 'UNIT_KNIGHT') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_HUNGARY_BLACK_ARMY', 'UNIT_KNIGHT') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_TREBUCHET', 'UNIT_BOMBARD') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_MONGOLIAN_HUI_HUI_PAO', 'UNIT_BOMBARD') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_KHMER_DOMREY', 'UNIT_BOMBARD') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_KNIGHT', 'UNIT_REITER') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_ARABIAN_MAMLUK', 'UNIT_REITER') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_FRENCH_GENDARME', 'UNIT_REITER') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_GEORGIAN_TADZREULI', 'UNIT_REITER') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_MALI_MANDEKALU_CAVALRY', 'UNIT_REITER') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_OTTOMAN_SIPAHI', 'UNIT_REITER') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_SCYTHIAN_AMAZON', 'UNIT_REITER') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_POLISH_HUSSAR', 'UNIT_REITER') ;

INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_CULVERIN', 'UNIT_RIFLED_CANNON') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_MUSKETMAN', 'UNIT_RIFLEMAN') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_DUTCH_SCHUTTERIJ', 'UNIT_RIFLEMAN') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_SPANISH_CONQUISTADOR', 'UNIT_RIFLEMAN') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_SULEIMAN_JANISSARY', 'UNIT_RIFLEMAN') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_ARQUEBUSIER', 'UNIT_GATLING_GUN') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_PIKE_AND_SHOT', 'UNIT_LINE_INFANTRY') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_SPANISH_TERCIO', 'UNIT_LINE_INFANTRY') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_HARQUEBUSIER', 'UNIT_CAVALRY') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_MAPUCHE_MALON_RAIDER', 'UNIT_CAVALRY') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_REITER', 'UNIT_CUIRASSIER') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_BOMBARD', 'UNIT_ARTILLERY') ;

INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_OBSERVATION_BALLOON', 'UNIT_DRONE') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_LINE_INFANTRY', 'UNIT_ANTI_TANK_RIFLE') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_SWEDEN_CAROLEAN', 'UNIT_ANTI_TANK_RIFLE') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_RIFLEMAN', 'UNIT_WW1_INFANTRY') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_ENGLISH_REDCOAT', 'UNIT_WW1_INFANTRY') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_FRENCH_GARDE_IMPERIALE', 'UNIT_WW1_INFANTRY') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_INDIAN_SEPOY', 'UNIT_WW1_INFANTRY') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_GATLING_GUN', 'UNIT_MACHINE_GUN') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_INDUSTRIAL_MARINE', 'UNIT_WW2_MARINE') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_CAVALRY', 'UNIT_MOUNTED_RIFLES') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_CREE_OTEHTAPIW', 'UNIT_MOUNTED_RIFLES') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_HUNGARY_HUSZAR', 'UNIT_MOUNTED_RIFLES') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_POLISH_UHLAN', 'UNIT_MOUNTED_RIFLES') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_RUSSIAN_COSSACK', 'UNIT_MOUNTED_RIFLES') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_SWEDEN_HAKKAPELIITTA', 'UNIT_MOUNTED_RIFLES') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_CUIRASSIER', 'UNIT_LANDSHIP') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_AMERICAN_ROUGH_RIDER', 'UNIT_LANDSHIP') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_FIELD_CANNON', 'UNIT_FIELD_GUN') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_KOREAN_HWACHA', 'UNIT_FIELD_GUN') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_HORSE_ARTILLERY', 'UNIT_SP_HOWITZER') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_RIFLED_CANNON', 'UNIT_ARTILLERY') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_MEDIC', 'UNIT_SUPPLY_CONVOY') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_RANGER', 'UNIT_SPEC_OPS') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_BRAZILIAN_BANDEIRANTE', 'UNIT_SPEC_OPS') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_MAORI_TUPARA', 'UNIT_SPEC_OPS') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_SCOTTISH_HIGHLANDER', 'UNIT_SPEC_OPS') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_LANCER', 'UNIT_TANK_DESTROYER') ;

INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_EARLY_LIGHT_TANK', 'UNIT_LIGHT_TANK') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_MACHINE_GUN', 'UNIT_AT_CREW') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_ANTI_TANK_RIFLE', 'UNIT_ANTI_TANK_GUN') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_MOUNTED_RIFLES', 'UNIT_ARMORED_INFANTRY') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_CANADA_MOUNTIE', 'UNIT_ARMORED_INFANTRY') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_ARMORED_CAR', 'UNIT_ASSAULT_GUN') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_LANDSHIP', 'UNIT_TANK') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_FIELD_GUN', 'UNIT_FIELD_HOWITZER') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_WW1_INFANTRY', 'UNIT_INFANTRY') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_DIGGER', 'UNIT_INFANTRY') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_ARTILLERY', 'UNIT_HEAVY_HOWITZER') ;

INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_ANTIAIR_GUN', 'UNIT_MOBILE_AAA') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_ARMORED_INFANTRY', 'UNIT_MECHANIZED_INFANTRY') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_AT_CREW', 'UNIT_MODERN_AT') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_TANK', 'UNIT_MODERN_ARMOR') ;

INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_DRONE', 'UNIT_UAV') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_WW2_MARINE', 'UNIT_MODERN_MARINE') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_LIGHT_TANK', 'UNIT_ARMORED_CAVALRY') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_ANTI_TANK_GUN', 'UNIT_HELICOPTER') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_INFANTRY', 'UNIT_MODERN_INFANTRY') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_FIELD_HOWITZER', 'UNIT_FIELD_ARTILLERY') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_ASSAULT_GUN', 'UNIT_MOBILE_GUN_SYSTEM') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_TANK_DESTROYER', 'UNIT_MODERN_TANK_DEST') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_MOBILE_AAA', 'UNIT_MOBILE_SAM') ;

INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_HEAVY_HOWITZER', 'UNIT_ROCKET_ARTILLERY') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_SP_HOWITZER', 'UNIT_SP_GUN') ;





















INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_GALLEY', 'UNIT_COG') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_BARBARIAN_RAIDER', 'UNIT_COG') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_KHMER_WAR_CANOE', 'UNIT_COG') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_NORWEGIAN_LONGSHIP', 'UNIT_COG') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_PHOENICIA_BIREME', 'UNIT_COG') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_QUADRIREME', 'UNIT_GALLEASS') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_GREEK_FIRE_SHIP', 'UNIT_GALLEON') ;

INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_COG', 'UNIT_CARAVEL') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_GALLEASS', 'UNIT_FRIGATE') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_GALLEON', 'UNIT_SHIP_OF_THE_LINE') ;

INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_CARAVEL', 'UNIT_CORVETTE') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_KOREAN_TURTLE_SHIP', 'UNIT_CORVETTE') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_CORVETTE', 'UNIT_IRONCLAD') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_PRIVATEER', 'UNIT_RAIDER') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_OTTOMAN_BARBARY_CORSAIR', 'UNIT_RAIDER') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_FRIGATE', 'UNIT_ARMORED_CRUISER') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_DE_ZEVEN_PROVINCIEN', 'UNIT_ARMORED_CRUISER') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_INDONESIAN_JONG', 'UNIT_ARMORED_CRUISER') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_SHIP_OF_THE_LINE', 'UNIT_PRE_DREADNOUGHT') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_ENGLISH_SHIP_OF_THE_LINE', 'UNIT_PRE_DREADNOUGHT') ;

INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_IRONCLAD', 'UNIT_TORPEDO_GUNBOAT') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_RAIDER', 'UNIT_SUBMARINE') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_ARMORED_CRUISER', 'UNIT_LIGHT_CRUISER') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_PRE_DREADNOUGHT', 'UNIT_DREADNOUGHT') ;

INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_TORPEDO_GUNBOAT', 'UNIT_DESTROYER') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_LIGHT_CRUISER', 'UNIT_BATTLECRUISER') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_SUBMARINE', 'UNIT_NUCLEAR_SUBMARINE') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_GERMAN_UBOAT', 'UNIT_NUCLEAR_SUBMARINE') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_DREADNOUGHT', 'UNIT_BATTLESHIP') ;

INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_DESTROYER', 'UNIT_MISSILE_DESTROYER') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_CANADA_HMCS_HAIDA', 'UNIT_MISSILE_DESTROYER') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_BATTLECRUISER', 'UNIT_MISSILE_CRUISER') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_BATTLESHIP', 'UNIT_RAILGUN_WARSHIP') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_BRAZILIAN_MINAS_GERAES', 'UNIT_RAILGUN_WARSHIP') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_AIRCRAFT_CARRIER', 'UNIT_SUPERCARRIER') ;









INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_BIPLANE', 'UNIT_FIGHTER') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_WW1_GROUND_ATTACK', 'UNIT_GROUND_ATTACK') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_WW1_BOMBER', 'UNIT_BOMBER') ;

INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_FIGHTER', 'UNIT_JET_FIGHTER') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_AMERICAN_P51', 'UNIT_JET_FIGHTER') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_GROUND_ATTACK', 'UNIT_JET_GROUND_ATTACK') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_BOMBER', 'UNIT_JET_BOMBER') ;

INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_JET_FIGHTER', 'UNIT_STEALTH_FIGHTER') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_JET_GROUND_ATTACK', 'UNIT_STEALTH_ATTACK') ;
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_JET_BOMBER', 'UNIT_STEALTH_BOMBER') ;









