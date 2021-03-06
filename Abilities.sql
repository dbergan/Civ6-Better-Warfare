INSERT OR REPLACE INTO Types 
(Type,																Kind) 
VALUES
-- ('BW_ABILITY_MEDIC_ADJ_UNITS_HEAL_AFTER_ACTION',					'KIND_ABILITY'),

('BW_ABILITY_HEAVY_CAVALRY_HAMMER_AND_ANVIL_NAILQ',					'KIND_ABILITY'),
('BW_ABILITY_HEAVY_CAVALRY_HAMMER_AND_ANVIL_ANVIL',					'KIND_ABILITY'),
('BW_ABILITY_HEAVY_CAVALRY_HAMMER_AND_ANVIL_NAILA',					'KIND_ABILITY'),

('BW_ABILITY_LIGHT_INFANTRY_FLANK_GUARD_NT_LAND_MELEE_ATTACKER',	'KIND_ABILITY'),
('BW_ABILITY_LIGHT_INFANTRY_SCREEN_NT_LAND_MELEE_ATTACKER',			'KIND_ABILITY'),

('BW_ABILITY_RECON_TROOP_INTEL_DAMAGE_DECREMENT',					'KIND_ABILITY'),

-- ('BW_ABILITY_WARRIOR_MONKS_DISCIPLES',								'KIND_ABILITY'),

('BW_ABILITY_SEE_THROUGH_TERRAIN',									'KIND_ABILITY'),
('BW_ABILITY_REVEAL_STEALTH',										'KIND_ABILITY'),
('BW_ABILITY_DOUBLE_STRIKE',										'KIND_ABILITY'),
('BW_ABILITY_SURVIVALIST',											'KIND_ABILITY'),


('BW_ABILITY_GAIN_EXP_FROM_ADJACENT_BATTLES',						'KIND_ABILITY')		-- Implemented in BW_Combat.lua (no sql modifer attached to this ability). The ability is here just so that the units have the description on their combat panel.
;

INSERT OR REPLACE INTO UnitAbilities
(UnitAbilityType,													Inactive,	Name,																		Description)
VALUES	
('BW_ABILITY_HEAVY_CAVALRY_HAMMER_AND_ANVIL_NAILQ',					1,			'BW_LOC_ABILITY_HEAVY_CAVALRY_HAMMER_AND_ANVIL_NAILQ_NAME',					'BW_LOC_ABILITY_HEAVY_CAVALRY_HAMMER_AND_ANVIL_NAILQ_DESCRIPTION'),
('BW_ABILITY_HEAVY_CAVALRY_HAMMER_AND_ANVIL_ANVIL',					1,			'BW_LOC_ABILITY_HEAVY_CAVALRY_HAMMER_AND_ANVIL_ANVIL_NAME',					'BW_LOC_ABILITY_HEAVY_CAVALRY_HAMMER_AND_ANVIL_ANVIL_DESCRIPTION'),
('BW_ABILITY_HEAVY_CAVALRY_HAMMER_AND_ANVIL_NAILA',					1,			'BW_LOC_ABILITY_HEAVY_CAVALRY_HAMMER_AND_ANVIL_NAILA_NAME',					'BW_LOC_ABILITY_HEAVY_CAVALRY_HAMMER_AND_ANVIL_NAILA_DESCRIPTION'),

('BW_ABILITY_RECON_TROOP_INTEL_DAMAGE_DECREMENT',					1,			'BW_LOC_ABILITY_RECON_TROOP_INTEL_DAMAGE_DECREMENT_NAME',					'BW_LOC_ABILITY_RECON_TROOP_INTEL_DAMAGE_DECREMENT_DESCRIPTION'),

('BW_ABILITY_LIGHT_INFANTRY_FLANK_GUARD_NT_LAND_MELEE_ATTACKER',	1,			'BW_LOC_ABILITY_LIGHT_INFANTRY_FLANK_GUARD_NT_LAND_MELEE_ATTACKER_NAME',	'BW_LOC_ABILITY_LIGHT_INFANTRY_FLANK_GUARD_NT_LAND_MELEE_ATTACKER_DESCRIPTION'),
('BW_ABILITY_LIGHT_INFANTRY_SCREEN_NT_LAND_MELEE_ATTACKER',			1,			'BW_LOC_ABILITY_LIGHT_INFANTRY_SCREEN_NT_LAND_MELEE_ATTACKER_NAME',			'BW_LOC_ABILITY_LIGHT_INFANTRY_SCREEN_NT_LAND_MELEE_ATTACKER_DESCRIPTION'),

-- ('BW_ABILITY_WARRIOR_MONKS_DISCIPLES',								0,			'BW_LOC_ABILITY_WARRIOR_MONKS_DISCIPLES_NAME',								'BW_LOC_ABILITY_WARRIOR_MONKS_DISCIPLES_DESCRIPTION'),
-- ('BW_ABILITY_MEDIC_ADJ_UNITS_HEAL_AFTER_ACTION',					0,			'BW_LOC_ABILITY_MEDIC_ADJ_UNITS_HEAL_AFTER_ACTION_NAME',					'BW_LOC_ABILITY_MEDIC_ADJ_UNITS_HEAL_AFTER_ACTION_DESCRIPTION'),


('BW_ABILITY_SEE_THROUGH_TERRAIN',									0,			'BW_LOC_ABILITY_SEE_THROUGH_TERRAIN_NAME',									'BW_LOC_ABILITY_SEE_THROUGH_TERRAIN_DESCRIPTION'),
('BW_ABILITY_REVEAL_STEALTH',										0,			'BW_LOC_ABILITY_REVEAL_STEALTH_NAME',										'BW_LOC_ABILITY_REVEAL_STEALTH_DESCRIPTION'),
('BW_ABILITY_DOUBLE_STRIKE',										0,			'BW_LOC_ABILITY_DOUBLE_STRIKE_NAME',										'BW_LOC_ABILITY_DOUBLE_STRIKE_DESCRIPTION'),
('BW_ABILITY_SURVIVALIST',											0,			'BW_LOC_ABILITY_SURVIVALIST_NAME',											'BW_LOC_ABILITY_SURVIVALIST_DESCRIPTION'),

('BW_ABILITY_GAIN_EXP_FROM_ADJACENT_BATTLES',						0,			'BW_LOC_ABILITY_GAIN_EXP_FROM_ADJACENT_BATTLES_NAME',						'BW_LOC_ABILITY_GAIN_EXP_FROM_ADJACENT_BATTLES_DESCRIPTION')
;

INSERT OR REPLACE INTO UnitAbilityModifiers
(UnitAbilityType,													ModifierId)
VALUES	
('BW_ABILITY_HEAVY_CAVALRY_HAMMER_AND_ANVIL_NAILQ',					'BW_MOD_HEAVY_CAVALRY_HAMMER_AND_ANVIL_NAILQ'),
('BW_ABILITY_HEAVY_CAVALRY_HAMMER_AND_ANVIL_ANVIL',					'BW_MOD_HEAVY_CAVALRY_HAMMER_AND_ANVIL_ANVIL'),
('BW_ABILITY_HEAVY_CAVALRY_HAMMER_AND_ANVIL_NAILA',					'BW_MOD_HEAVY_CAVALRY_HAMMER_AND_ANVIL_NAILA'),

('BW_ABILITY_RECON_TROOP_INTEL_DAMAGE_DECREMENT',					'BW_MOD_RECON_TROOP_INTEL_PREVIEW'),

('BW_ABILITY_LIGHT_INFANTRY_FLANK_GUARD_NT_LAND_MELEE_ATTACKER',	'BW_MOD_LIGHT_INFANTRY_FLANK_GUARD_NT_LAND_MELEE_ATTACKER'),
('BW_ABILITY_LIGHT_INFANTRY_SCREEN_NT_LAND_MELEE_ATTACKER',			'BW_MOD_LIGHT_INFANTRY_SCREEN_NT_LAND_MELEE_ATTACKER'),

-- ('BW_ABILITY_WARRIOR_MONKS_DISCIPLES',								'BW_MOD_WARRIOR_MONKS_DISCIPLES_SELF'),
--('BW_ABILITY_WARRIOR_MONKS_DISCIPLES',								'BW_MOD_WARRIOR_MONKS_ADJ_UNITS_DISCIPLES'),
--('BW_ABILITY_MEDIC_ADJ_UNITS_HEAL_AFTER_ACTION',					'BW_MOD_MEDIC_ADJ_UNITS_HEAL_AFTER_ACTION'),

('BW_ABILITY_SEE_THROUGH_TERRAIN',									'BW_MOD_SEE_THROUGH_TERRAIN'),
('BW_ABILITY_REVEAL_STEALTH',										'BW_MOD_REVEAL_STEALTH'),
('BW_ABILITY_DOUBLE_STRIKE',										'BW_MOD_EXTRA_ATTACK'),
('BW_ABILITY_DOUBLE_STRIKE',										'BW_MOD_MOVE_AFTER_ATTACK'),
('BW_ABILITY_SURVIVALIST',											'BW_MOD_HEAL_AFTER_ACTION')
;


INSERT OR REPLACE INTO TypeTags
(Type,																Tag)
VALUES
('BW_ABILITY_HEAVY_CAVALRY_HAMMER_AND_ANVIL_NAILQ',					'DB_CLASS_LAND_COMBAT'),
('BW_ABILITY_HEAVY_CAVALRY_HAMMER_AND_ANVIL_ANVIL',					'BW_CLASS_HEAVY_INFANTRY'),
('BW_ABILITY_HEAVY_CAVALRY_HAMMER_AND_ANVIL_NAILA',					'DB_CLASS_LAND_COMBAT'),

('BW_ABILITY_RECON_TROOP_INTEL_DAMAGE_DECREMENT',					'DB_CLASS_ALL'),

('BW_ABILITY_LIGHT_INFANTRY_FLANK_GUARD_NT_LAND_MELEE_ATTACKER',	'BW_CLASS_LIGHT_INFANTRY'),
('BW_ABILITY_LIGHT_INFANTRY_SCREEN_NT_LAND_MELEE_ATTACKER',			'BW_CLASS_LIGHT_INFANTRY'),

('BW_ABILITY_REVEAL_STEALTH',										'BW_CLASS_RECON'),
('BW_ABILITY_SEE_THROUGH_TERRAIN',									'BW_CLASS_RECON'),

-- ('BW_ABILITY_MEDIC_ADJ_UNITS_HEAL_AFTER_ACTION',					'CLASS_MEDIC'),
-- ('BW_ABILITY_WARRIOR_MONKS_DISCIPLES',								'BW_CLASS_MONK'),
-- ('BW_ABILITY_DOUBLE_STRIKE',										'BW_CLASS_MONK'),

('BW_ABILITY_GAIN_EXP_FROM_ADJACENT_BATTLES',						'BW_CLASS_RECON'),
('BW_ABILITY_GAIN_EXP_FROM_ADJACENT_BATTLES',						'DB_CLASS_LAND_COMBAT'),
('BW_ABILITY_GAIN_EXP_FROM_ADJACENT_BATTLES',						'DB_CLASS_NAVAL_COMBAT')
;


-- REQS based on having/not-having abilities
-- Modifier applies when unit has (doesn't have) ability
INSERT OR REPLACE INTO Requirements
(RequirementId,														RequirementType,						Inverse) 
VALUES
('BW_REQ_DOESNT_HAVE_RECON_TROOP_INTEL_DAMAGE_DECREMENT_ABILITY',	'REQUIREMENT_UNIT_HAS_ABILITY',			1),
('BW_REQ_HAS_NAILQ_ABILITY',										'REQUIREMENT_UNIT_HAS_ABILITY',			0)
;

INSERT OR REPLACE INTO RequirementArguments
(RequirementId,														Name,				Value)
VALUES
('BW_REQ_DOESNT_HAVE_RECON_TROOP_INTEL_DAMAGE_DECREMENT_ABILITY',	'UnitAbilityType',	'BW_ABILITY_RECON_TROOP_INTEL_DAMAGE_DECREMENT'),
('BW_REQ_HAS_NAILQ_ABILITY',										'UnitAbilityType',	'BW_ABILITY_HEAVY_CAVALRY_HAMMER_AND_ANVIL_NAILQ')
;

INSERT OR REPLACE INTO RequirementSets
(RequirementSetId,														RequirementSetType)
VALUES
('BW_REQSET_DOESNT_HAVE_RECON_TROOP_INTEL_DAMAGE_DECREMENT_ABILITY',	'REQUIREMENTSET_TEST_ALL'),
('BW_REQSET_HAS_NAILQ_ABILITY',											'REQUIREMENTSET_TEST_ALL')
;

INSERT OR REPLACE INTO RequirementSetRequirements
(RequirementSetId,														RequirementId)
VALUES
('BW_REQSET_DOESNT_HAVE_RECON_TROOP_INTEL_DAMAGE_DECREMENT_ABILITY',	'BW_REQ_DOESNT_HAVE_RECON_TROOP_INTEL_DAMAGE_DECREMENT_ABILITY'),
('BW_REQSET_HAS_NAILQ_ABILITY',											'BW_REQ_HAS_NAILQ_ABILITY')
;



/*
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
('BW_ABILITY_+400PERCENT_SUPPORT_WHEN_NT_LAND_RANGED',		'KIND_ABILITY'),
('BW_ABILITY_+400PERCENT_FLANK_WHEN_NT_LAND_RANGED',		'KIND_ABILITY'),
('BW_ABILITY_+5CS_TO_ADJACENT_ATTACKING_HEAVY_INFANTRY',	'KIND_ABILITY'), -- archers behind heavy inf
('BW_ABILITY_+5CS_TO_ADJACENT_DEFENDING_HEAVY_INFANTRY',	'KIND_ABILITY'), -- archers behind heavy inf
('BW_ABILITY_TRIPLE_DAMAGE_DECREMENT',						'KIND_ABILITY')
;


INSERT OR REPLACE INTO UnitAbilities
(UnitAbilityType,											Name,																Description)
VALUES	

('BW_ABILITY_+8CS_ATTACK_SEA',								'BW_LOC_ABILITY_+8CS_ATTACK_SEA_NAME',								'BW_LOC_ABILITY_+8CS_ATTACK_SEA_DESCRIPTION'),			-- Melee, no galley
('BW_ABILITY_+49CS_ATTACK_SEA',								'BW_LOC_ABILITY_+49CS_ATTACK_SEA_NAME',								'BW_LOC_ABILITY_+49CS_ATTACK_SEA_DESCRIPTION'),			-- attack sub
('BW_ABILITY_+10CS_ATTACK_LAND',							'BW_LOC_ABILITY_+10CS_ATTACK_LAND_NAME',							'BW_LOC_ABILITY_+10CS_ATTACK_LAND_DESCRIPTION'),		-- naval ranged
('BW_ABILITY_-17CS_ATTACK_SEA',								'BW_LOC_ABILITY_-17CS_ATTACK_SEA_NAME',								'BW_LOC_ABILITY_-17CS_ATTACK_SEA_DESCRIPTION'),			-- naval bombard
('BW_ABILITY_+17CS_ATTACK_SEA',								'BW_LOC_ABILITY_+17CS_ATTACK_SEA_NAME',								'BW_LOC_ABILITY_+17CS_ATTACK_SEA_DESCRIPTION'),			-- naval raider
('BW_ABILITY_+3CS_ATTACK_NAVAL_MELEE',						'BW_LOC_ABILITY_+3CS_ATTACK_NAVAL_MELEE_NAME',						'BW_LOC_ABILITY_+3CS_ATTACK_NAVAL_MELEE_DESCRIPTION'),	-- naval raider

('BW_ABILITY_+10CS_DEFEND',									'BW_LOC_ABILITY_+10CS_DEFEND_NAME',									'BW_LOC_ABILITY_+10CS_DEFEND_DESCRIPTION'),
('BW_ABILITY_+10CS_ATTACK_HEAVY_INFANTRY',					'BW_LOC_ABILITY_+10CS_ATTACK_HEAVY_INFANTRY_NAME',					'BW_LOC_ABILITY_+10CS_ATTACK_HEAVY_INFANTRY_DESCRIPTION'),
('BW_ABILITY_+10CS_ATTACK_ELEPHANT',						'BW_LOC_ABILITY_+10CS_ATTACK_ELEPHANT_NAME',						'BW_LOC_ABILITY_+10CS_ATTACK_ELEPHANT_DESCRIPTION'),
('BW_ABILITY_+900PERCENT_SUPPORT_WHEN_NT_LIGHT_INFANTRY',	'BW_LOC_ABILITY_+900PERCENT_SUPPORT_WHEN_NT_LIGHT_INFANTRY_NAME',	'BW_LOC_ABILITY_+900PERCENT_SUPPORT_WHEN_NT_LIGHT_INFANTRY_DESCRIPTION'),
('BW_ABILITY_+900PERCENT_FLANK_WHEN_NT_LIGHT_INFANTRY',		'BW_LOC_ABILITY_+900PERCENT_FLANKING_WHEN_NT_LIGHT_INFANTRY_NAME',	'BW_LOC_ABILITY_+900PERCENT_FLANKING_WHEN_NT_LIGHT_INFANTRY_DESCRIPTION'),
('BW_ABILITY_+900PERCENT_SUPPORT_WHEN_NT_LIGHT_CAVALRY',	'BW_LOC_ABILITY_+900PERCENT_SUPPORT_WHEN_NT_LIGHT_CAVALRY_NAME',	'BW_LOC_ABILITY_+900PERCENT_SUPPORT_WHEN_NT_LIGHT_CAVALRY_DESCRIPTION'),
('BW_ABILITY_+900PERCENT_FLANK_WHEN_NT_LIGHT_CAVALRY',		'BW_LOC_ABILITY_+900PERCENT_FLANKING_WHEN_NT_LIGHT_CAVALRY_NAME',	'BW_LOC_ABILITY_+900PERCENT_FLANKING_WHEN_NT_LIGHT_CAVALRY_DESCRIPTION'),
('BW_ABILITY_+400PERCENT_SUPPORT_WHEN_NT_LAND_RANGED',		'BW_LOC_ABILITY_+400PERCENT_SUPPORT_WHEN_NT_LAND_RANGED_NAME',		'BW_LOC_ABILITY_+400PERCENT_SUPPORT_WHEN_NT_LAND_RANGED_DESCRIPTION'),
('BW_ABILITY_+400PERCENT_FLANK_WHEN_NT_LAND_RANGED',		'BW_LOC_ABILITY_+400PERCENT_FLANKING_WHEN_NT_LAND_RANGED_NAME',		'BW_LOC_ABILITY_+400PERCENT_FLANKING_WHEN_NT_LAND_RANGED_DESCRIPTION'),
('BW_ABILITY_+5CS_TO_ADJACENT_ATTACKING_HEAVY_INFANTRY',	'BW_LOC_ABILITY_+5CS_TO_ADJACENT_ATTACKING_HEAVY_INFANTRY_NAME',	'BW_LOC_ABILITY_+5CS_TO_ADJACENT_ATTACKING_HEAVY_INFANTRY_DESCRIPTION'), -- archers behind heavy inf
('BW_ABILITY_+5CS_TO_ADJACENT_DEFENDING_HEAVY_INFANTRY',	'BW_LOC_ABILITY_+5CS_TO_ADJACENT_DEFENDING_HEAVY_INFANTRY_NAME',	'BW_LOC_ABILITY_+5CS_TO_ADJACENT_DEFENDING_HEAVY_INFANTRY_DESCRIPTION'), -- archers behind heavy inf
('BW_ABILITY_TRIPLE_DAMAGE_DECREMENT',						'BW_LOC_ABILITY_TRIPLE_DAMAGE_DECREMENT_NAME',						'BW_LOC_ABILITY_TRIPLE_DAMAGE_DECREMENT_DESCRIPTION')
;

INSERT OR REPLACE INTO UnitAbilityModifiers
(UnitAbilityType,											ModifierId)
VALUES	

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
('BW_ABILITY_+400PERCENT_SUPPORT_WHEN_NT_LAND_RANGED',		'BW_MOD_+400PERCENT_SUPPORT_WHEN_NT_LAND_RANGED'),
('BW_ABILITY_+400PERCENT_FLANK_WHEN_NT_LAND_RANGED',		'BW_MOD_+400PERCENT_FLANK_WHEN_NT_LAND_RANGED'),
('BW_ABILITY_+5CS_TO_ADJACENT_ATTACKING_HEAVY_INFANTRY',	'BW_MOD_+5CS_TO_ADJACENT_ATTACKING_HEAVY_INFANTRY'), -- archers behind heavy inf
('BW_ABILITY_+5CS_TO_ADJACENT_DEFENDING_HEAVY_INFANTRY',	'BW_MOD_+5CS_TO_ADJACENT_DEFENDING_HEAVY_INFANTRY'), -- archers behind heavy inf
('BW_ABILITY_TRIPLE_DAMAGE_DECREMENT',						'BW_MOD_TRIPLE_DAMAGE_DECREMENT')
;




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

('BW_ABILITY_NAVAL_MELEE_NO_GALLEY_ATTACKING_SEA',		'BW_CLASS_NAVAL_MELEE_NO_GALLEY'),
('BW_ABILITY_ATTACK_SUB_ATTACKING_SEA',					'CLASS_ATTACK_SUBMARINE'),
('BW_ABILITY_NAVAL_RANGED_ATTACKING_LAND',				'BW_CLASS_JUST_NAVAL_RANGED'),
('BW_ABILITY_NAVAL_RANGED_ATTACKING_SEA',				'BW_CLASS_JUST_NAVAL_RANGED'),
('BW_ABILITY_NAVAL_BOMBARD_ATTACKING_SEA',				'CLASS_NAVAL_BOMBARD'),
('BW_ABILITY_NAVAL_RECONRAIDER_MOVE_AFTER_ATTACK',		'BW_CLASS_NAVAL_RECONRAIDER'),
('BW_ABILITY_NAVAL_RECONRAIDER_ATTACKING_SEA',			'BW_CLASS_NAVAL_RECONRAIDER'),
('BW_ABILITY_NAVAL_RECONRAIDER_ATTACKING_NAVAL_MELEE',	'BW_CLASS_NAVAL_RECONRAIDER') ;
*/
