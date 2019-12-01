DROP TABLE IF EXISTS BW_NewUnitClasses ;
CREATE TABLE BW_NewUnitClasses (ClassName VARCHAR) ;

INSERT INTO BW_NewUnitClasses
(ClassName)
VALUES
('ARCHER'),
('HEAVY_INFANTRY'),
('LIGHT_INFANTRY'),
('HEAVY_CAVALRY'),
('LIGHT_CAVALRY'),
('ELEPHANT'),
('MONK'),
('SIEGE'),

('DEFENSIVE_GUN'),
('FIREARM_INFANTRY'),
('FIREARM_CAVALRY'),
('FIELD_ARTILLERY'),
('SIEGE_ARTILLERY'),
('MARINE'),
('TANK'),
('AERIAL_OBSERVATION'),
('HELICOPTER'),
('GIANT_DEATH_ROBOT'),


('GALLEY'), -- triaconters (30 oars), penteconters (50 oars), monoreme (1-row), bireme (2-rows), trireme (3-rows), quinqueremes (literally a "five-oar", but actually meant that there were several rowers to certain banks of oars which made up five lines of oar handlers), dromon
			-- galleys w catapults & heavy crossbows/ballistas

			-- tactics: ramming, shooting arrows, burning arrows, Greek fire, javelins, boarding (attaching to it with grappling irons),  Breaking the enemy's oars
			-- ramming attacks: diekplous (breaking through the enemy formation), periplous (outflanking it)
			-- War galleys gradually began to develop heavier hulls with reinforcing beams at the waterline, where a ram would most likely hit.
			-- pouring the content of fire pots attached to long handles is thought to have been used, especially since smoke below decks would easily disable rowers
			-- never capable of deep ocean
			-- heavier ships with larger rowing complements and more men per oar
			-- The Romans baffled the ramming tactics of the Carthaginians by the invention of the corva, or crow, a plank with a spike for hooking onto enemy ships which grappled the prow of the rammer, and provided a gangway for boarders
			-- An older and alternative way for boarding was the use of grappling hooks and planks, also a more flexible system than the corvus. Agrippa introduced a weapon with a function similar to the corvus, the harpax (grappling hook fired from a ballista mounted on the galley).
			-- By late antiquity, in the 1st centuries AD, ramming tactics had completely disappeared along with the knowledge of the original trireme and its high speed and mobility. The ram was replaced by a long spur in the bow that was designed to break oars and to act as a boarding platform for storming enemy ships.
			-- The Byzantine navy, the largest Mediterranean war fleet throughout most of the early Middle Ages, employed crescent formations with the flagship in the center and the heavier ships at the horns of the formation, in order to turn the enemy's flanks
			-- Middle Ages also saw the introduction of forecastle and aftcastle, raised platforms on the fore and aft of the ship, which would provide archers with a raised platform for shooting down at enemies and a stronghold in case the ship was boarded.
			-- Cannons and small firearms were introduced around the 14th century, but did not have any immediate effect on tactics. If anything, the forward offensive power of galleys was accentuated by naval artillery.
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),

('NAVAL_BOMBARD'),
('NAVAL_CARRIER'),
('NAVAL_MELEE'),
('NAVAL_RECONRAIDER'),
('NAVAL_RANGED'),
('SUBMARINE'),

('AIR_ATTACK'),
('AIR_BOMBER'),
('AIR_FIGHTER'),

('RECON'),
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

