INSERT OR REPLACE INTO Modifiers
(ModifierId,													ModifierType,											SubjectRequirementSetId)
VALUES	
('BW_MOD_ALL_UNITS_ATTACH_NORMAL_DAMAGE_DECREMENT',				'MODIFIER_ALL_UNITS_ATTACH_MODIFIER',					null),
('BW_MOD_ALL_UNITS_ATTACH_NORMAL_DAMAGE_DECREMENT2',			'DB_DM_REDUCE_DAMAGE_DECREMENT_BY_PERCENT',				'BW_REQSET_DOESNT_HAVE_RECON_TROOP_INTEL_DAMAGE_DECREMENT_ABILITY'),

('BW_MOD_MOVE_AFTER_ATTACK',									'MODIFIER_PLAYER_UNIT_ADJUST_ATTACK_AND_MOVE',			null),
('BW_MOD_+1_MOVEMENT',											'MODIFIER_PLAYER_UNIT_ADJUST_MOVEMENT',					null),
('BW_MOD_+1_SIGHT',												'MODIFIER_PLAYER_UNIT_ADJUST_SIGHT',					null),
('BW_MOD_IRON_NERVES',											'MODIFIER_PLAYER_UNIT_ADJUST_NO_REDUCTION_DAMAGE',		null),
('BW_MOD_EXTRA_ATTACK',											'MODIFIER_UNIT_ADJUST_NUM_ATTACKS',						null),
('BW_MOD_SEE_THROUGH_TERRAIN',									'MODIFIER_PLAYER_UNIT_ADJUST_SEE_THROUGH_FEATURES',		null),
('BW_MOD_STEALTH',												'MODIFIER_PLAYER_UNIT_ADJUST_HIDDEN_VISIBILITY',		null),
('BW_MOD_REVEAL_STEALTH',										'MODIFIER_PLAYER_UNIT_ADJUST_SEE_HIDDEN',				null),
('BW_MOD_MOVEMENT_IGNORE_TERRAIN',								'MODIFIER_PLAYER_UNIT_ADJUST_IGNORE_TERRAIN_COST',		null),
('BW_MOD_MOVEMENT_IGNORE_RIVER',								'MODIFIER_PLAYER_UNIT_ADJUST_IGNORE_RIVERS',			null),
('BW_MOD_EXERT_ZOC',											'MODIFIER_PLAYER_UNIT_ADJUST_EXERT_ZOC',				null),
('BW_MOD_IGNORE_ZOC',											'MODIFIER_PLAYER_UNIT_ADJUST_IGNORE_ZOC',				null),
('BW_MOD_ENTER_FOREIGN',										'MODIFIER_PLAYER_UNIT_ADJUST_ENTER_FOREIGN_LANDS',		null),
('BW_MOD_1_MOVE_TO_PILLAGE',									'MODIFIER_PLAYER_UNIT_ADJUST_ADVANCED_PILLAGING',		null),

('BW_MOD_PUSHBACK',												'MODIFIER_UNIT_ADJUST_FORCE_RETREAT',					null),
('BW_MOD_PRIORITY_TARGET',										'MODIFIER_PLAYER_UNIT_ADJUST_BYPASS_COMBAT_UNIT',		null),
('BW_MOD_HEAL_AFTER_ACTION',									'MODIFIER_PLAYER_UNIT_GRANT_HEAL_AFTER_ACTION',			null),

('BW_MOD_RECON_MAPMAKER',										'MODIFIER_PLAYER_UNITS_ATTACH_MODIFIER',				'DB_REQSET_SAME_TILE_AS_OWNER'),
('BW_MOD_RECON_MAPMAKER2',										'MODIFIER_PLAYER_UNITS_ATTACH_MODIFIER',				'DB_REQSET_SAME_TILE_AS_OWNER'),
('BW_MOD_RECON_TROOP_INTEL',									'DB_DM_GRANT_ABILITY_ALL_UNITS',						'DB_REQSET_ADJACENT_UNIT_AT_WAR'),
('BW_MOD_RECON_TROOP_INTEL_PREVIEW',							'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',					null),

('BW_MOD_HEAVY_INFANTRY_PHALANX',								'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',					'DB_REQSET_DEFENDING'),
('BW_MOD_HEAVY_INFANTRY_OBLIQUE_ORDER',							'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',					'BW_REQSET_OPPONENT_IS_HEAVY_INFANTRY'),
('BW_MOD_HEAVY_INFANTRY_TESTUDO',								'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',					'DB_REQSET_DEFENDING_RANGED'),

('BW_MOD_HEAVY_CAVALRY_HAMMER_AND_ANVIL',						'DB_DM_GRANT_ABILITY_ALL_UNITS',						'DB_REQSET_ADJACENT_UNIT_AT_WAR'),
('BW_MOD_HEAVY_CAVALRY_HAMMER_AND_ANVIL_NAILQ',					'MODIFIER_ALL_UNITS_ATTACH_MODIFIER',					'DB_REQSET_ADJACENT_UNIT_AT_WAR'),
('BW_MOD_HEAVY_CAVALRY_HAMMER_AND_ANVIL_ANVIL_MOD',				'DB_DM_GRANT_ABILITY',									'BW_REQSET_IS_HEAVY_INFANTRY'),
('BW_MOD_HEAVY_CAVALRY_HAMMER_AND_ANVIL_ANVIL',					'DB_DM_GRANT_ABILITY_ALL_UNITS',						'DB_REQSET_ADJACENT_UNIT_AT_WAR'),
('BW_MOD_HEAVY_CAVALRY_HAMMER_AND_ANVIL_NAILA',					'MODIFIER_SINGLE_UNIT_ATTACH_MODIFIER',					'BW_REQSET_HAS_NAILQ_ABILITY'),
('BW_MOD_HEAVY_CAVALRY_HAMMER_AND_ANVIL_NAILA2',				'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',					'BW_REQSET_DEFENDING_HEAVY_CAVALRY'),

('BW_MOD_HEAVY_CAVALRY_SHOCK_TACTICS',							'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',					'DB_REQSET_ATTACKING_VS_21_DAMAGE'),
('BW_MOD_HEAVY_CAVALRY_MORALE_BOOST_HCAV',						'MODIFIER_PLAYER_UNITS_ATTACH_MODIFIER',				'BW_REQSET_IS_HEAVY_CAVALRY_AND_ADJACENT_TO_OWNER'),
('BW_MOD_HEAVY_CAVALRY_MORALE_BOOST_REST',						'MODIFIER_PLAYER_UNITS_ATTACH_MODIFIER',				'BW_REQSET_ANYTHING_BUT_A_HEAVY_CAVALRY_AND_ADJACENT_TO_OR_SAME_TILE_AS_OWNER'),
('BW_MOD_HEAVY_CAVALRY_MORALE_BOOST2',							'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',					null),
('BW_MOD_HEAVY_CAVALRY_FLYING_WEDGE',							'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',					'BW_REQSET_ATTACKING_HEAVY_INFANTRY'),
('BW_MOD_HEAVY_CAVALRY_FEINT',									'MODIFIER_ALL_UNITS_ATTACH_MODIFIER',					'DB_REQSET_ADJACENT_UNIT_AT_WAR'),
('BW_MOD_HEAVY_CAVALRY_FEINT2',									'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',					'DB_REQSET_MELEE_DEFENDING_LAND'),
('BW_MOD_HEAVY_CAVALRY_FEINT_MY_ATTACK',						'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',					'DB_REQSET_ATTACKING'),


('BW_MOD_LIGHT_INFANTRY_SCREEN',								'DB_DM_GRANT_ABILITY',									'DB_REQSET_ADJACENT_UNIT_LAND_MELEE_ATTACKER'),
('BW_MOD_LIGHT_INFANTRY_SCREEN_NT_LAND_MELEE_ATTACKER',			'MODIFIER_ALL_UNITS_ATTACH_MODIFIER',					'DB_REQSET_ADJACENT_UNIT_AT_WAR'),
('BW_MOD_LIGHT_INFANTRY_SCREEN_NT_LAND_MELEE_ATTACKER2',		'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',					'DB_REQSET_MELEE_DEFENDING_LAND'),
('BW_MOD_LIGHT_INFANTRY_FLANK_GUARD',							'DB_DM_GRANT_ABILITY',									'DB_REQSET_ADJACENT_UNIT_LAND_MELEE_ATTACKER'),
('BW_MOD_LIGHT_INFANTRY_FLANK_GUARD_NT_LAND_MELEE_ATTACKER',	'MODIFIER_ALL_UNITS_ATTACH_MODIFIER',					'DB_REQSET_ADJACENT_UNIT_AT_WAR'),
('BW_MOD_LIGHT_INFANTRY_FLANK_GUARD_NT_LAND_MELEE_ATTACKER2',	'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',					'DB_REQSET_MELEE_ATTACKING_LAND'),
('BW_MOD_LIGHT_CAVALRY_ENVELOPE',								'MODIFIER_ALL_UNITS_ATTACH_MODIFIER',					'DB_REQSET_ADJACENT_UNIT_AT_WAR'),
('BW_MOD_LIGHT_CAVALRY_ENVELOPE2',								'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',					'DB_REQSET_MELEE_DEFENDING_LAND'),
('BW_MOD_LIGHT_CAVALRY_DUST_STORM',								'MODIFIER_ALL_UNITS_ATTACH_MODIFIER',					'DB_REQSET_ADJACENT_UNIT_AT_WAR'),
('BW_MOD_LIGHT_CAVALRY_DUST_STORM2',							'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',					'DB_REQSET_ATTACKING'),
('BW_MOD_LIGHT_CAVALRY_PARTHIAN_SHOT',							'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',					'DB_REQSET_DEFENDING'),



('BW_MOD_MEDIC_ADJ_UNITS_HEAL_AFTER_ACTION',					'MODIFIER_PLAYER_UNITS_ATTACH_MODIFIER',				'DB_REQSET_ADJACENT_TO_OR_SAME_TILE_AS_OWNER')
;


INSERT OR REPLACE INTO ModifierArguments
(ModifierId,													Name,					Value)
VALUES
('BW_MOD_ALL_UNITS_ATTACH_NORMAL_DAMAGE_DECREMENT',				'ModifierId',			'BW_MOD_ALL_UNITS_ATTACH_NORMAL_DAMAGE_DECREMENT2'),
('BW_MOD_ALL_UNITS_ATTACH_NORMAL_DAMAGE_DECREMENT2',			'Amount',				50),

('BW_MOD_MOVE_AFTER_ATTACK',									'CanMove',				1),
('BW_MOD_+1_MOVEMENT',											'Amount',				1),
('BW_MOD_+1_SIGHT',												'Amount',				1),
('BW_MOD_IRON_NERVES',											'NoReduction',			1),
('BW_MOD_EXTRA_ATTACK',											'Amount',				1),
('BW_MOD_SEE_THROUGH_TERRAIN',									'CanSee',				1),
('BW_MOD_STEALTH',												'Hidden',				1),
('BW_MOD_REVEAL_STEALTH',										'SeeHidden',			1),
('BW_MOD_MOVEMENT_IGNORE_TERRAIN',								'Ignore',				1),	
('BW_MOD_MOVEMENT_IGNORE_TERRAIN',								'Type',					'ALL'),	
('BW_MOD_MOVEMENT_IGNORE_RIVER',								'Ignore',				1),	
('BW_MOD_ENTER_FOREIGN',										'Enter',				1),
('BW_MOD_1_MOVE_TO_PILLAGE',									'UseAdvancedPillaging',	1),

('BW_MOD_RECON_MAPMAKER',										'ModifierId',			'BW_MOD_MOVEMENT_IGNORE_TERRAIN'),
('BW_MOD_RECON_MAPMAKER2',										'ModifierId',			'BW_MOD_MOVEMENT_IGNORE_RIVER'),
('BW_MOD_RECON_TROOP_INTEL',									'AbilityType',			'BW_ABILITY_RECON_TROOP_INTEL_DAMAGE_DECREMENT'),
('BW_MOD_RECON_TROOP_INTEL_PREVIEW',							'Amount',				0),
('BW_MOD_PUSHBACK',												'ForceRetreat',			1),
('BW_MOD_PRIORITY_TARGET',										'Bypass',				1),

('BW_MOD_HEAVY_INFANTRY_PHALANX',								'Amount',				10),
('BW_MOD_HEAVY_INFANTRY_OBLIQUE_ORDER',							'Amount',				5),
('BW_MOD_HEAVY_INFANTRY_TESTUDO',								'Amount',				10),


('BW_MOD_HEAVY_CAVALRY_HAMMER_AND_ANVIL',						'AbilityType',			'BW_ABILITY_HEAVY_CAVALRY_HAMMER_AND_ANVIL_NAILQ'),
('BW_MOD_HEAVY_CAVALRY_HAMMER_AND_ANVIL_NAILQ',					'ModifierId',			'BW_MOD_HEAVY_CAVALRY_HAMMER_AND_ANVIL_ANVIL_MOD'),
('BW_MOD_HEAVY_CAVALRY_HAMMER_AND_ANVIL_ANVIL_MOD',				'AbilityType',			'BW_ABILITY_HEAVY_CAVALRY_HAMMER_AND_ANVIL_ANVIL'),
('BW_MOD_HEAVY_CAVALRY_HAMMER_AND_ANVIL_ANVIL',					'AbilityType',			'BW_ABILITY_HEAVY_CAVALRY_HAMMER_AND_ANVIL_NAILA'),
('BW_MOD_HEAVY_CAVALRY_HAMMER_AND_ANVIL_NAILA',					'ModifierId',			'BW_MOD_HEAVY_CAVALRY_HAMMER_AND_ANVIL_NAILA2'),
('BW_MOD_HEAVY_CAVALRY_HAMMER_AND_ANVIL_NAILA2',				'Amount',				-10),

('BW_MOD_HEAVY_CAVALRY_SHOCK_TACTICS',							'Amount',				10),
('BW_MOD_HEAVY_CAVALRY_MORALE_BOOST_HCAV',						'ModifierId',			'BW_MOD_HEAVY_CAVALRY_MORALE_BOOST2'),
('BW_MOD_HEAVY_CAVALRY_MORALE_BOOST_REST',						'ModifierId',			'BW_MOD_HEAVY_CAVALRY_MORALE_BOOST2'),
('BW_MOD_HEAVY_CAVALRY_MORALE_BOOST2',							'Amount',				3),
('BW_MOD_HEAVY_CAVALRY_FLYING_WEDGE',							'Amount',				5),
('BW_MOD_HEAVY_CAVALRY_FEINT',									'ModifierId',			'BW_MOD_HEAVY_CAVALRY_FEINT2'),
('BW_MOD_HEAVY_CAVALRY_FEINT2',									'Amount',				-5),
('BW_MOD_HEAVY_CAVALRY_FEINT_MY_ATTACK',						'Amount',				-5),

('BW_MOD_LIGHT_INFANTRY_SCREEN',								'AbilityType',			'BW_ABILITY_LIGHT_INFANTRY_SCREEN_NT_LAND_MELEE_ATTACKER'),
('BW_MOD_LIGHT_INFANTRY_SCREEN_NT_LAND_MELEE_ATTACKER',			'ModifierId',			'BW_MOD_LIGHT_INFANTRY_SCREEN_NT_LAND_MELEE_ATTACKER2'),
('BW_MOD_LIGHT_INFANTRY_SCREEN_NT_LAND_MELEE_ATTACKER2',		'Amount',				-7),
('BW_MOD_LIGHT_INFANTRY_FLANK_GUARD',							'AbilityType',			'BW_ABILITY_LIGHT_INFANTRY_FLANK_GUARD_NT_LAND_MELEE_ATTACKER'),
('BW_MOD_LIGHT_INFANTRY_FLANK_GUARD_NT_LAND_MELEE_ATTACKER',	'ModifierId',			'BW_MOD_LIGHT_INFANTRY_FLANK_GUARD_NT_LAND_MELEE_ATTACKER2'),
('BW_MOD_LIGHT_INFANTRY_FLANK_GUARD_NT_LAND_MELEE_ATTACKER2',	'Amount',				-7),

('BW_MOD_LIGHT_CAVALRY_ENVELOPE',								'ModifierId',			'BW_MOD_LIGHT_CAVALRY_ENVELOPE2'),
('BW_MOD_LIGHT_CAVALRY_ENVELOPE2',								'Amount',				-5),
('BW_MOD_LIGHT_CAVALRY_DUST_STORM',								'ModifierId',			'BW_MOD_LIGHT_CAVALRY_DUST_STORM2'),
('BW_MOD_LIGHT_CAVALRY_DUST_STORM2',							'Amount',				-5),
('BW_MOD_LIGHT_CAVALRY_PARTHIAN_SHOT',							'Amount',				5),

('BW_MOD_MEDIC_ADJ_UNITS_HEAL_AFTER_ACTION',					'ModifierId',			'BW_MOD_HEAL_AFTER_ACTION')
;


INSERT OR REPLACE INTO ModifierStrings
(ModifierId,													Context,	Text)
VALUES	
('BW_MOD_HEAVY_INFANTRY_PHALANX',								'Preview',	'BW_LOC_MOD_HEAVY_INFANTRY_PHALANX_PREVIEW'),
('BW_MOD_HEAVY_INFANTRY_OBLIQUE_ORDER',							'Preview',	'BW_LOC_MOD_HEAVY_INFANTRY_OBLIQUE_ORDER_PREVIEW'),
('BW_MOD_HEAVY_INFANTRY_TESTUDO',								'Preview',	'BW_LOC_MOD_HEAVY_INFANTRY_TESTUDO_PREVIEW'),

('BW_MOD_HEAVY_CAVALRY_MORALE_BOOST2',							'Preview',	'BW_LOC_MOD_HEAVY_CAVALRY_MORALE_BOOST_PREVIEW'),
('BW_MOD_HEAVY_CAVALRY_HAMMER_AND_ANVIL_NAILA2',				'Preview',	'BW_LOC_MOD_HEAVY_CAVALRY_HAMMER_AND_ANVIL_PREVIEW'),
('BW_MOD_HEAVY_CAVALRY_FLYING_WEDGE',							'Preview',	'BW_LOC_MOD_HEAVY_CAVALRY_FLYING_WEDGE_PREVIEW'),
('BW_MOD_HEAVY_CAVALRY_FEINT2',									'Preview',	'BW_LOC_MOD_HEAVY_CAVALRY_FEINT_PREVIEW'),
('BW_MOD_HEAVY_CAVALRY_FEINT_MY_ATTACK',						'Preview',	'BW_LOC_MOD_HEAVY_CAVALRY_FEINT_MY_ATTACK_PREVIEW'),
('BW_MOD_HEAVY_CAVALRY_SHOCK_TACTICS',							'Preview',	'BW_LOC_MOD_HEAVY_CAVALRY_SHOCK_TACTICS_PREVIEW'),

('BW_MOD_RECON_TROOP_INTEL_PREVIEW',							'Preview',	'BW_LOC_MOD_RECON_TROOP_INTEL_PREVIEW'),
('BW_MOD_LIGHT_INFANTRY_SCREEN_NT_LAND_MELEE_ATTACKER2',		'Preview',	'BW_LOC_MOD_LIGHT_INFANTRY_SCREEN_PREVIEW'),
('BW_MOD_LIGHT_INFANTRY_FLANK_GUARD_NT_LAND_MELEE_ATTACKER2',	'Preview',	'BW_LOC_MOD_LIGHT_INFANTRY_FLANK_GUARD_PREVIEW'),
('BW_MOD_LIGHT_CAVALRY_ENVELOPE2',								'Preview',	'BW_LOC_MOD_LIGHT_CAVALRY_ENVELOPE_PREVIEW'),
('BW_MOD_LIGHT_CAVALRY_DUST_STORM2',							'Preview',	'BW_LOC_MOD_LIGHT_CAVALRY_DUST_STORM_PREVIEW'),
('BW_MOD_LIGHT_CAVALRY_PARTHIAN_SHOT',							'Preview',	'BW_LOC_MOD_LIGHT_CAVALRY_PARTHIAN_SHOT_PREVIEW')
;

/*

('BW_MOD_+8CS_ATTACK_SEA',								'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',					'DB_REQSET_ATTACKING_SEA_UNIT'),
('BW_MOD_+49CS_ATTACK_SEA',								'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',					'DB_REQSET_ATTACKING_SEA_UNIT'),
('BW_MOD_+10CS_ATTACK_LAND',							'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',					'DB_REQSET_ATTACKING_LAND_UNIT'),
('BW_MOD_-17CS_ATTACK_SEA',								'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',					'DB_REQSET_ATTACKING_SEA_UNIT'),
('BW_MOD_+17CS_ATTACK_SEA',								'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',					'DB_REQSET_ATTACKING_SEA_UNIT'),
('BW_MOD_+3CS_ATTACK_NAVAL_MELEE',						'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',					'DB_REQSET_ATTACKING_NAVAL_MELEE'),

('BW_MOD_+10CS_ATTACK_HEAVY_INFANTRY',					'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',					'DB_REQSET_ATTACKING_SEA_UNIT'),
('BW_MOD_+10CS_ATTACK_ELEPHANT',						'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',					'DB_REQSET_ATTACKING_SEA_UNIT'),
('BW_MOD_+900PERCENT_SUPPORT_WHEN_NT_LIGHT_INFANTRY',	'MODIFIER_PLAYER_UNIT_ADJUST_SUPPORT_BONUS_MODIFIER',	'DB_REQSET_ATTACKING_SEA_UNIT'),
('BW_MOD_+900PERCENT_FLANK_WHEN_NT_LIGHT_INFANTRY',		'MODIFIER_PLAYER_UNIT_ADJUST_FLANKING_BONUS_MODIFIER',	'DB_REQSET_ATTACKING_SEA_UNIT'),
('BW_MOD_+900PERCENT_SUPPORT_WHEN_NT_LIGHT_CAVALRY',	'MODIFIER_PLAYER_UNIT_ADJUST_SUPPORT_BONUS_MODIFIER',	'DB_REQSET_ATTACKING_SEA_UNIT'),
('BW_MOD_+900PERCENT_FLANK_WHEN_NT_LIGHT_CAVALRY',		'MODIFIER_PLAYER_UNIT_ADJUST_FLANKING_BONUS_MODIFIER',	'DB_REQSET_ATTACKING_SEA_UNIT'),
('BW_MOD_+400PERCENT_SUPPORT_WHEN_NT_LAND_RANGED',		'MODIFIER_PLAYER_UNIT_ADJUST_SUPPORT_BONUS_MODIFIER',	'DB_REQSET_ATTACKING_SEA_UNIT'),
('BW_MOD_+400PERCENT_FLANK_WHEN_NT_LAND_RANGED',		'MODIFIER_PLAYER_UNIT_ADJUST_FLANKING_BONUS_MODIFIER',	'DB_REQSET_ATTACKING_SEA_UNIT'),
('BW_MOD_+5CS_TO_ADJACENT_ATTACKING_HEAVY_INFANTRY',	'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',					'DB_REQSET_ATTACKING_SEA_UNIT'),
('BW_MOD_+5CS_TO_ADJACENT_DEFENDING_HEAVY_INFANTRY',	'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',					'DB_REQSET_ATTACKING_SEA_UNIT'),
('BW_MOD_TRIPLE_DAMAGE_DECREMENT',						'BW_DM_REDUCE_DAMAGE_DECREMENT_BY_PERCENT',				'BW_REQSET_TRIPLE_DAMAGE_DECREMENT')
;

/*



INSERT OR REPLACE INTO ModifierArguments
(ModifierId,											Name,		Value)
VALUES
('BW_MOD_MOVE_AFTER_ATTACK',							'CanMove',	1),
('BW_MOD_+8CS_ATTACK_SEA',								'Amount',	8),
('BW_MOD_+49CS_ATTACK_SEA',								'Amount',	49),
('BW_MOD_+10CS_ATTACK_LAND',							'Amount',	10),
('BW_MOD_-17CS_ATTACK_SEA',								'Amount',	-17),
('BW_MOD_+17CS_ATTACK_SEA',								'Amount',	17),
('BW_MOD_+3CS_ATTACK_NAVAL_MELEE',						'Amount',	3),
('BW_MOD_+10CS_ATTACK_HEAVY_INFANTRY',					'Amount',	10),
('BW_MOD_+10CS_ATTACK_ELEPHANT',						'Amount',	10),
('BW_MOD_+900PERCENT_SUPPORT_WHEN_NT_LIGHT_INFANTRY',	'Percent',	900),
('BW_MOD_+900PERCENT_FLANK_WHEN_NT_LIGHT_INFANTRY',		'Percent',	900),
('BW_MOD_+900PERCENT_SUPPORT_WHEN_NT_LIGHT_CAVALRY',	'Percent',	900),
('BW_MOD_+900PERCENT_FLANK_WHEN_NT_LIGHT_CAVALRY',		'Percent',	900),
('BW_MOD_+400PERCENT_SUPPORT_WHEN_NT_LAND_RANGED',		'Percent',	400),
('BW_MOD_+400PERCENT_FLANK_WHEN_NT_LAND_RANGED',		'Percent',	400),
('BW_MOD_+5CS_TO_ADJACENT_ATTACKING_HEAVY_INFANTRY',	'Amount',	5),
('BW_MOD_+5CS_TO_ADJACENT_DEFENDING_HEAVY_INFANTRY',	'Amount',	5),
('BW_MOD_TRIPLE_DAMAGE_DECREMENT',						'Amount',	70)
;



INSERT OR REPLACE INTO ModifierStrings
(ModifierId,											Context,	Text)
VALUES	
('BW_MOD_+8CS_ATTACK_SEA',								'Preview',	'BW_LOC_MOD_+8CS_ATTACK_SEA_PREVIEW'),
('BW_MOD_+49CS_ATTACK_SEA',								'Preview',	'BW_LOC_MOD_+49CS_ATTACK_SEA_PREVIEW'),
('BW_MOD_+10CS_ATTACK_LAND',							'Preview',	'BW_LOC_MOD_+10CS_ATTACK_LAND_PREVIEW'),
('BW_MOD_-17CS_ATTACK_SEA',								'Preview',	'BW_LOC_MOD_-17CS_ATTACK_SEA_PREVIEW'),
('BW_MOD_+17CS_ATTACK_SEA',								'Preview',	'BW_LOC_MOD_+17CS_ATTACK_SEA_PREVIEW'),
('BW_MOD_+3CS_ATTACK_NAVAL_MELEE',						'Preview',	'BW_LOC_MOD_+3CS_ATTACK_NAVAL_MELEE_PREVIEW'),
('BW_MOD_+10CS_ATTACK_HEAVY_INFANTRY',					'Preview',	'BW_LOC_MOD_+10CS_ATTACK_HEAVY_INFANTRY'),
('BW_MOD_+10CS_ATTACK_ELEPHANT',						'Preview',	'BW_LOC_MOD_+10CS_ATTACK_ELEPHANT'),
('BW_MOD_+5CS_TO_ADJACENT_ATTACKING_HEAVY_INFANTRY',	'Preview',	'BW_LOC_MOD_+5CS_TO_ADJACENT_ATTACKING_HEAVY_INFANTRY'),
('BW_MOD_+5CS_TO_ADJACENT_DEFENDING_HEAVY_INFANTRY',	'Preview',	'BW_LOC_MOD_+5CS_TO_ADJACENT_DEFENDING_HEAVY_INFANTRY')
;

*/