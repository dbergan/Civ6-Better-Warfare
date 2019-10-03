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



-----------------------------------------------
-----------------------------------------------
-- Dynamic Modifiers
-----------------------------------------------
-----------------------------------------------

