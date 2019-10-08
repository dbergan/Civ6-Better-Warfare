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

-- Set up normal damage decrement
INSERT OR REPLACE INTO GameModifiers (ModifierId) VALUES ('BW_MOD_ALL_UNITS_ATTACH_NORMAL_DAMAGE_DECREMENT') ;

-- Melee attacks from City and Encampment tiles -10
INSERT OR REPLACE INTO GameModifiers (ModifierId) VALUES ('BW_MOD_MELEE_ATTACKS_FROM_CITIES') ;

-- Cities and Encampments only have range of 1
UPDATE Districts_XP2 SET AttackRange = 1 WHERE DistrictType = 'DISTRICT_CITY_CENTER' OR DistrictType = 'DISTRICT_ENCAMPMENT' ;

-- Remove all MandatoryObsoletes
UPDATE Units SET MandatoryObsoleteTech = NULL, MandatoryObsoleteCivic = NULL ;

-- Make sure Recon units have no combat
UPDATE Units SET Combat = 0 WHERE PromotionClass = 'PROMOTION_CLASS_RECON' ;



-- Recon units moved to support tile layer
UPDATE Units SET FormationClass = 'FORMATION_CLASS_SUPPORT' WHERE PromotionClass = 'PROMOTION_CLASS_RECON' ;

-- All combat units start with a promotion
UPDATE Units SET InitialLevel = 2 WHERE PromotionClass = 'PROMOTION_CLASS_RECON' OR PromotionClass LIKE 'BW%' ;

-- Change starting unit from Warrior to Scout
UPDATE MajorStartingUnits SET Unit = 'UNIT_SCOUT' WHERE Unit = 'UNIT_WARRIOR' AND Era = 'ERA_ANCIENT' ;

-- Heavy Inf requires a population
UPDATE Units SET PopulationCost = 1, PrereqPopulation = 2 WHERE PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY' ;

-- Medic heal rate reduced to 5 (base = 20) because we added the ability for adj units to heal after any action
UPDATE ModifierArguments SET Value = 5 WHERE ModifierId = 'MEDIC_INCREASE_HEAL_RATE' AND Name = 'Amount' ;

-- Nothing has ZOC by default
UPDATE Units SET ZoneOfControl = 0 WHERE UnitType NOT LIKE '%BARBARIAN%' ;

-- Nothing has Priority Attack by default (Priority Attack is "ABILITY_BYPASS_COMBAT_UNIT")
DELETE FROM TypeTags WHERE Type = 'ABILITY_BYPASS_COMBAT_UNIT' ;

-- Remove the +1 movement for starting on clear terrain
DELETE FROM TypeTags WHERE Tag = 'CLASS_HEAVY_CHARIOT' ;

-- Remove Anti-Cavalry and Anti-Anti-Cavalry abilities (we can add ABILITY_ANTI_CAVALRY to specific units later, not sure how a unit would be "anti-spear"...)
DELETE FROM TypeTags WHERE Type = 'ABILITY_ANTI_CAVALRY' OR Type = 'ABILITY_ANTI_SPEAR' ;

-- Remove the reveal stealth tag (we made our own)
DELETE FROM TypeTags WHERE Tag = 'CLASS_REVEAL_STEALTH' ;


-- Tags for arrowhead weaknesses
INSERT INTO Tags 
(Tag,								Vocabulary)
VALUES
('BW_WEAK_TO_BROADHEADS',			'ABILITY_CLASS'),
('BW_WEAK_TO_BARBED_TRILOBATES',	'ABILITY_CLASS')
;


INSERT OR REPLACE INTO TypeTags (Type, Tag)
SELECT UnitType, 'BW_WEAK_TO_BROADHEADS' FROM Units WHERE 
	PromotionClass = 'BW_PROMOTION_CLASS_LIGHT_CAVALRY' OR
	PromotionClass = 'BW_PROMOTION_CLASS_LIGHT_INFANTRY' OR
	PromotionClass = 'BW_PROMOTION_CLASS_LAND_RANGED' OR
	PromotionClass = 'BW_PROMOTION_CLASS_SIEGE' 
;

INSERT OR REPLACE INTO TypeTags (Type, Tag)
SELECT UnitType, 'BW_WEAK_TO_BARBED_TRILOBATES' FROM Units WHERE 
	PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_CAVALRY' OR
	PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY'
;

INSERT OR REPLACE INTO Requirements 
(RequirementId,									RequirementType) 
VALUES
('BW_REQ_OPPONENT_HAS_BROADHEADS_TAG',			'REQUIREMENT_OPPONENT_UNIT_TAG_MATCHES'),
('BW_REQ_OPPONENT_HAS_BARBED_TRILOBATES_TAG',	'REQUIREMENT_OPPONENT_UNIT_TAG_MATCHES')
;

INSERT OR REPLACE INTO RequirementArguments 
(RequirementId,									Name,				Value)
VALUES
('BW_REQ_OPPONENT_HAS_BROADHEADS_TAG',			'Tag',				'BW_WEAK_TO_BROADHEADS'),
('BW_REQ_OPPONENT_HAS_BARBED_TRILOBATES_TAG',	'Tag',				'BW_WEAK_TO_BARBED_TRILOBATES')
;

INSERT OR REPLACE INTO RequirementSets 
(RequirementSetId,							RequirementSetType)
VALUES
('BW_REQSET_LAND_RANGED_BROADHEADS',		'REQUIREMENTSET_TEST_ALL'),
('BW_REQSET_LAND_RANGED_BARBED_TRILOBATES', 'REQUIREMENTSET_TEST_ALL')
;

INSERT OR REPLACE INTO RequirementSetRequirements 
(RequirementSetId,							RequirementId)
VALUES
('BW_REQSET_LAND_RANGED_BROADHEADS',		'BW_REQ_OPPONENT_HAS_BROADHEADS_TAG'),
('BW_REQSET_LAND_RANGED_BROADHEADS',		'DB_REQ_ATTACKING'),
('BW_REQSET_LAND_RANGED_BARBED_TRILOBATES',	'BW_REQ_OPPONENT_HAS_BARBED_TRILOBATES_TAG'),
('BW_REQSET_LAND_RANGED_BARBED_TRILOBATES',	'DB_REQ_ATTACKING')
;



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

