DROP TABLE IF EXISTS BW_NewUnitClasses ;
CREATE TABLE BW_NewUnitClasses (ClassName VARCHAR) ;

INSERT INTO BW_NewUnitClasses
(ClassName)
VALUES
('AIR_ATTACK'),
('AIR_BOMBER'),
('AIR_FIGHTER'),
('ANTIAIR'),
('DEFENSIVE_GUN'),
('ELEPHANT'),
('GIANT_DEATH_ROBOT'),
('HEAVY_CAVALRY'),
('HEAVY_INFANTRY'),
('LAND_RANGED'),
('LIGHT_CAVALRY'),
('LIGHT_INFANTRY'),
('MARINE'),
('MONK'),
('NAVAL_BOMBARD'),
('NAVAL_CARRIER'),
('NAVAL_MELEE'),
('NAVAL_RAIDER'),
('NAVAL_RANGED'),
('RECON'),
('SIEGE'),
('SUPPORT')
;



-----------------------------------------------
-----------------------------------------------
-- Tags
-----------------------------------------------
-----------------------------------------------

-- Create new ability class tags for each unit class
INSERT INTO Tags (Tag, Vocabulary)
SELECT 'BW_CLASS_' || ClassName, 'ABILITY_CLASS' FROM BW_NewUnitClasses ;



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



-----------------------------------------------
-----------------------------------------------
-- Requirements
-----------------------------------------------
-----------------------------------------------

-- REQs based on Promotion Class
INSERT OR REPLACE INTO Requirements (RequirementId, RequirementType) 
SELECT 'BW_REQ_IS_' || ClassName, 'REQUIREMENT_UNIT_PROMOTION_CLASS_MATCHES' FROM BW_NewUnitClasses ;

INSERT OR REPLACE INTO RequirementArguments (RequirementId, Name, Value)
SELECT 'BW_REQ_IS_' || ClassName, 'UnitPromotionClass', CASE ClassName WHEN 'RECON' THEN 'PROMOTION_CLASS_' ELSE 'BW_PROMOTION_CLASS_' END  || ClassName FROM BW_NewUnitClasses ;

INSERT OR REPLACE INTO RequirementSets (RequirementSetId, RequirementSetType)
SELECT 'BW_REQSET_IS_' || ClassName, 'REQUIREMENTSET_TEST_ALL' FROM BW_NewUnitClasses ;

INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT 'BW_REQSET_IS_' || ClassName, 'BW_REQ_IS_' || ClassName FROM BW_NewUnitClasses ;


-- Anything but a [Promotion Class]
INSERT OR REPLACE INTO Requirements (RequirementId, RequirementType, Inverse) 
SELECT 'BW_REQ_ANYTHING_BUT_A_' || ClassName, 'REQUIREMENT_UNIT_PROMOTION_CLASS_MATCHES', 1 FROM BW_NewUnitClasses ;

INSERT OR REPLACE INTO RequirementArguments (RequirementId, Name, Value)
SELECT 'BW_REQ_ANYTHING_BUT_A_' || ClassName, 'UnitPromotionClass', CASE ClassName WHEN 'RECON' THEN 'PROMOTION_CLASS_' ELSE 'BW_PROMOTION_CLASS_' END  || ClassName FROM BW_NewUnitClasses ;

INSERT OR REPLACE INTO RequirementSets (RequirementSetId, RequirementSetType)
SELECT 'BW_REQSET_ANYTHING_BUT_A_' || ClassName, 'REQUIREMENTSET_TEST_ALL' FROM BW_NewUnitClasses ;

INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT 'BW_REQSET_ANYTHING_BUT_A_' || ClassName, 'BW_REQ_ANYTHING_BUT_A_' || ClassName FROM BW_NewUnitClasses ;



-- Opponent is Promotion Class
INSERT OR REPLACE INTO Requirements (RequirementId, RequirementType) 
SELECT 'BW_REQ_OPPONENT_IS_' || ClassName, 'REQUIREMENT_OPPONENT_UNIT_PROMOTION_CLASS_MATCHES' FROM BW_NewUnitClasses ;

INSERT OR REPLACE INTO RequirementArguments (RequirementId, Name, Value)
SELECT 'BW_REQ_OPPONENT_IS_' || ClassName, 'UnitPromotionClass', CASE ClassName WHEN 'RECON' THEN 'PROMOTION_CLASS_' ELSE 'BW_PROMOTION_CLASS_' END  || ClassName FROM BW_NewUnitClasses ;

INSERT OR REPLACE INTO RequirementSets (RequirementSetId, RequirementSetType)
SELECT 'BW_REQSET_OPPONENT_IS_' || ClassName, 'REQUIREMENTSET_TEST_ALL' FROM BW_NewUnitClasses ;

INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT 'BW_REQSET_OPPONENT_IS_' || ClassName, 'BW_REQ_OPPONENT_IS_' || ClassName FROM BW_NewUnitClasses ;


-- Opponent has Tag
INSERT OR REPLACE INTO Requirements (RequirementId, RequirementType) 
SELECT 'BW_REQ_OPPONENT_HAS_' || ClassName || '_TAG', 'REQUIREMENT_OPPONENT_UNIT_TAG_MATCHES' FROM BW_NewUnitClasses ;

INSERT OR REPLACE INTO RequirementArguments (RequirementId, Name, Value)
SELECT 'BW_REQ_OPPONENT_HAS_' || ClassName || '_TAG', 'Tag', 'BW_CLASS_' || ClassName FROM BW_NewUnitClasses ;

INSERT OR REPLACE INTO RequirementSets (RequirementSetId, RequirementSetType)
SELECT 'BW_REQSET_OPPONENT_HAS_' || ClassName || '_TAG', 'REQUIREMENTSET_TEST_ALL' FROM BW_NewUnitClasses ;

INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT 'BW_REQSET_OPPONENT_HAS_' || ClassName || '_TAG', 'BW_REQ_OPPONENT_HAS_' || ClassName || '_TAG' FROM BW_NewUnitClasses ;



-- Attacking promotion classes
INSERT OR REPLACE INTO RequirementSets (RequirementSetId, RequirementSetType)
SELECT 'BW_REQSET_ATTACKING_' || ClassName, 'REQUIREMENTSET_TEST_ALL' FROM BW_NewUnitClasses ;

INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT 'BW_REQSET_ATTACKING_' || ClassName, 'BW_REQ_OPPONENT_IS_' || ClassName FROM BW_NewUnitClasses ;

INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT 'BW_REQSET_ATTACKING_' || ClassName, 'DB_REQ_ATTACKING' FROM BW_NewUnitClasses ;


-- Defending promotion classes
INSERT OR REPLACE INTO RequirementSets (RequirementSetId, RequirementSetType)
SELECT 'BW_REQSET_DEFENDING_' || ClassName, 'REQUIREMENTSET_TEST_ALL' FROM BW_NewUnitClasses ;

INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT 'BW_REQSET_DEFENDING_' || ClassName, 'BW_REQ_OPPONENT_IS_' || ClassName FROM BW_NewUnitClasses ;

INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT 'BW_REQSET_DEFENDING_' || ClassName, 'DB_REQ_DEFENDING' FROM BW_NewUnitClasses ;



-- Next to friendly units of type...
INSERT OR REPLACE INTO Requirements (RequirementId, RequirementType) 
SELECT 'BW_REQ_NT_FRIENDLY_' || ClassName, 'REQUIREMENT_PLOT_ADJACENT_FRIENDLY_UNIT_TAG_MATCHES' FROM BW_NewUnitClasses ;

INSERT OR REPLACE INTO RequirementArguments (RequirementId, Name, Value)
SELECT 'BW_REQ_NT_FRIENDLY_' || ClassName, 'Tag', 'BW_CLASS_' || ClassName FROM BW_NewUnitClasses ;

INSERT OR REPLACE INTO RequirementSets (RequirementSetId, RequirementSetType)
SELECT 'BW_REQSET_NT_FRIENDLY_' || ClassName, 'REQUIREMENTSET_TEST_ALL' FROM BW_NewUnitClasses ;

INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT 'BW_REQSET_NT_FRIENDLY_' || ClassName, 'BW_REQ_OPPONENT_IS_' || ClassName FROM BW_NewUnitClasses ;


-- Is a ___ AND same-tile as owner...
INSERT OR REPLACE INTO RequirementSets (RequirementSetId, RequirementSetType)
SELECT 'BW_REQSET_IS_' || ClassName || '_AND_SAME_TILE_AS_OWNER', 'REQUIREMENTSET_TEST_ALL' FROM BW_NewUnitClasses ;

INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT 'BW_REQSET_IS_' || ClassName || '_AND_SAME_TILE_AS_OWNER', 'BW_REQ_IS_' || ClassName FROM BW_NewUnitClasses ;

INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT 'BW_REQSET_IS_' || ClassName || '_AND_SAME_TILE_AS_OWNER', 'DB_REQ_SAME_TILE_AS_OWNER' FROM BW_NewUnitClasses ;

-- Is a ___ AND adjacent-to owner...
INSERT OR REPLACE INTO RequirementSets (RequirementSetId, RequirementSetType)
SELECT 'BW_REQSET_IS_' || ClassName || '_AND_ADJACENT_TO_OWNER', 'REQUIREMENTSET_TEST_ALL' FROM BW_NewUnitClasses ;

INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT 'BW_REQSET_IS_' || ClassName || '_AND_ADJACENT_TO_OWNER', 'BW_REQ_IS_' || ClassName FROM BW_NewUnitClasses ;

INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT 'BW_REQSET_IS_' || ClassName || '_AND_ADJACENT_TO_OWNER', 'DB_REQ_ADJACENT_TO_OWNER' FROM BW_NewUnitClasses ;

-- Is a ___ AND (same-tile OR adjacent-to) owner...
INSERT OR REPLACE INTO RequirementSets (RequirementSetId, RequirementSetType)
SELECT 'BW_REQSET_IS_' || ClassName || '_AND_ADJACENT_TO_OR_SAME_TILE_AS_OWNER', 'REQUIREMENTSET_TEST_ALL' FROM BW_NewUnitClasses ;

INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT 'BW_REQSET_IS_' || ClassName || '_AND_ADJACENT_TO_OR_SAME_TILE_AS_OWNER', 'BW_REQ_IS_' || ClassName FROM BW_NewUnitClasses ;

INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT 'BW_REQSET_IS_' || ClassName || '_AND_ADJACENT_TO_OR_SAME_TILE_AS_OWNER', 'DB_REQ_ADJACENT_TO_OR_SAME_TILE_AS_OWNER' FROM BW_NewUnitClasses ;


-- Anything but a ___ AND same-tile as owner...
INSERT OR REPLACE INTO RequirementSets (RequirementSetId, RequirementSetType)
SELECT 'BW_REQSET_ANYTHING_BUT_A_' || ClassName || '_AND_SAME_TILE_AS_OWNER', 'REQUIREMENTSET_TEST_ALL' FROM BW_NewUnitClasses ;

INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT 'BW_REQSET_ANYTHING_BUT_A_' || ClassName || '_AND_SAME_TILE_AS_OWNER', 'BW_REQ_ANYTHING_BUT_A_' || ClassName FROM BW_NewUnitClasses ;

INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT 'BW_REQSET_ANYTHING_BUT_A_' || ClassName || '_AND_SAME_TILE_AS_OWNER', 'DB_REQ_SAME_TILE_AS_OWNER' FROM BW_NewUnitClasses ;

-- Anything but a ___ AND adjacent-to owner...
INSERT OR REPLACE INTO RequirementSets (RequirementSetId, RequirementSetType)
SELECT 'BW_REQSET_ANYTHING_BUT_A_' || ClassName || '_AND_ADJACENT_TO_OWNER', 'REQUIREMENTSET_TEST_ALL' FROM BW_NewUnitClasses ;

INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT 'BW_REQSET_ANYTHING_BUT_A_' || ClassName || '_AND_ADJACENT_TO_OWNER', 'BW_REQ_ANYTHING_BUT_A_' || ClassName FROM BW_NewUnitClasses ;

INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT 'BW_REQSET_ANYTHING_BUT_A_' || ClassName || '_AND_ADJACENT_TO_OWNER', 'DB_REQ_ADJACENT_TO_OWNER' FROM BW_NewUnitClasses ;

-- Anything but a ___ AND (same-tile OR adjacent-to) owner...
INSERT OR REPLACE INTO RequirementSets (RequirementSetId, RequirementSetType)
SELECT 'BW_REQSET_ANYTHING_BUT_A_' || ClassName || '_AND_ADJACENT_TO_OR_SAME_TILE_AS_OWNER', 'REQUIREMENTSET_TEST_ALL' FROM BW_NewUnitClasses ;

INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT 'BW_REQSET_ANYTHING_BUT_A_' || ClassName || '_AND_ADJACENT_TO_OR_SAME_TILE_AS_OWNER', 'BW_REQ_ANYTHING_BUT_A_' || ClassName FROM BW_NewUnitClasses ;

INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT 'BW_REQSET_ANYTHING_BUT_A_' || ClassName || '_AND_ADJACENT_TO_OR_SAME_TILE_AS_OWNER', 'DB_REQ_ADJACENT_TO_OR_SAME_TILE_AS_OWNER' FROM BW_NewUnitClasses ;


-- TODO: REQs based on Unit Tags (see OPPONENT_IS_ANTI_AIR_REQUIREMENT, could use for things like CLASS_ANTI_AIR, CLASS_STEALTH, CLASS_SIEGE, CLASS_SPY, CLASS_SNIPER)



-- Modifier-specific REQSETs
INSERT OR REPLACE INTO Requirements 
(RequirementId,									RequirementType) 
VALUES
('BW_REQ_IN_FORT',								'REQUIREMENT_PLOT_ADJACENT_IMPROVEMENT_TYPE_MATCHES'),
('BW_REQ_IN_ROMAN_FORT',						'REQUIREMENT_PLOT_ADJACENT_IMPROVEMENT_TYPE_MATCHES'),
('BW_REQ_IN_MAORI_PA',							'REQUIREMENT_PLOT_ADJACENT_IMPROVEMENT_TYPE_MATCHES'),
('BW_REQ_IN_ALCAZAR',							'REQUIREMENT_PLOT_ADJACENT_IMPROVEMENT_TYPE_MATCHES'),
('BW_REQ_IN_CITY_CENTER',						'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES'),
('BW_REQ_IN_ENCAMPMENT',						'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES')
;

INSERT OR REPLACE INTO RequirementArguments 
(RequirementId,									Name,				Value)
VALUES
('BW_REQ_IN_FORT',								'ImprovementType',	'IMPROVEMENT_FORT'),
('BW_REQ_IN_FORT',								'MaxRange',			0),
('BW_REQ_IN_FORT',								'MinRange',			0),
('BW_REQ_IN_ROMAN_FORT',						'ImprovementType',	'IMPROVEMENT_ROMAN_FORT'),
('BW_REQ_IN_ROMAN_FORT',						'MaxRange',			0),
('BW_REQ_IN_ROMAN_FORT',						'MinRange',			0),
('BW_REQ_IN_MAORI_PA',							'ImprovementType',	'IMPROVEMENT_MAORI_PA'),
('BW_REQ_IN_MAORI_PA',							'MaxRange',			0),
('BW_REQ_IN_MAORI_PA',							'MinRange',			0),
('BW_REQ_IN_ALCAZAR',							'ImprovementType',	'IMPROVEMENT_ALCAZAR'),
('BW_REQ_IN_ALCAZAR',							'MaxRange',			0),
('BW_REQ_IN_ALCAZAR',							'MinRange',			0),
('BW_REQ_IN_CITY_CENTER',						'DistrictType',		'DISTRICT_CITY_CENTER'),
('BW_REQ_IN_CITY_CENTER',						'MaxRange',			0),
('BW_REQ_IN_CITY_CENTER',						'MinRange',			0),
('BW_REQ_IN_ENCAMPMENT',						'DistrictType',		'DISTRICT_ENCAMPMENT'),
('BW_REQ_IN_ENCAMPMENT',						'MaxRange',			0),
('BW_REQ_IN_ENCAMPMENT',						'MinRange',			0)
;

INSERT OR REPLACE INTO RequirementSets 
(RequirementSetId,							RequirementSetType)
VALUES
('BW_REQSET_IN_CITY',						'REQUIREMENTSET_TEST_ALL'),
('BW_REQSET_IN_CITY_ENCAMPMENT_OR_FORT',	'REQUIREMENTSET_TEST_ANY')
;

INSERT OR REPLACE INTO RequirementSetRequirements 
(RequirementSetId,							RequirementId)
VALUES
('BW_REQSET_IN_CITY',						'BW_REQ_IN_CITY_CENTER'),
('BW_REQSET_IN_CITY_ENCAMPMENT_OR_FORT',	'BW_REQ_IN_CITY_CENTER'),
('BW_REQSET_IN_CITY_ENCAMPMENT_OR_FORT',	'BW_REQ_IN_ENCAMPMENT'),
('BW_REQSET_IN_CITY_ENCAMPMENT_OR_FORT',	'BW_REQ_IN_FORT'),
('BW_REQSET_IN_CITY_ENCAMPMENT_OR_FORT',	'BW_REQ_IN_ROMAN_FORT'),
('BW_REQSET_IN_CITY_ENCAMPMENT_OR_FORT',	'BW_REQ_IN_MAORI_PA'),
('BW_REQSET_IN_CITY_ENCAMPMENT_OR_FORT',	'BW_REQ_IN_ALCAZAR')
;



-----------------------------------------------
-----------------------------------------------
-- Dynamic Modifiers
-----------------------------------------------
-----------------------------------------------

