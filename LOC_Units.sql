-- ('', '', 'en_US'),

INSERT OR REPLACE INTO LocalizedText 
(Tag, Text, Language) VALUES

('BW_LOC_RECON_GENERAL', '[NEWLINE][NEWLINE]Recon units are support units that cannot attack, but instead excel at gathering information. By default they can see through terrain features (like woods and rainforests) and reveal stealth units. They receive experience by acquiring tribal villages, discovering natural wonders, and being adjacent to battles.{BW_LOC_RECON_PROMOTIONS}', 'en_US'),
('BW_LOC_RECON_PROMOTIONS', ' Promotions include:[NEWLINE][ICON_Bullet]{BW_LOC_PROMOTION_DOUBLE_TIME_NAME} ({BW_LOC_PROMOTION_DOUBLE_TIME_DESCRIPTION})[NEWLINE][ICON_Bullet]{BW_LOC_PROMOTION_SPYGLASS_NAME} ({BW_LOC_PROMOTION_SPYGLASS_DESCRIPTION})[NEWLINE][ICON_Bullet]{BW_LOC_PROMOTION_RECON_PATHFINDER_NAME} ({BW_LOC_PROMOTION_RECON_PATHFINDER_DESCRIPTION})[NEWLINE][ICON_Bullet]{BW_LOC_PROMOTION_RECON_DISGUISE_NAME} ({BW_LOC_PROMOTION_RECON_DISGUISE_DESCRIPTION})[NEWLINE][ICON_Bullet]{BW_LOC_PROMOTION_ELUSIVE_NAME} ({BW_LOC_PROMOTION_ELUSIVE_DESCRIPTION})[NEWLINE][ICON_Bullet]{BW_LOC_PROMOTION_RECON_TROOP_INTEL_NAME} ({BW_LOC_PROMOTION_RECON_TROOP_INTEL_DESCRIPTION})[NEWLINE][ICON_Bullet]{BW_LOC_PROMOTION_STEALTH_NAME} ({BW_LOC_PROMOTION_STEALTH_DESCRIPTION})', 'en_US'),

('BW_LOC_HEAVY_INFANTRY_GENERAL', ' Reduces city''s [ICON_Citizen] population by 1 when completed.[NEWLINE][NEWLINE]Heavy Infantry units are your bulldozers; very powerful, but slow and expensive. They cost 1 population to make, but have the strongest combat values of the era. Heavy Infantry is vulnerable to harrassment from enemy Light Cavalry, Light Infantry, and Land Ranged units, but none of these can withstand a direct attack. And if you bring your own Light Cavalry, Light Infantry, and Land Ranged units, you can receive significant support and flanking bonuses.{BW_LOC_HEAVY_INFANTRY_PROMOTIONS}', 'en_US'),
('BW_LOC_HEAVY_INFANTRY_PROMOTIONS', ' Promotions include:[NEWLINE][ICON_Bullet]{BW_LOC_PROMOTION_DOUBLE_TIME_NAME} ({BW_LOC_PROMOTION_DOUBLE_TIME_DESCRIPTION})[NEWLINE][ICON_Bullet]{BW_LOC_PROMOTION_IMPEL_NAME} ({BW_LOC_PROMOTION_IMPEL_DESCRIPTION})[NEWLINE][ICON_Bullet]{BW_LOC_PROMOTION_DOUBLE_STRIKE_NAME} ({BW_LOC_PROMOTION_DOUBLE_STRIKE_DESCRIPTION})[NEWLINE][ICON_Bullet]{BW_LOC_PROMOTION_HEAVY_INFANTRY_PHALANX_NAME} ({BW_LOC_PROMOTION_HEAVY_INFANTRY_PHALANX_DESCRIPTION})[NEWLINE][ICON_Bullet]{BW_LOC_PROMOTION_ZONE_OF_CONTROL_NAME} ({BW_LOC_PROMOTION_ZONE_OF_CONTROL_DESCRIPTION})[NEWLINE][ICON_Bullet]{BW_LOC_PROMOTION_HEAVY_INFANTRY_SARISSA_NAME} ({BW_LOC_PROMOTION_HEAVY_INFANTRY_SARISSA_DESCRIPTION})[NEWLINE][ICON_Bullet]{BW_LOC_PROMOTION_HEAVY_INFANTRY_TESTUDO_NAME} ({BW_LOC_PROMOTION_HEAVY_INFANTRY_TESTUDO_DESCRIPTION})', 'en_US'),

('BW_LOC_LIGHT_INFANTRY_GENERAL', '[NEWLINE][NEWLINE]As Heavy Infantry formations approach one another for battle, Light Infantry soldiers skirmish between them, hurling javelins, stones, and arrows to thin out the opposing ranks. When the front lines of Heavy soldiers collide, the Light Infantry steps to the side looking to harrass and distract the soldiers on the flank. If they can succeed in disrupting the opposing line, the gap in the shield wall can be quickly exploited by their allied Heavy Infantry or Cavalry units.[NEWLINE][NEWLINE]Outside of formal battle, agile Light Infantry units also functioned as scouts, raiders, and commandos... attacking supply lines, caputuring high-value targets, assassinating officers, sabotaging bridges, and doing whatever else they could to disrupt or demoralize the enemy.{BW_LOC_LIGHT_INFANTRY_PROMOTIONS}', 'en_US'),
('BW_LOC_LIGHT_INFANTRY_PROMOTIONS', ' Promotions include:[NEWLINE][ICON_Bullet]{BW_LOC_PROMOTION_DOUBLE_TIME_NAME} ({BW_LOC_PROMOTION_DOUBLE_TIME_DESCRIPTION})[NEWLINE][ICON_Bullet]{BW_LOC_PROMOTION_ELUSIVE_NAME} ({BW_LOC_PROMOTION_ELUSIVE_DESCRIPTION})[NEWLINE][ICON_Bullet]{BW_LOC_PROMOTION_HIT_AND_RUN_NAME} ({BW_LOC_PROMOTION_HIT_AND_RUN_DESCRIPTION})[NEWLINE][ICON_Bullet]{BW_LOC_PROMOTION_PRIORITY_TARGET_NAME} ({BW_LOC_PROMOTION_PRIORITY_TARGET_DESCRIPTION})[NEWLINE][ICON_Bullet]{BW_LOC_PROMOTION_LIGHT_INFANTRY_SCREEN_NAME} ({BW_LOC_PROMOTION_LIGHT_INFANTRY_SCREEN_DESCRIPTION})[NEWLINE][ICON_Bullet]{BW_LOC_PROMOTION_LIGHT_INFANTRY_FLANK_GUARD_NAME} ({BW_LOC_PROMOTION_LIGHT_INFANTRY_FLANK_GUARD_DESCRIPTION})[NEWLINE][ICON_Bullet]{BW_LOC_PROMOTION_SURVIVALIST_NAME} ({BW_LOC_PROMOTION_SURVIVALIST_DESCRIPTION})', 'en_US'),

/*
('BW_LOC_LIGHT_CAVALRY_GENERAL', '[NEWLINE][NEWLINE]', 'en_US'),
('BW_LOC_HEAVY_CAVALRY_GENERAL', '[NEWLINE][NEWLINE]', 'en_US'),
('BW_LOC_LAND_RANGED_GENERAL', '[NEWLINE][NEWLINE]', 'en_US'),
('BW_LOC_NAVAL_MELEE_GENERAL', '[NEWLINE][NEWLINE]Naval Melee units are great at attacking other ships. They also can attack coastal cities, but their damage is reduced by 85% when the city has walls. They don''t have a ranged attack and cannot attack land units.', 'en_US'),
('BW_LOC_NAVAL_RANGED_GENERAL', '[NEWLINE][NEWLINE]Naval Ranged units have a [ICON_Ranged] Ranged Attack that can attack cities, encampments, sea and land units. However, the attack is increased against land units and decreased against sea unit. Unwalled cities take normal damage, but walled cities only take half the damage done by Naval Ranged units.', 'en_US'),
('BW_LOC_NAVAL_RAIDER_GENERAL', '[NEWLINE][NEWLINE]Naval Raider units are tricky. They fight dirty. They make short [ICON_Ranged] Ranged Attacks and can move after attacking. This attack is stronger against boats, especially Naval Melee units, and does normal damage against other targets. Walled cities only take half damage from Naval Raiders.[NEWLINE][NEWLINE]Often Naval Raiders are hidden to the enemy (unless adjacent to them), but enemy Naval Raiders can detect them within their sight range. They can also pillage shore tiles with their coastal raid ability.', 'en_US'),
('BW_LOC_NAVAL_BOMBARD_GENERAL', '[NEWLINE][NEWLINE]Naval Bombard units are designed to bombard cities and encampments, doing full damage with their [ICON_Ranged] Ranged Attack even when they are walled. However, their attack is significantly less effective when used on land and sea units.', 'en_US'),
*/

('LOC_UNIT_SCOUT_DESCRIPTION', 'Ancient era Recon unit.{BW_LOC_RECON_GENERAL}', 'en_US'),
('LOC_UNIT_WARRIOR_DESCRIPTION', 'Ancient era Heavy Infantry unit.{BW_LOC_HEAVY_INFANTRY_GENERAL}', 'en_US'),
('LOC_UNIT_SLINGER_DESCRIPTION', 'Ancient era Light Infantry unit.{BW_LOC_LIGHT_INFANTRY_GENERAL}', 'en_US'),


('LOC_UNIT_MEDIC_DESCRIPTION', 'Industrial era support unit. Adjacent units get +5 healing and can heal after any action.', 'en_US'),


('LOC_UNIT_GALLEY_DESCRIPTION', 'Ancient era Naval Melee unit. Can only operate on coastal waters until Cartography is researched.', 'en_US'),
('LOC_UNIT_COG_DESCRIPTION', 'Medieval era Naval Melee unit. Much stronger than Galleys with extra attack strength against sea units.{BW_LOC_NAVAL_MELEE_GENERAL}', 'en_US'),
('LOC_UNIT_CARAVEL_DESCRIPTION', 'Early Renaissance era Naval Melee unit. Faster and stronger than the Cog.{BW_LOC_NAVAL_MELEE_GENERAL}', 'en_US'),
('LOC_UNIT_CORVETTE_DESCRIPTION', 'Late Renaissance era Naval Melee unit. Faster and stronger than the Caravel.{BW_LOC_NAVAL_MELEE_GENERAL}', 'en_US'),
('LOC_UNIT_IRONCLAD_DESCRIPTION', 'Industrial era Naval Melee unit. Slightly stronger than the Corvette.{BW_LOC_NAVAL_MELEE_GENERAL}', 'en_US'),
('LOC_UNIT_TORPEDO_GUNBOAT_DESCRIPTION', 'Modern era Naval Melee unit. Faster and stronger than the Ironclad.{BW_LOC_NAVAL_MELEE_GENERAL}', 'en_US'),
('LOC_UNIT_DESTROYER_DESCRIPTION', 'Atomic era Naval Melee unit that reveals Naval Raider units within sight range. Stronger than Torpedo Gunboat, and equipped with anti-air defenses.{BW_LOC_NAVAL_MELEE_GENERAL}', 'en_US'),
('LOC_UNIT_MISSILE_DESTROYER_DESCRIPTION', 'Information era Naval Melee unit that reveals Naval Raider units within sight range. Stronger than Destroyer and better anti-air.{BW_LOC_NAVAL_MELEE_GENERAL}', 'en_US'),
('LOC_UNIT_ATTACK_SUBMARINE_DESCRIPTION', 'A special Information era Naval Melee unit representing the ultimate in fragile aggression. Cannot be seen unless adjacent to it and can move after attacking. Very weak inherent combat strength (for its era) but gets a powerful attack bonus vs sea units. Able to one-shot all but the strongest sea units.{BW_LOC_NAVAL_MELEE_GENERAL}', 'en_US'),

('LOC_UNIT_QUADRIREME_DESCRIPTION', 'Classical era Naval Ranged unit. Can only operate on coastal waters until Cartography is researched.{BW_LOC_NAVAL_RANGED_GENERAL}', 'en_US'),
('LOC_UNIT_GALLEASS_DESCRIPTION', 'Medieval era Naval Ranged unit.{BW_LOC_NAVAL_RANGED_GENERAL}', 'en_US'),
('LOC_UNIT_FRIGATE_DESCRIPTION', 'Renaissance era Naval Ranged unit.{BW_LOC_NAVAL_RANGED_GENERAL}', 'en_US'),
('LOC_UNIT_ARMORED_CRUISER_DESCRIPTION', 'Industrial era Naval Ranged unit.{BW_LOC_NAVAL_RANGED_GENERAL}', 'en_US'),
('LOC_UNIT_LIGHT_CRUISER_DESCRIPTION', 'Modern era Naval Ranged unit.{BW_LOC_NAVAL_RANGED_GENERAL}', 'en_US'),
('LOC_UNIT_BATTLECRUISER_DESCRIPTION', 'Modern era Naval Ranged unit.{BW_LOC_NAVAL_RANGED_GENERAL}', 'en_US'),
('LOC_UNIT_MISSILE_CRUISER_DESCRIPTION', 'Strong Naval Ranged unit, available in the information era.{BW_LOC_NAVAL_RANGED_GENERAL}', 'en_US'),

('LOC_UNIT_PRIVATEER_DESCRIPTION', 'Renaissance era Naval Raider unit.{BW_LOC_NAVAL_RAIDER_GENERAL}', 'en_US'),
('LOC_UNIT_RAIDER_DESCRIPTION', 'Industrial era Naval Raider unit.{BW_LOC_NAVAL_RAIDER_GENERAL}', 'en_US'),
('LOC_UNIT_SUBMARINE_DESCRIPTION', 'Modern era Naval Raider unit.{BW_LOC_NAVAL_RAIDER_GENERAL}', 'en_US'),
('LOC_UNIT_NUCLEAR_SUBMARINE_DESCRIPTION', 'Highly advanced Information era Naval Raider unit that can be armed with nuclear weapons.{BW_LOC_NAVAL_RAIDER_GENERAL}', 'en_US'),

('LOC_UNIT_GREEK_FIRE_SHIP_DESCRIPTION', 'Clasical era Naval Bombard unit.{BW_LOC_NAVAL_BOMBARD_GENERAL}', 'en_US'),
('LOC_UNIT_GALLEON_DESCRIPTION', 'Medieval era Naval Bombard unit.{BW_LOC_NAVAL_BOMBARD_GENERAL}', 'en_US'),
('LOC_UNIT_SHIP_OF_THE_LINE_DESCRIPTION', 'Renaissance era Naval Bombard unit.{BW_LOC_NAVAL_BOMBARD_GENERAL}', 'en_US'),
('LOC_UNIT_PRE_DREADNOUGHT_DESCRIPTION', 'Industrial era Naval Bombard unit.{BW_LOC_NAVAL_BOMBARD_GENERAL}', 'en_US'),
('LOC_UNIT_DREADNOUGHT_DESCRIPTION', 'Modern era Naval Bombard unit.{BW_LOC_NAVAL_BOMBARD_GENERAL}', 'en_US'),
('LOC_UNIT_BATTLESHIP_DESCRIPTION', 'Atomic era Naval Bombard unit. Provides cover from air and nuclear attacks up to 1 tile away.{BW_LOC_NAVAL_BOMBARD_GENERAL}', 'en_US'),
('LOC_UNIT_RAILGUN_WARSHIP_DESCRIPTION', 'Information era Naval Bombard unit.{BW_LOC_NAVAL_BOMBARD_GENERAL}', 'en_US'),

('LOC_UNIT_ENGLISH_SHIP_OF_THE_LINE_DESCRIPTION', 'English unique Renaissance era Naval Bombard unit replacing the Ship of the Line. +7 [ICON_Strength] Combat Strength when adjacent to another First-rate.{BW_LOC_NAVAL_BOMBARD_GENERAL}', 'en_US'),
('LOC_UNIT_KOREAN_TURTLE_SHIP_DESCRIPTION', 'Korean unique Renaissance era Naval Melee unit. Faster and stronger than the Caravel. +5 [ICON_Strength] vs damaged units.{BW_LOC_NAVAL_MELEE_GENERAL}', 'en_US'),
('LOC_UNIT_CANADA_HMCS_HAIDA_DESCRIPTION', 'Canadian unique Naval Melee unit that replaces the Destroyer. +10 [ICON_Strength] versus Naval Raider class units. +5 [ICON_Strength] when in formation. Prevents friendly Traders within 4 tiles from being plundered as long as they are on a water tile.{BW_LOC_NAVAL_MELEE_GENERAL}', 'en_US'),
('LOC_UNIT_OTTOMAN_BARBARY_CORSAIR_DESCRIPTION', 'Ottoman unique Medieval era Naval Raider unit that replaces the Privateer. It costs no [ICON_Movement] Movement to coastal raid.{BW_LOC_NAVAL_RAIDER_GENERAL}', 'en_US'),
('LOC_UNIT_GERMAN_UBOAT_DESCRIPTION', 'German unique Modern era Naval Raider unit that replaces the Submarine. Cheaper to produce, +1 Sight, and +10 [ICON_Strength] Combat Strength when fighting on Ocean tiles.{BW_LOC_NAVAL_RAIDER_GENERAL}', 'en_US'),
('LOC_UNIT_DE_ZEVEN_PROVINCIEN_DESCRIPTION', 'Netherlands unique renaissance era Naval Ranged unit that replaces the Frigate. +7 [ICON_Ranged] Ranged Attack Strength when attacking cities and encampments.{BW_LOC_NAVAL_RANGED_GENERAL}', 'en_US'),
('LOC_UNIT_INDONESIAN_JONG_DESCRIPTION', 'Indonesian unique medieval era Naval Ranged that replaces the Frigate. +5 [ICON_Strength] Combat Strength when in a formation and all formation units inherit the Jong''s [ICON_Movement] Movement speed.{BW_LOC_NAVAL_RANGED_GENERAL}', 'en_US'),
('LOC_UNIT_BRAZILIAN_MINAS_GERAES_DESCRIPTION', 'Brazilian unique industrial era unit that replaces the Battleship. Unlocked by Nationalism.{BW_LOC_NAVAL_BOMBARD_GENERAL}', 'en_US')

;