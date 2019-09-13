INSERT OR REPLACE INTO Requirements
(RequirementId,			RequirementType,					Inverse) 
VALUES
('BW_REQ_ATTACKING',	'REQUIREMENT_PLAYER_IS_ATTACKING',	0),
('BW_REQ_DEFENDING',	'REQUIREMENT_PLAYER_IS_ATTACKING',	1) ;

INSERT OR REPLACE INTO RequirementSets
(RequirementSetId,		RequirementSetType)
VALUES
('BW_REQSET_ATTACKING',	'REQUIREMENTSET_TEST_ALL'),
('BW_REQSET_DEFENDING',	'REQUIREMENTSET_TEST_ALL') ;

INSERT OR REPLACE INTO RequirementSetRequirements
(RequirementSetId,		RequirementId)
VALUES
('BW_REQSET_ATTACKING',	'BW_REQ_ATTACKING'),
('BW_REQSET_DEFENDING',	'BW_REQ_DEFENDING') ;



INSERT OR REPLACE INTO Requirements
(RequirementId,								RequirementType,							Inverse) 
VALUES
('BW_REQ_OPPONENT_IS_LAND_UNIT',			'REQUIREMENT_OPPONENT_UNIT_DOMAIN_MATCHES',	0),
('BW_REQ_OPPONENT_IS_SEA_UNIT',				'REQUIREMENT_OPPONENT_UNIT_DOMAIN_MATCHES',	0),
('BW_REQ_OPPONENT_IS_AIR_UNIT',				'REQUIREMENT_OPPONENT_UNIT_DOMAIN_MATCHES',	0),
('BW_REQ_OPPONENT_IS_CITY_OR_ENCAMPMENT',	'REQUIREMENT_OPPONENT_IS_DISTRICT',			0),
('BW_REQ_OPPONENT_IS_NOT_LAND_UNIT',		'REQUIREMENT_OPPONENT_UNIT_DOMAIN_MATCHES',	1),
('BW_REQ_OPPONENT_IS_NOT_SEA_UNIT',			'REQUIREMENT_OPPONENT_UNIT_DOMAIN_MATCHES',	1),
('BW_REQ_OPPONENT_IS_NOT_AIR_UNIT',			'REQUIREMENT_OPPONENT_UNIT_DOMAIN_MATCHES',	1),
('BW_REQ_OPPONENT_IS_DAMAGED',				'REQUIREMENT_UNIT_DAMAGE_MINIMUM',			0),
('BW_REQ_OPPONENT_IS_WOUNDED',				'REQUIREMENT_OPPONENT_IS_WOUNDED',			0),
('BW_REQ_OPPONENT_IS_FORTIFIED',			'REQUIREMENT_OPPONENT_IS_FORTIFIED',		0),
('BW_REQ_OPPONENT_IS_OTHER_RELIGION',		'REQUIREMENT_OPPONENT_IS_OTHER_RELIGION',	0)
 ;

INSERT OR REPLACE INTO RequirementArguments
(RequirementId,							Name,				Value)
VALUES
('BW_REQ_OPPONENT_IS_LAND_UNIT',		'UnitDomain',		'DOMAIN_LAND'),
('BW_REQ_OPPONENT_IS_SEA_UNIT',			'UnitDomain',		'DOMAIN_SEA'),
('BW_REQ_OPPONENT_IS_AIR_UNIT',			'UnitDomain',		'DOMAIN_AIR'),
('BW_REQ_OPPONENT_IS_NOT_LAND_UNIT',	'UnitDomain',		'DOMAIN_LAND'),
('BW_REQ_OPPONENT_IS_NOT_SEA_UNIT',		'UnitDomain',		'DOMAIN_SEA'),
('BW_REQ_OPPONENT_IS_NOT_AIR_UNIT',		'UnitDomain',		'DOMAIN_AIR'),
('BW_REQ_OPPONENT_IS_DAMAGED',			'MinimumAmount',	1)
 ;


INSERT OR REPLACE INTO RequirementSets
(RequirementSetId,				RequirementSetType)
VALUES
('BW_REQSET_ATTACKING_LAND',	'REQUIREMENTSET_TEST_ALL'),
('BW_REQSET_ATTACKING_SEA',		'REQUIREMENTSET_TEST_ALL'),
('BW_REQSET_ATTACKING_AIR',		'REQUIREMENTSET_TEST_ALL') ;

INSERT OR REPLACE INTO RequirementSetRequirements
(RequirementSetId,				RequirementId)
VALUES
('BW_REQSET_ATTACKING_LAND',	'BW_REQ_OPPONENT_IS_LAND_UNIT'),
('BW_REQSET_ATTACKING_LAND',	'BW_REQ_ATTACKING'),
('BW_REQSET_ATTACKING_SEA',		'BW_REQ_OPPONENT_IS_SEA_UNIT'),
('BW_REQSET_ATTACKING_SEA',		'BW_REQ_ATTACKING'),
('BW_REQSET_ATTACKING_AIR',		'BW_REQ_OPPONENT_IS_AIR_UNIT'),
('BW_REQSET_ATTACKING_AIR',		'BW_REQ_ATTACKING') ;


-- REQs based on Promotion Class
INSERT OR REPLACE INTO Requirements (RequirementId, RequirementType) 
SELECT 'BW_REQ_OPPONENT_IS_' || ClassName, 'REQUIREMENT_OPPONENT_UNIT_PROMOTION_CLASS_MATCHES' FROM BW_NewUnitClasses ;

INSERT OR REPLACE INTO RequirementArguments (RequirementId, Name, Value)
SELECT 'BW_REQ_OPPONENT_IS_' || ClassName, 'UnitPromotionClass', 'PROMOTION_CLASS_'  || ClassName FROM BW_NewUnitClasses ;

INSERT OR REPLACE INTO RequirementSets (RequirementSetId, RequirementSetType)
SELECT 'BW_REQSET_OPPONENT_IS_' || ClassName, 'REQUIREMENTSET_TEST_ALL' FROM BW_NewUnitClasses ;

INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT 'BW_REQSET_OPPONENT_IS_' || ClassName, 'BW_REQ_OPPONENT_IS_' || ClassName FROM BW_NewUnitClasses ;



INSERT OR REPLACE INTO RequirementSets (RequirementSetId, RequirementSetType)
SELECT 'BW_REQSET_ATTACKING_' || ClassName, 'REQUIREMENTSET_TEST_ALL' FROM BW_NewUnitClasses ;

INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT 'BW_REQSET_ATTACKING_' || ClassName, 'BW_REQ_OPPONENT_IS_' || ClassName FROM BW_NewUnitClasses ;

INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT 'BW_REQSET_ATTACKING_' || ClassName, 'BW_REQ_ATTACKING' FROM BW_NewUnitClasses ;


-- TODO: REQs based on Unit Tags (see OPPONENT_IS_ANTI_AIR_REQUIREMENT, could use for things like CLASS_ANTI_AIR, CLASS_STEALTH, CLASS_SIEGE, CLASS_SPY, CLASS_SNIPER)




INSERT INTO Types 
(Type,														Kind) 
VALUES
('BW_ABILITY_MOVE_AFTER_ATTACK',							'KIND_ABILITY'),

('BW_ABILITY_+8CS_ATTACK_SEA',								'KIND_ABILITY'),
('BW_ABILITY_+49CS_ATTACK_SEA',								'KIND_ABILITY'),
('BW_ABILITY_+10CS_ATTACK_LAND',							'KIND_ABILITY'),
('BW_ABILITY_-17CS_ATTACK_SEA',								'KIND_ABILITY'),
('BW_ABILITY_+17CS_ATTACK_SEA',								'KIND_ABILITY'),
('BW_ABILITY_+3CS_ATTACK_NAVAL_MELEE',						'KIND_ABILITY'),

('BW_ABILITY_+10CS_DEFEND',									'KIND_ABILITY'),
('BW_ABILITY_+10CS_ATTACK_HEAVY_INFANTRY',					'KIND_ABILITY'),
('BW_ABILITY_+10CS_ATTACK_ELEPHANT',						'KIND_ABILITY'),
('BW_ABILITY_+900PERCENT_SUPPORT_WHEN_NT_LIGHT_INFANTRY',	'KIND_ABILITY'),
('BW_ABILITY_+900PERCENT_FLANK_WHEN_NT_LIGHT_INFANTRY',		'KIND_ABILITY'),
('BW_ABILITY_+900PERCENT_SUPPORT_WHEN_NT_LIGHT_CAVALRY',	'KIND_ABILITY'),
('BW_ABILITY_+900PERCENT_FLANK_WHEN_NT_LIGHT_CAVALRY',		'KIND_ABILITY'),
('BW_ABILITY_+400PERCENT_SUPPORT_WHEN_NT_RANGED',			'KIND_ABILITY'),
('BW_ABILITY_+400PERCENT_FLANK_WHEN_NT_RANGED',				'KIND_ABILITY'),
('BW_ABILITY_+5CS_TO_ADJACENT_ATTACKING_HEAVY_INFANTRY',	'KIND_ABILITY'), -- archers behind heavy inf
('BW_ABILITY_+5CS_TO_ADJACENT_DEFENDING_HEAVY_INFANTRY',	'KIND_ABILITY'), -- archers behind heavy inf
('BW_ABILITY_TRIPLE_THE_DAMAGED_DECREMENT_WHEN_ATTACKING',	'KIND_ABILITY')
;


INSERT OR REPLACE INTO UnitAbilities
(UnitAbilityType,											Name,																Description)
VALUES	
('BW_ABILITY_MOVE_AFTER_ATTACK',							'LOC_BW_ABILITY_MOVE_AFTER_ATTACK_NAME',							'LOC_BW_ABILITY_MOVE_AFTER_ATTACK_DESCRIPTION'),

('BW_ABILITY_+8CS_ATTACK_SEA',								'LOC_BW_ABILITY_+8CS_ATTACK_SEA_NAME',								'LOC_BW_ABILITY_+8CS_ATTACK_SEA_DESCRIPTION'),			-- Melee, no galley
('BW_ABILITY_+49CS_ATTACK_SEA',								'LOC_BW_ABILITY_+49CS_ATTACK_SEA_NAME',								'LOC_BW_ABILITY_+49CS_ATTACK_SEA_DESCRIPTION'),			-- attack sub
('BW_ABILITY_+10CS_ATTACK_LAND',							'LOC_BW_ABILITY_+10CS_ATTACK_LAND_NAME',							'LOC_BW_ABILITY_+10CS_ATTACK_LAND_DESCRIPTION'),		-- naval ranged
('BW_ABILITY_-17CS_ATTACK_SEA',								'LOC_BW_ABILITY_-17CS_ATTACK_SEA_NAME',								'LOC_BW_ABILITY_-17CS_ATTACK_SEA_DESCRIPTION'),			-- naval bombard
('BW_ABILITY_+17CS_ATTACK_SEA',								'LOC_BW_ABILITY_+17CS_ATTACK_SEA_NAME',								'LOC_BW_ABILITY_+17CS_ATTACK_SEA_DESCRIPTION'),			-- naval raider
('BW_ABILITY_+3CS_ATTACK_NAVAL_MELEE',						'LOC_BW_ABILITY_+3CS_ATTACK_NAVAL_MELEE_NAME',						'LOC_BW_ABILITY_+3CS_ATTACK_NAVAL_MELEE_DESCRIPTION'),	-- naval raider

('BW_ABILITY_+10CS_DEFEND',									'LOC_BW_ABILITY_+10CS_DEFEND_NAME',									'LOC_BW_ABILITY_+10CS_DEFEND_DESCRIPTION'),
('BW_ABILITY_+10CS_ATTACK_HEAVY_INFANTRY',					'LOC_BW_ABILITY_+10CS_ATTACK_HEAVY_INFANTRY_NAME',					'LOC_BW_ABILITY_+10CS_ATTACK_HEAVY_INFANTRY_DESCRIPTION'),
('BW_ABILITY_+10CS_ATTACK_ELEPHANT',						'LOC_BW_ABILITY_+10CS_ATTACK_ELEPHANT_NAME',						'LOC_BW_ABILITY_+10CS_ATTACK_ELEPHANT_DESCRIPTION'),
('BW_ABILITY_+900PERCENT_SUPPORT_WHEN_NT_LIGHT_INFANTRY',	'LOC_BW_ABILITY_+900PERCENT_SUPPORT_WHEN_NT_LIGHT_INFANTRY_NAME',	'LOC_BW_ABILITY_+900PERCENT_SUPPORT_WHEN_NT_LIGHT_INFANTRY_DESCRIPTION'),
('BW_ABILITY_+900PERCENT_FLANKING_WHEN_NT_LIGHT_INFANTRY',	'LOC_BW_ABILITY_+900PERCENT_FLANKING_WHEN_NT_LIGHT_INFANTRY_NAME',	'LOC_BW_ABILITY_+900PERCENT_FLANKING_WHEN_NT_LIGHT_INFANTRY_DESCRIPTION'),
('BW_ABILITY_+900PERCENT_SUPPORT_WHEN_NT_LIGHT_CAVALRY',	'LOC_BW_ABILITY_+900PERCENT_SUPPORT_WHEN_NT_LIGHT_CAVALRY_NAME',	'LOC_BW_ABILITY_+900PERCENT_SUPPORT_WHEN_NT_LIGHT_CAVALRY_DESCRIPTION'),
('BW_ABILITY_+900PERCENT_FLANKING_WHEN_NT_LIGHT_CAVALRY',	'LOC_BW_ABILITY_+900PERCENT_FLANKING_WHEN_NT_LIGHT_CAVALRY_NAME',	'LOC_BW_ABILITY_+900PERCENT_FLANKING_WHEN_NT_LIGHT_CAVALRY_DESCRIPTION'),
('BW_ABILITY_+400PERCENT_SUPPORT_WHEN_NT_RANGED',			'LOC_BW_ABILITY_+400PERCENT_SUPPORT_WHEN_NT_RANGED_NAME',			'LOC_BW_ABILITY_+400PERCENT_SUPPORT_WHEN_NT_RANGED_DESCRIPTION'),
('BW_ABILITY_+400PERCENT_FLANKING_WHEN_NT_RANGED',			'LOC_BW_ABILITY_+400PERCENT_FLANKING_WHEN_NT_RANGED_NAME',			'LOC_BW_ABILITY_+400PERCENT_FLANKING_WHEN_NT_RANGED_DESCRIPTION'),
('BW_ABILITY_+5CS_TO_ADJACENT_ATTACKING_HEAVY_INFANTRY',	'LOC_BW_ABILITY_+5CS_TO_ADJACENT_ATTACKING_HEAVY_INFANTRY_NAME',	'LOC_BW_ABILITY_+5CS_TO_ADJACENT_ATTACKING_HEAVY_INFANTRY_DESCRIPTION'), -- archers behind heavy inf
('BW_ABILITY_+5CS_TO_ADJACENT_DEFENDING_HEAVY_INFANTRY',	'LOC_BW_ABILITY_+5CS_TO_ADJACENT_DEFENDING_HEAVY_INFANTRY_NAME',	'LOC_BW_ABILITY_+5CS_TO_ADJACENT_DEFENDING_HEAVY_INFANTRY_DESCRIPTION'), -- archers behind heavy inf
('BW_ABILITY_TRIPLE_THE_DAMAGED_DECREMENT_WHEN_ATTACKING',	'LOC_BW_ABILITY_TRIPLE_THE_DAMAGED_DECREMENT_WHEN_ATTACKING_NAME',	'LOC_BW_ABILITY_TRIPLE_THE_DAMAGED_DECREMENT_WHEN_ATTACKING_DESCRIPTION')
;

INSERT OR REPLACE INTO UnitAbilityModifiers
(UnitAbilityType,											ModifierId)
VALUES	
('BW_ABILITY_MOVE_AFTER_ATTACK',							'BW_MOD_MOVE_AFTER_ATTACK'),

('BW_ABILITY_+8CS_ATTACK_SEA',								'BW_MOD_+8CS_ATTACK_SEA'),
('BW_ABILITY_+49CS_ATTACK_SEA',								'BW_MOD_+49CS_ATTACK_SEA'),
('BW_ABILITY_+10CS_ATTACK_LAND',							'BW_MOD_+10CS_ATTACK_LAND'),
('BW_ABILITY_-17CS_ATTACK_SEA',								'BW_MOD_-17CS_ATTACK_SEA'),
('BW_ABILITY_+17CS_ATTACK_SEA',								'BW_MOD_+17CS_ATTACK_SEA'),
('BW_ABILITY_+3CS_ATTACK_NAVAL_MELEE',						'BW_MOD_+3CS_ATTACK_NAVAL_MELEE'),

('BW_ABILITY_+10CS_DEFEND',									'BW_MOD_+10CS_DEFEND'),
('BW_ABILITY_+10CS_ATTACK_HEAVY_INFANTRY',					'BW_MOD_+10CS_ATTACK_HEAVY_INFANTRY'),
('BW_ABILITY_+10CS_ATTACK_ELEPHANT',						'BW_MOD_+10CS_ATTACK_ELEPHANT'),
('BW_ABILITY_+900PERCENT_SUPPORT_WHEN_NT_LIGHT_INFANTRY',	'BW_MOD_+900PERCENT_SUPPORT_WHEN_NT_LIGHT_INFANTRY'),
('BW_ABILITY_+900PERCENT_FLANK_WHEN_NT_LIGHT_INFANTRY',		'BW_MOD_+900PERCENT_FLANK_WHEN_NT_LIGHT_INFANTRY'),
('BW_ABILITY_+900PERCENT_SUPPORT_WHEN_NT_LIGHT_CAVALRY',	'BW_MOD_+900PERCENT_SUPPORT_WHEN_NT_LIGHT_CAVALRY'),
('BW_ABILITY_+900PERCENT_FLANK_WHEN_NT_LIGHT_CAVALRY',		'BW_MOD_+900PERCENT_FLANK_WHEN_NT_LIGHT_CAVALRY'),
('BW_ABILITY_+400PERCENT_SUPPORT_WHEN_NT_RANGED',			'BW_MOD_+400PERCENT_SUPPORT_WHEN_NT_RANGED'),
('BW_ABILITY_+400PERCENT_FLANK_WHEN_NT_RANGED',				'BW_MOD_+400PERCENT_FLANK_WHEN_NT_RANGED'),
('BW_ABILITY_+5CS_TO_ADJACENT_ATTACKING_HEAVY_INFANTRY',	'BW_MOD_+5CS_TO_ADJACENT_ATTACKING_HEAVY_INFANTRY'), -- archers behind heavy inf
('BW_ABILITY_+5CS_TO_ADJACENT_DEFENDING_HEAVY_INFANTRY',	'BW_MOD_+5CS_TO_ADJACENT_DEFENDING_HEAVY_INFANTRY'), -- archers behind heavy inf
('BW_ABILITY_TRIPLE_THE_DAMAGED_DECREMENT_WHEN_ATTACKING',	'BW_MOD_')
-- 
-- NATIONALIDENTITY_REDUCESTRENGTHREDUCTIONFORDAMAGE

;

INSERT OR REPLACE INTO Modifiers
(ModifierId,						ModifierType,									SubjectRequirementSetId)
VALUES	
('BW_MOD_MOVE_AFTER_ATTACK',		'MODIFIER_PLAYER_UNIT_ADJUST_ATTACK_AND_MOVE',	null),
('BW_MOD_+8CS_ATTACK_SEA',			'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',			'BW_REQSET_ATTACKING_SEA'),
('BW_MOD_+49CS_ATTACK_SEA',			'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',			'BW_REQSET_ATTACKING_SEA'),
('BW_MOD_+10CS_ATTACK_LAND',		'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',			'BW_REQSET_ATTACKING_LAND'),
('BW_MOD_-17CS_ATTACK_SEA',			'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',			'BW_REQSET_ATTACKING_SEA'),
('BW_MOD_+17CS_ATTACK_SEA',			'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',			'BW_REQSET_ATTACKING_SEA'),
('BW_MOD_+3CS_ATTACK_NAVAL_MELEE',	'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',			'BW_REQSET_ATTACKING_NAVAL_MELEE')

;

/*
('BW_MOD_PUSHBACK_RECON'			'MODIFIER_UNIT_ADJUST_FORCE_RETREAT',			'BW_REQSET_ATTACKING_RECON'),
('BW_MOD_PUSHBACK_LIGHT_INFANTRY'	'MODIFIER_UNIT_ADJUST_FORCE_RETREAT',			'BW_REQSET_ATTACKING_LIGHT_INFANTRY'),
('BW_MOD_PUSHBACK_HEAVY_INFANTRY'	'MODIFIER_UNIT_ADJUST_FORCE_RETREAT',			'BW_REQSET_ATTACKING_HEAVY_INFANTRY'),
('BW_MOD_PUSHBACK_LIGHT_CAVALRY'	'MODIFIER_UNIT_ADJUST_FORCE_RETREAT',			'BW_REQSET_ATTACKING_LIGHT_CAVALRY'),
('BW_MOD_PUSHBACK_HEAVY_CAVALRY'	'MODIFIER_UNIT_ADJUST_FORCE_RETREAT',			'BW_REQSET_ATTACKING_HEAVY_CAVALRY'),
('BW_MOD_PUSHBACK_RANGED'			'MODIFIER_UNIT_ADJUST_FORCE_RETREAT',			'BW_REQSET_ATTACKING_RANGED'),
('BW_MOD_PUSHBACK_SIEGE'			'MODIFIER_UNIT_ADJUST_FORCE_RETREAT',			'BW_REQSET_ATTACKING_SIEGE'),
('BW_MOD_PUSHBACK_MONK'				'MODIFIER_UNIT_ADJUST_FORCE_RETREAT',			'BW_REQSET_ATTACKING_MONK'),
('BW_MOD_PUSHBACK_SUPPORT'			'MODIFIER_UNIT_ADJUST_FORCE_RETREAT',			'BW_REQSET_ATTACKING_SUPPORT'),
('BW_MOD_PUSHBACK_NAVAL_BOMBARD'	'MODIFIER_UNIT_ADJUST_FORCE_RETREAT',			'BW_REQSET_ATTACKING_NAVAL_BOMBARD'),
('BW_MOD_PUSHBACK_NAVAL_CARRIER'	'MODIFIER_UNIT_ADJUST_FORCE_RETREAT',			'BW_REQSET_ATTACKING_NAVAL_CARRIER'),
('BW_MOD_PUSHBACK_NAVAL_RANGED'		'MODIFIER_UNIT_ADJUST_FORCE_RETREAT',			'BW_REQSET_ATTACKING_NAVAL_RANGED'),
('BW_MOD_PUSHBACK_NAVAL_RAIDER'		'MODIFIER_UNIT_ADJUST_FORCE_RETREAT',			'BW_REQSET_ATTACKING_NAVAL_RAIDER') ;
*/

INSERT OR REPLACE INTO ModifierArguments
(ModifierId,						Name,		Value)
VALUES
('BW_MOD_MOVE_AFTER_ATTACK',		'CanMove',	1),
('BW_MOD_+8CS_ATTACK_SEA',			'Amount',	8),
('BW_MOD_+49CS_ATTACK_SEA',			'Amount',	49),
('BW_MOD_+10CS_ATTACK_LAND',		'Amount',	10),
('BW_MOD_-17CS_ATTACK_SEA',			'Amount',	-17),
('BW_MOD_+17CS_ATTACK_SEA',			'Amount',	17),
('BW_MOD_+3CS_ATTACK_NAVAL_MELEE',	'Amount',	3)
/*
('BW_MOD_PUSHBACK_RECON'			'ForceRetreat', 1),
('BW_MOD_PUSHBACK_LIGHT_INF'		'ForceRetreat', 1),
('BW_MOD_PUSHBACK_HEAVY_INF'		'ForceRetreat', 1),
('BW_MOD_PUSHBACK_LIGHT_CAV'		'ForceRetreat', 1),
('BW_MOD_PUSHBACK_HEAVY_CAV'		'ForceRetreat', 1),
('BW_MOD_PUSHBACK_RANGED'			'ForceRetreat', 1),
('BW_MOD_PUSHBACK_SIEGE'			'ForceRetreat', 1),
('BW_MOD_PUSHBACK_MONK'				'ForceRetreat', 1),
('BW_MOD_PUSHBACK_SUPPORT'			'ForceRetreat', 1),
('BW_MOD_PUSHBACK_NAVAL_BOMBARD'	'ForceRetreat', 1),
('BW_MOD_PUSHBACK_NAVAL_CARRIER'	'ForceRetreat', 1),
('BW_MOD_PUSHBACK_NAVAL_RANGED'		'ForceRetreat', 1),
('BW_MOD_PUSHBACK_NAVAL_RAIDER'		'ForceRetreat', 1)
*/

 ;

INSERT OR REPLACE INTO ModifierStrings
(ModifierId,						Context,	Text)
VALUES	
('BW_MOD_+8CS_ATTACK_SEA',			'Preview',	'LOC_BW_MOD_+8CS_ATTACK_SEA_PREVIEW'),
('BW_MOD_+49CS_ATTACK_SEA',			'Preview',	'LOC_BW_MOD_+49CS_ATTACK_SEA_PREVIEW'),
('BW_MOD_+10CS_ATTACK_LAND',		'Preview',	'LOC_BW_MOD_+10CS_ATTACK_LAND_PREVIEW'),
('BW_MOD_-17CS_ATTACK_SEA',			'Preview',	'LOC_BW_MOD_-17CS_ATTACK_SEA_PREVIEW'),
('BW_MOD_+17CS_ATTACK_SEA',			'Preview',	'LOC_BW_MOD_+17CS_ATTACK_SEA_PREVIEW'),
('BW_MOD_+3CS_ATTACK_NAVAL_MELEE',	'Preview',	'LOC_BW_MOD_+3CS_ATTACK_NAVAL_MELEE_PREVIEW') ;






INSERT OR REPLACE INTO Tags	
(Tag,								Vocabulary)
VALUES
('BW_CLASS_JUST_NAVAL_RANGED',		'ABILITY_CLASS'),
('BW_CLASS_NAVAL_MELEE_NO_GALLEY',	'ABILITY_CLASS') ;


INSERT OR REPLACE INTO TypeTags
(Type,						Tag)
VALUES
('UNIT_COG',				'BW_CLASS_NAVAL_MELEE_NO_GALLEY'),
('UNIT_CARAVEL',			'BW_CLASS_NAVAL_MELEE_NO_GALLEY'),
('UNIT_CORVETTE',			'BW_CLASS_NAVAL_MELEE_NO_GALLEY'),
('UNIT_IRONCLAD',			'BW_CLASS_NAVAL_MELEE_NO_GALLEY'),
('UNIT_TORPEDO_GUNBOAT',	'BW_CLASS_NAVAL_MELEE_NO_GALLEY'),
('UNIT_DESTROYER',			'BW_CLASS_NAVAL_MELEE_NO_GALLEY'),
('UNIT_ATTACK_SUBMARINE',	'BW_CLASS_NAVAL_MELEE_NO_GALLEY'),
('UNIT_MISSILE_DESTROYER',	'BW_CLASS_NAVAL_MELEE_NO_GALLEY'),

('UNIT_QUADRIREME',			'BW_CLASS_JUST_NAVAL_RANGED'),
('UNIT_GALLEASS',			'BW_CLASS_JUST_NAVAL_RANGED'),
('UNIT_FRIGATE',			'BW_CLASS_JUST_NAVAL_RANGED'),
('UNIT_ARMORED_CRUISER',	'BW_CLASS_JUST_NAVAL_RANGED'),
('UNIT_LIGHT_CRUISER',		'BW_CLASS_JUST_NAVAL_RANGED'),
('UNIT_BATTLECRUISER',		'BW_CLASS_JUST_NAVAL_RANGED'),
('UNIT_MISSILE_CRUISER',	'BW_CLASS_JUST_NAVAL_RANGED'),

('BW_ABILITY_NAVAL_MELEE_NO_GALLEY_ATTACKING_SEA',	'BW_CLASS_NAVAL_MELEE_NO_GALLEY'),
('BW_ABILITY_ATTACK_SUB_ATTACKING_SEA',				'CLASS_ATTACK_SUBMARINE'),
('BW_ABILITY_NAVAL_RANGED_ATTACKING_LAND',			'BW_CLASS_JUST_NAVAL_RANGED'),
('BW_ABILITY_NAVAL_RANGED_ATTACKING_SEA',			'BW_CLASS_JUST_NAVAL_RANGED'),
('BW_ABILITY_NAVAL_BOMBARD_ATTACKING_SEA',			'CLASS_NAVAL_BOMBARD'),
('BW_ABILITY_NAVAL_RAIDER_MOVE_AFTER_ATTACK',		'CLASS_NAVAL_RAIDER'),
('BW_ABILITY_NAVAL_RAIDER_ATTACKING_SEA',			'CLASS_NAVAL_RAIDER'),
('BW_ABILITY_NAVAL_RAIDER_ATTACKING_NAVAL_MELEE',	'CLASS_NAVAL_RAIDER') ;