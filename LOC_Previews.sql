-- ('', '', 'en_US'),

INSERT OR REPLACE INTO LocalizedText 
(Tag, Text, Language) VALUES
('DB_NEG_AMOUNT', '[COLOR_RED]{1_Amount}[ENDCOLOR] ', 'en_US'),
('DB_NEG_VALUE', '[COLOR_RED]{1_Value}[ENDCOLOR] ', 'en_US'),
('DB_POS_AMOUNT', '+{1_Amount} ', 'en_US'),
('DB_POS_VALUE', '+{1_Value} ', 'en_US'),

('BW_LOC_MOD_MELEE_ATTACKS_FROM_CITIES_PREVIEW', '{DB_NEG_AMOUNT}Melee attacks are less effective from inside a city', 'en_US'),

('BW_LOC_MOD_HEAVY_INFANTRY_PHALANX_PREVIEW', '{DB_POS_AMOUNT}{BW_LOC_PROMOTION_HEAVY_INFANTRY_PHALANX_NAME} {LOC_PROMOTION_DESCRIPTOR_PREVIEW_TEXT}', 'en_US'),
('BW_LOC_MOD_HEAVY_INFANTRY_OBLIQUE_ORDER_PREVIEW', '{DB_POS_AMOUNT}{BW_LOC_PROMOTION_HEAVY_INFANTRY_OBLIQUE_ORDER_NAME} {LOC_PROMOTION_DESCRIPTOR_PREVIEW_TEXT}', 'en_US'),
('BW_LOC_MOD_HEAVY_INFANTRY_TESTUDO_PREVIEW', '{DB_POS_AMOUNT}{BW_LOC_PROMOTION_HEAVY_INFANTRY_TESTUDO_NAME} {LOC_PROMOTION_DESCRIPTOR_PREVIEW_TEXT}', 'en_US'),

('BW_LOC_MOD_LIGHT_INFANTRY_SCREEN_PREVIEW', '{DB_NEG_AMOUNT}{BW_LOC_PROMOTION_LIGHT_INFANTRY_SCREEN_NAME} (enemy Light Inf)', 'en_US'),
('BW_LOC_MOD_LIGHT_INFANTRY_FLANK_GUARD_PREVIEW', '{DB_NEG_AMOUNT}{BW_LOC_PROMOTION_LIGHT_INFANTRY_FLANK_GUARD_NAME} (enemy Light Inf)', 'en_US'),

('BW_LOC_MOD_HEAVY_CAVALRY_MORALE_BOOST_PREVIEW', '{DB_POS_AMOUNT}{BW_LOC_PROMOTION_HEAVY_CAVALRY_MORALE_BOOST_NAME} (adj Heavy Cavalry)', 'en_US'),
('BW_LOC_MOD_HEAVY_CAVALRY_HAMMER_AND_ANVIL_PREVIEW', '{DB_NEG_AMOUNT}{BW_LOC_PROMOTION_HEAVY_CAVALRY_HAMMER_AND_ANVIL_NAME} (enemy Heavy Cavalry)', 'en_US'),
('BW_LOC_MOD_HEAVY_CAVALRY_FLYING_WEDGE_PREVIEW', '{DB_POS_AMOUNT}{BW_LOC_PROMOTION_HEAVY_CAVALRY_FLYING_WEDGE_NAME} {LOC_PROMOTION_DESCRIPTOR_PREVIEW_TEXT}', 'en_US'),
('BW_LOC_MOD_HEAVY_CAVALRY_FEINT_PREVIEW', '{DB_NEG_AMOUNT}{BW_LOC_PROMOTION_HEAVY_CAVALRY_FEINT_NAME} (enemy Heavy Cavalry)', 'en_US'),
('BW_LOC_MOD_HEAVY_CAVALRY_FEINT_MY_ATTACK_PREVIEW', '{DB_NEG_AMOUNT}Offset my {BW_LOC_PROMOTION_HEAVY_CAVALRY_FEINT_NAME}', 'en_US'),
('BW_LOC_MOD_HEAVY_CAVALRY_SHOCK_TACTICS_PREVIEW', '{DB_POS_AMOUNT}{BW_LOC_PROMOTION_HEAVY_CAVALRY_SHOCK_TACTICS_NAME} {LOC_PROMOTION_DESCRIPTOR_PREVIEW_TEXT}', 'en_US'),

('BW_LOC_MOD_LIGHT_CAVALRY_ENVELOPE_PREVIEW', '{DB_NEG_AMOUNT}{BW_LOC_PROMOTION_LIGHT_CAVALRY_ENVELOPE_NAME} (enemy Light Cav)', 'en_US'),
('BW_LOC_MOD_LIGHT_CAVALRY_DUST_STORM_PREVIEW', '{DB_NEG_AMOUNT}{BW_LOC_PROMOTION_LIGHT_CAVALRY_DUST_STORM_NAME} (enemy Light Cav)', 'en_US'),
('BW_LOC_MOD_LIGHT_CAVALRY_PARTHIAN_SHOT_PREVIEW', '{DB_POS_AMOUNT}{BW_LOC_PROMOTION_LIGHT_CAVALRY_PARTHIAN_SHOT_NAME} {LOC_PROMOTION_DESCRIPTOR_PREVIEW_TEXT}', 'en_US'),

('BW_LOC_MOD_RECON_TROOP_INTEL_PREVIEW', '(Damaged unit [ICON_Strength] doubled due to {BW_LOC_PROMOTION_RECON_TROOP_INTEL_NAME} from enemy Recon unit)', 'en_US'),

('BW_LOC_MOD_ARCHER_BROADHEADS_PREVIEW', '{DB_POS_AMOUNT}{BW_LOC_PROMOTION_ARCHER_BROADHEADS_NAME} {LOC_PROMOTION_DESCRIPTOR_PREVIEW_TEXT}', 'en_US'),
('BW_LOC_MOD_ARCHER_BARBED_TRILOBATES_PREVIEW', '{DB_POS_AMOUNT}{BW_LOC_PROMOTION_ARCHER_BARBED_TRILOBATES_NAME} {LOC_PROMOTION_DESCRIPTOR_PREVIEW_TEXT}', 'en_US'),
('BW_LOC_MOD_ARCHER_LOOPHOLE_TRAINING_PREVIEW', '{DB_POS_AMOUNT}{BW_LOC_PROMOTION_ARCHER_LOOPHOLE_TRAINING_NAME} {LOC_PROMOTION_DESCRIPTOR_PREVIEW_TEXT}', 'en_US'),


('BW_LOC_MOD_NAVAL_MELEE_NO_GALLEY_ATTACKING_SEA_PREVIEW', '+{1_Amount} Naval Melee attacking sea units', 'en_US'),
('BW_LOC_MOD_ATTACK_SUB_ATTACKING_SEA_PREVIEW', '+{1_Amount} Attack Sub attacking sea units', 'en_US'),
('BW_LOC_MOD_NAVAL_RANGED_ATTACKING_LAND_PREVIEW', '+{1_Amount} Naval Ranged attacking land units', 'en_US'),
('BW_LOC_MOD_NAVAL_RANGED_ATTACKING_SEA_PREVIEW', '{1_Amount} Naval Ranged attacking sea units', 'en_US'),
('BW_LOC_MOD_NAVAL_BOMBARD_ATTACKING_SEA_PREVIEW', '{1_Amount} Naval Bombard attacking sea units', 'en_US'),
('BW_LOC_MOD_NAVAL_RECONRAIDER_ATTACKING_SEA_PREVIEW', '+{1_Amount} Naval Raider attacking sea units', 'en_US'),
('BW_LOC_MOD_NAVAL_RECONRAIDER_ATTACKING_NAVAL_MELEE_PREVIEW', '+{1_Amount} Naval Raider attacking Naval Melee units', 'en_US')


;