-- REQs based on Promotion Class
INSERT OR REPLACE INTO Requirements (RequirementId, RequirementType) 
SELECT 'BW_REQ_OPPONENT_IS_' || ClassName, 'REQUIREMENT_OPPONENT_UNIT_PROMOTION_CLASS_MATCHES' FROM BW_NewUnitClasses ;

INSERT OR REPLACE INTO RequirementArguments (RequirementId, Name, Value)
SELECT 'BW_REQ_OPPONENT_IS_' || ClassName, 'UnitPromotionClass', 'PROMOTION_CLASS_'  || ClassName FROM BW_NewUnitClasses ;

INSERT OR REPLACE INTO RequirementSets (RequirementSetId, RequirementSetType)
SELECT 'BW_REQSET_OPPONENT_IS_' || ClassName, 'REQUIREMENTSET_TEST_ALL' FROM BW_NewUnitClasses ;

INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT 'BW_REQSET_OPPONENT_IS_' || ClassName, 'BW_REQ_OPPONENT_IS_' || ClassName FROM BW_NewUnitClasses ;


-- Attacking promotion classes
INSERT OR REPLACE INTO RequirementSets (RequirementSetId, RequirementSetType)
SELECT 'BW_REQSET_ATTACKING_' || ClassName, 'REQUIREMENTSET_TEST_ALL' FROM BW_NewUnitClasses ;

INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT 'BW_REQSET_ATTACKING_' || ClassName, 'BW_REQ_OPPONENT_IS_' || ClassName FROM BW_NewUnitClasses ;

INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT 'BW_REQSET_ATTACKING_' || ClassName, 'BW_REQ_ATTACKING' FROM BW_NewUnitClasses ;


-- TODO: REQs based on Unit Tags (see OPPONENT_IS_ANTI_AIR_REQUIREMENT, could use for things like CLASS_ANTI_AIR, CLASS_STEALTH, CLASS_SIEGE, CLASS_SPY, CLASS_SNIPER)

-- REQSETs for Damage Decrements
-- Also consider REQUIREMENT_UNIT_HAS_ABILITY with Inverse = 1 (see "AOE_REQUIRES_NO_TRIPLE_MOVEMENT_ABILITY" in Alexader scenario)
INSERT OR REPLACE INTO RequirementSets
(RequirementSetId,						RequirementSetType)
VALUES
('BW_REQSET_TRIPLE_DAMAGE_DECREMENT',	'REQUIREMENTSET_TEST_ALL') ;

INSERT OR REPLACE INTO RequirementSetRequirements
(RequirementSetId,						RequirementId)
VALUES
('BW_REQSET_TRIPLE_DAMAGE_DECREMENT',	'BW_REQ_DEFENDING'),
('BW_REQSET_TRIPLE_DAMAGE_DECREMENT',	'BW_REQ_OPPONENT_IS_HEAVY_CAVALRY') ;

INSERT OR REPLACE INTO Requirements
(RequirementId,						RequirementType,						Inverse) 
VALUES
('BW_REQ_TRIPLE_DAMAGE_DECREMENT',	'REQUIREMENT_REQUIREMENTSET_IS_MET',	0),
('BW_REQ_NORMAL_DAMAGE_DECREMENT',	'REQUIREMENT_REQUIREMENTSET_IS_MET',	1) ;

INSERT OR REPLACE INTO RequirementArguments
(RequirementId,						Name,				Value)
VALUES
('BW_REQ_TRIPLE_DAMAGE_DECREMENT',	'RequirementSetId',	'BW_REQSET_TRIPLE_DAMAGE_DECREMENT'),
('BW_REQ_NORMAL_DAMAGE_DECREMENT',	'RequirementSetId',	'BW_REQSET_TRIPLE_DAMAGE_DECREMENT') ;

INSERT OR REPLACE INTO RequirementSets
(RequirementSetId,						RequirementSetType)
VALUES
('BW_REQSET_NORMAL_DAMAGE_DECREMENT',	'REQUIREMENTSET_TEST_ALL') ;

INSERT OR REPLACE INTO RequirementSetRequirements
(RequirementSetId,						RequirementId)
VALUES
('BW_REQSET_NORMAL_DAMAGE_DECREMENT',	'BW_REQ_NORMAL_DAMAGE_DECREMENT') ;