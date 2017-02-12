-- Wonder Consolation

INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_WONDER_BEATEN_CONSOLATION_PRIZE', '1'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_WONDER_CONSOLATION_TWEAK' AND Value= 1 );
INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_WONDER_BEATEN_CONSOLATION_PRIZE', '2'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_WONDER_CONSOLATION_TWEAK' AND Value= 2 );
INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_WONDER_BEATEN_CONSOLATION_PRIZE', '3'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_WONDER_CONSOLATION_TWEAK' AND Value= 3 );
INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_WONDER_BEATEN_CONSOLATION_PRIZE', '4'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_WONDER_CONSOLATION_TWEAK' AND Value= 4 );
INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_WONDER_BEATEN_CONSOLATION_PRIZE', '5'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_WONDER_CONSOLATION_TWEAK' AND Value= 5 );
INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_CULTURE_PERCENTAGE_VALUE', '33'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_WONDER_CONSOLATION_TWEAK_ENABLER' AND Value= 1 );
INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_GA_PERCENTAGE_VALUE', '25'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_WONDER_CONSOLATION_TWEAK_ENABLER' AND Value= 1 );
INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_SCIENCE_PERCENTAGE_VALUE', '10'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_WONDER_CONSOLATION_TWEAK_ENABLER' AND Value= 1 );
INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_FAITH_PERCENTAGE_VALUE', '10'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_WONDER_CONSOLATION_TWEAK_ENABLER' AND Value= 1 );

------------------
-- Ancient

-- Pyramids

UPDATE Buildings
SET PolicyBranchType = NULL
WHERE Type = 'BUILDING_PYRAMID' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Cost = '185'
WHERE Type = 'BUILDING_PYRAMID' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET PrereqTech = 'TECH_CALENDAR'
WHERE Type = 'BUILDING_PYRAMID' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Building_FreeUnits
SET UnitType = 'UNIT_SETTLER'
WHERE BuildingType = 'BUILDING_PYRAMID' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Building_FreeUnits
SET NumUnits = '1'
WHERE BuildingType = 'BUILDING_PYRAMID' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Statue of Zeus
UPDATE Buildings
SET PolicyBranchType = NULL
WHERE Type = 'BUILDING_STATUE_ZEUS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET PrereqTech = 'TECH_BRONZE_WORKING'
WHERE Type = 'BUILDING_STATUE_ZEUS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET FreeBuildingThisCity = 'BUILDINGCLASS_FORGE'
WHERE Type = 'BUILDING_STATUE_ZEUS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Cost = '185'
WHERE Type = 'BUILDING_STATUE_ZEUS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield)
SELECT 'BUILDING_STATUE_ZEUS' , 'YIELD_FAITH' , '1'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Stonehenge
UPDATE Buildings
SET PrereqTech = 'TECH_POTTERY'
WHERE Type = 'BUILDING_STONEHENGE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET FreeBuildingThisCity = 'BUILDINGCLASS_GROVE'
WHERE Type = 'BUILDING_STONEHENGE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Help = 'TXT_KEY_BUILDING_STONEHENGE_HELP'
WHERE Type = 'BUILDING_STONEHENGE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

INSERT INTO Building_InstantYield (BuildingType, YieldType, Yield)
SELECT 'BUILDING_STONEHENGE' , 'YIELD_FAITH' , '50'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Building_YieldChanges
SET Yield = '2'
WHERE BuildingType = 'BUILDING_STONEHENGE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Cost = '150'
WHERE Type = 'BUILDING_STONEHENGE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Halicarnassus
UPDATE Building_YieldChanges
SET Yield = '2'
WHERE BuildingType = 'BUILDING_MAUSOLEUM_HALICARNASSUS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

DELETE FROM Building_ResourceYieldChanges
WHERE BuildingType = 'BUILDING_MAUSOLEUM_HALICARNASSUS';

UPDATE Buildings
SET GreatPersonExpendGold = '0'
WHERE Type = 'BUILDING_MAUSOLEUM_HALICARNASSUS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET WLTKDTurns = '20'
WHERE Type = 'BUILDING_MAUSOLEUM_HALICARNASSUS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET FreeBuildingThisCity = 'BUILDINGCLASS_STONE_WORKS'
WHERE Type = 'BUILDING_MAUSOLEUM_HALICARNASSUS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Artemis

UPDATE Buildings
SET FreeBuildingThisCity = 'BUILDINGCLASS_GRANARY'
WHERE Type = 'BUILDING_TEMPLE_ARTEMIS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );


-- Petra
UPDATE Buildings
SET PrereqTech = 'TECH_HORSEBACK_RIDING'
WHERE Type = 'BUILDING_PETRA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Cost = '185'
WHERE Type = 'BUILDING_PETRA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Building_YieldChanges
SET Yield = '2'
WHERE BuildingType = 'BUILDING_PETRA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

DELETE FROM Building_TerrainYieldChanges
WHERE BuildingType = 'BUILDING_PETRA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

DELETE FROM Building_FeatureYieldChanges
WHERE BuildingType = 'BUILDING_PETRA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-----------------
-- Classical

-- Great Library

UPDATE Buildings
SET Cost = '200'
WHERE Type = 'BUILDING_GREAT_LIBRARY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Hanging Gardens
UPDATE Buildings
SET Cost = '200'
WHERE Type = 'BUILDING_HANGING_GARDEN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET PolicyBranchType = NULL
WHERE Type = 'BUILDING_HANGING_GARDEN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET PolicyType = 'POLICY_TRADITION_FINISHER'
WHERE Type = 'BUILDING_HANGING_GARDEN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Building_YieldChanges
SET Yield = '10'
WHERE BuildingType = 'BUILDING_HANGING_GARDEN' AND YieldType = 'YIELD_FOOD' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Great Lighthouse
INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield)
SELECT 'BUILDING_GREAT_LIGHTHOUSE' , 'YIELD_PRODUCTION' , '2'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Cost = '200'
WHERE Type = 'BUILDING_GREAT_LIGHTHOUSE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Colossus
UPDATE Buildings
SET PrereqTech = 'TECH_METAL_CASTING'
WHERE Type = 'BUILDING_COLOSSUS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Cost = '250'
WHERE Type = 'BUILDING_COLOSSUS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Terracotta Army
UPDATE Buildings
SET PolicyBranchType = NULL
WHERE Type = 'BUILDING_TERRACOTTA_ARMY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET PolicyType = 'POLICY_HONOR_FINISHER'
WHERE Type = 'BUILDING_TERRACOTTA_ARMY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Cost = '200'
WHERE Type = 'BUILDING_TERRACOTTA_ARMY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET GoldenAge = '1'
WHERE Type = 'BUILDING_TERRACOTTA_ARMY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

INSERT INTO Building_InstantYield (BuildingType, YieldType, Yield)
SELECT  'BUILDING_TERRACOTTA_ARMY' , 'YIELD_CULTURE' , '100'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Parthenon
UPDATE Buildings
SET PolicyBranchType = NULL
WHERE Type = 'BUILDING_PARTHENON' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET PolicyType = 'POLICY_LIBERTY_FINISHER'
WHERE Type = 'BUILDING_PARTHENON' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET ThemingBonusHelp = 'TXT_KEY_PARTHENON_THEMING_BONUS_HELP'
WHERE Type = 'BUILDING_PARTHENON' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET GreatWorkCount = '2'
WHERE Type = 'BUILDING_PARTHENON' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Building_YieldChanges
SET Yield = '2'
WHERE BuildingType = 'BUILDING_PARTHENON' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

INSERT INTO Building_BuildingClassYieldChanges
	(BuildingType, BuildingClassType, YieldType, YieldChange)
VALUES
	('BUILDING_PARTHENON', 'BUILDINGCLASS_AMPHITHEATER', 'YIELD_CULTURE', 1),
	('BUILDING_PARTHENON', 'BUILDINGCLASS_AMPHITHEATER', 'YIELD_SCIENCE', 1);

-- Oracle
DELETE FROM Building_YieldChanges
WHERE BuildingType = 'BUILDING_ORACLE';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield)
SELECT  'BUILDING_ORACLE' , 'YIELD_SCIENCE' , '1'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Great Wall

INSERT INTO Building_FreeUnits (BuildingType, UnitType, NumUnits)
SELECT 'BUILDING_GREAT_WALL' , 'UNIT_GREAT_GENERAL' , '1'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Angkor Wat

UPDATE Buildings
SET PrereqTech = 'TECH_CURRENCY'
WHERE Type = 'BUILDING_ANGKOR_WAT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Cost = '250'
WHERE Type = 'BUILDING_ANGKOR_WAT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield)
SELECT 'BUILDING_ANGKOR_WAT' , 'YIELD_FAITH' , '1'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );


----------------------------
-- Medieval

-- Alhambra

UPDATE Buildings
SET Cost = '400'
WHERE Type = 'BUILDING_ALHAMBRA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET CultureRateModifier = '10'
WHERE Type = 'BUILDING_ALHAMBRA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Mosque of Djenne
UPDATE Buildings
SET PolicyBranchType = NULL
WHERE Type = 'BUILDING_MOSQUE_OF_DJENNE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Cost = '400'
WHERE Type = 'BUILDING_MOSQUE_OF_DJENNE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET PolicyType = 'POLICY_PIETY_FINISHER'
WHERE Type = 'BUILDING_MOSQUE_OF_DJENNE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET PrereqTech = 'TECH_EDUCATION'
WHERE Type = 'BUILDING_MOSQUE_OF_DJENNE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET ExtraMissionarySpreads = '0'
WHERE Type = 'BUILDING_MOSQUE_OF_DJENNE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET SpecialistType = 'SPECIALIST_SCIENTIST'
WHERE Type = 'BUILDING_MOSQUE_OF_DJENNE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET GreatPeopleRateChange = '1'
WHERE Type = 'BUILDING_MOSQUE_OF_DJENNE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET FreeBuildingThisCity = 'BUILDINGCLASS_MOSQUE'
WHERE Type = 'BUILDING_MOSQUE_OF_DJENNE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- St. Basil's
DELETE FROM Building_UnitCombatProductionModifiers
WHERE BuildingType = 'BUILDING_KREMLIN';

UPDATE Buildings
SET PolicyBranchType = NULL
WHERE Type = 'BUILDING_KREMLIN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Cost = '400'
WHERE Type = 'BUILDING_KREMLIN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET IsReformation = '1'
WHERE Type = 'BUILDING_KREMLIN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET FreePolicies = '0'
WHERE Type = 'BUILDING_KREMLIN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET HolyCity = '1'
WHERE Type = 'BUILDING_KREMLIN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET PrereqTech = 'TECH_THEOLOGY'
WHERE Type = 'BUILDING_KREMLIN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

DELETE FROM Building_UnitCombatProductionModifiers
WHERE BuildingType = 'BUILDING_KREMLIN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Borobudur
UPDATE Buildings
SET PrereqTech = 'TECH_GUILDS'
WHERE Type = 'BUILDING_BOROBUDUR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET FreeBuildingThisCity = 'BUILDINGCLASS_MONASTERY'
WHERE Type = 'BUILDING_BOROBUDUR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Cost = '500'
WHERE Type = 'BUILDING_BOROBUDUR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Hagia Sophia

UPDATE Buildings
SET Cost = '400'
WHERE Type = 'BUILDING_HAGIA_SOPHIA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

DELETE FROM Building_YieldChanges
WHERE BuildingType = 'BUILDING_HAGIA_SOPHIA';
-- Machu Pichu
UPDATE Buildings
SET PrereqTech = 'TECH_PHYSICS'
WHERE Type = 'BUILDING_MACHU_PICHU' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET CityConnectionTradeRouteModifier = '33'
WHERE Type = 'BUILDING_MACHU_PICHU' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Cost = '400'
WHERE Type = 'BUILDING_MACHU_PICHU' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Notre Dame
UPDATE Buildings
SET UnmoddedHappiness = '2'
WHERE Type = 'BUILDING_NOTRE_DAME' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Cost = '500'
WHERE Type = 'BUILDING_NOTRE_DAME' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET PrereqTech = 'TECH_MACHINERY'
WHERE Type = 'BUILDING_NOTRE_DAME' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET ThemingBonusHelp = 'TXT_KEY_BUILDING_NOTRE_DAME_THEMING_BONUS_HELP'
WHERE Type = 'BUILDING_NOTRE_DAME' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET GreatWorkCount = '2'
WHERE Type = 'BUILDING_NOTRE_DAME' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET GreatWorkSlotType = 'GREAT_WORK_SLOT_ART_ARTIFACT'
WHERE Type = 'BUILDING_NOTRE_DAME' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Help = 'TXT_KEY_BUILDING_NOTRE_DAME_HELP'
WHERE Type = 'BUILDING_NOTRE_DAME' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET FreeBuildingThisCity = 'BUILDINGCLASS_CATHEDRAL'
WHERE Type = 'BUILDING_NOTRE_DAME' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Forbidden Palace
UPDATE Buildings
SET PrereqTech = 'TECH_CIVIL_SERVICE'
WHERE Type = 'BUILDING_FORBIDDEN_PALACE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET PolicyBranchType = NULL
WHERE Type = 'BUILDING_FORBIDDEN_PALACE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET PolicyType = 'POLICY_PATRONAGE_FINISHER'
WHERE Type = 'BUILDING_FORBIDDEN_PALACE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Cost = '500'
WHERE Type = 'BUILDING_FORBIDDEN_PALACE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET UnhappinessModifier = '0'
WHERE Type = 'BUILDING_FORBIDDEN_PALACE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET SingleLeagueVotes = '0'
WHERE Type = 'BUILDING_FORBIDDEN_PALACE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

UPDATE Buildings
SET ExtraLeagueVotes = '2'
WHERE Type = 'BUILDING_FORBIDDEN_PALACE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

----------------------
-- Renaissance

-- Himeji Castle

UPDATE Buildings
SET Cost = '800'
WHERE Type = 'BUILDING_HIMEJI_CASTLE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET GlobalDefenseMod = '10'
WHERE Type = 'BUILDING_HIMEJI_CASTLE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

INSERT INTO Building_FreeUnits (BuildingType, UnitType, NumUnits)
SELECT 'BUILDING_HIMEJI_CASTLE' , 'UNIT_SCIENTIST' , '1'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Chichen Itza

UPDATE Buildings
SET PrereqTech = 'TECH_ASTRONOMY'
WHERE Type = 'BUILDING_CHICHEN_ITZA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Cost = '800'
WHERE Type = 'BUILDING_CHICHEN_ITZA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Happiness = '0'
WHERE Type = 'BUILDING_CHICHEN_ITZA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Globe Theater
UPDATE Buildings
SET Cost = '800'
WHERE Type = 'BUILDING_GLOBE_THEATER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Pisa
UPDATE Buildings
SET PrereqTech = 'TECH_CHEMISTRY'
WHERE Type = 'BUILDING_LEANING_TOWER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET GlobalGreatPeopleRateModifier = '10'
WHERE Type = 'BUILDING_LEANING_TOWER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET GreatPeopleRateModifier = '15'
WHERE Type = 'BUILDING_LEANING_TOWER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Cost = '800'
WHERE Type = 'BUILDING_LEANING_TOWER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Uffizi
UPDATE Buildings
SET PrereqTech = 'TECH_ECONOMICS'
WHERE Type = 'BUILDING_UFFIZI' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET PolicyBranchType = NULL
WHERE Type = 'BUILDING_UFFIZI' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET PolicyType = 'POLICY_AESTHETICS_FINISHER'
WHERE Type = 'BUILDING_UFFIZI' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Cost = '900'
WHERE Type = 'BUILDING_UFFIZI' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Taj Mahal
UPDATE Buildings
SET Happiness = '0'
WHERE Type = 'BUILDING_TAJ_MAHAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Cost = '900'
WHERE Type = 'BUILDING_TAJ_MAHAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Building_YieldChanges
SET Yield = '2'
WHERE BuildingType = 'BUILDING_TAJ_MAHAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Porcelain Tower

UPDATE Buildings
SET PrereqTech = 'TECH_ARCHITECTURE'
WHERE Type = 'BUILDING_PORCELAIN_TOWER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET PolicyBranchType = NULL
WHERE Type = 'BUILDING_PORCELAIN_TOWER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Cost = '900'
WHERE Type = 'BUILDING_PORCELAIN_TOWER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Sistine Chapel

UPDATE Buildings
SET Cost = '900'
WHERE Type = 'BUILDING_SISTINE_CHAPEL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET GlobalCultureRateModifier = '10'
WHERE Type = 'BUILDING_SISTINE_CHAPEL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Red Fort
UPDATE Buildings
SET GlobalDefenseMod = '0'
WHERE Type = 'BUILDING_RED_FORT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Defense = '3000'
WHERE Type = 'BUILDING_RED_FORT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET ExtraCityHitPoints = '100'
WHERE Type = 'BUILDING_RED_FORT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Cost = '900'
WHERE Type = 'BUILDING_RED_FORT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET FreeBuildingThisCity = 'BUILDINGCLASS_ARSENAL'
WHERE Type = 'BUILDING_RED_FORT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

INSERT INTO Building_FreeUnits (BuildingType, UnitType, NumUnits)
SELECT 'BUILDING_RED_FORT' , 'UNIT_ENGINEER' , '1'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

--------------------
-- Industrial

-- Brandenburg Gate

UPDATE Buildings
SET PolicyBranchType = NULL
WHERE Type = 'BUILDING_BRANDENBURG_GATE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET PolicyType = 'POLICY_EXPLORATION_FINISHER'
WHERE Type = 'BUILDING_BRANDENBURG_GATE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Cost = '1250'
WHERE Type = 'BUILDING_BRANDENBURG_GATE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Louvre
UPDATE Buildings
SET PolicyBranchType = NULL
WHERE Type = 'BUILDING_LOUVRE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Cost = '1250'
WHERE Type = 'BUILDING_LOUVRE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET PrereqTech = 'TECH_ARCHAEOLOGY'
WHERE Type = 'BUILDING_LOUVRE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Eiffel Tower
UPDATE Buildings
SET UnmoddedHappiness = '0'
WHERE Type = 'BUILDING_EIFFEL_TOWER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET TechEnhancedTourism = '0'
WHERE Type = 'BUILDING_EIFFEL_TOWER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET EnhancedYieldTech = NULL
WHERE Type = 'BUILDING_EIFFEL_TOWER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Cost = '1250'
WHERE Type = 'BUILDING_EIFFEL_TOWER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET PolicyCostModifier = '-10'
WHERE Type = 'BUILDING_EIFFEL_TOWER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET PrereqTech = 'TECH_DYNAMITE'
WHERE Type = 'BUILDING_EIFFEL_TOWER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Big Ben

UPDATE Buildings
SET Cost = '1250'
WHERE Type = 'BUILDING_BIG_BEN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET PolicyBranchType = NULL
WHERE Type = 'BUILDING_BIG_BEN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET PolicyType = 'POLICY_COMMERCE_FINISHER'
WHERE Type = 'BUILDING_BIG_BEN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Neuschwanstein

UPDATE Buildings
SET Happiness = '0'
WHERE Type = 'BUILDING_NEUSCHWANSTEIN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Building_BuildingClassYieldChanges
SET YieldChange = '1'
WHERE BuildingType = 'BUILDING_NEUSCHWANSTEIN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Cost = '1000'
WHERE Type = 'BUILDING_NEUSCHWANSTEIN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-----------------------
--Modern

-- Statue of Liberty
UPDATE Buildings
SET PrereqTech = 'TECH_BIOLOGY'
WHERE Type = 'BUILDING_STATUE_OF_LIBERTY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Cost = '1600'
WHERE Type = 'BUILDING_STATUE_OF_LIBERTY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Cristo Redentor
UPDATE Buildings
SET Cost = '1700'
WHERE Type = 'BUILDING_CRISTO_REDENTOR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET PolicyCostModifier = '0'
WHERE Type = 'BUILDING_CRISTO_REDENTOR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET TechEnhancedTourism = '25'
WHERE Type = 'BUILDING_CRISTO_REDENTOR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET EnhancedYieldTech = 'TECH_PLASTIC'
WHERE Type = 'BUILDING_CRISTO_REDENTOR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

INSERT INTO Building_BuildingClassYieldChanges
	(BuildingType, BuildingClassType, YieldType, YieldChange)
VALUES
	('BUILDING_CRISTO_REDENTOR', 'BUILDINGCLASS_HOTEL', 'YIELD_TOURISM', 2),
	('BUILDING_CRISTO_REDENTOR', 'BUILDINGCLASS_HOTEL', 'YIELD_GOLDEN_AGE_POINTS', 2),
	('BUILDING_CRISTO_REDENTOR', 'BUILDINGCLASS_HOTEL', 'YIELD_CULTURE', 2);

-- Prora
UPDATE Buildings
SET Cost = '1700'
WHERE Type = 'BUILDING_PRORA_RESORT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Broadway
UPDATE Buildings
SET Cost = '1700'
WHERE Type = 'BUILDING_BROADWAY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-------------------------
-- Atomic
-- Pentagon
UPDATE Buildings
SET Cost = '1900'
WHERE Type = 'BUILDING_PENTAGON' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

----------------
-- Information

-- CN Tower
UPDATE Buildings
SET Cost = '2300'
WHERE Type = 'BUILDING_CN_TOWER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Sydney Opera House
UPDATE Buildings
SET Cost = '2300'
WHERE Type = 'BUILDING_SYDNEY_OPERA_HOUSE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET CultureRateModifier = '25'
WHERE Type = 'BUILDING_SYDNEY_OPERA_HOUSE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

-- Move Apollo 
UPDATE Projects
SET TechPrereq = 'TECH_SATELLITES'
WHERE Type = 'PROJECT_APOLLO_PROGRAM' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

-- Move Hubble
UPDATE Buildings
SET PrereqTech = 'TECH_ROBOTICS'
WHERE Type = 'BUILDING_HUBBLE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

UPDATE Buildings
SET Cost = '3000'
WHERE Type = 'BUILDING_HUBBLE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Move Great Firewall
UPDATE Buildings
SET PrereqTech = 'TECH_INTERNET'
WHERE Type = 'BUILDING_GREAT_FIREWALL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

UPDATE Buildings
SET Cost = '3000'
WHERE Type = 'BUILDING_GREAT_FIREWALL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

INSERT INTO Building_BuildingClassYieldChanges
	(BuildingType, BuildingClassType, YieldType, YieldChange)
VALUES
	('BUILDING_GREAT_FIREWALL', 'BUILDINGCLASS_LABORATORY', 'YIELD_SCIENCE', 10);

-- Projects

UPDATE LeagueProjects
SET CostPerPlayer = '2750'
WHERE Type = 'LEAGUE_PROJECT_INTERNATIONAL_SPACE_STATION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE LeagueProjects
SET CostPerPlayer = '1250'
WHERE Type = 'LEAGUE_PROJECT_WORLD_FAIR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE LeagueProjects
SET CostPerPlayer = '2250'
WHERE Type = 'LEAGUE_PROJECT_WORLD_GAMES' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- NEW DATA

INSERT INTO Building_TerrainYieldChanges
	(BuildingType, TerrainType, YieldType, Yield)
VALUES
	('BUILDING_PETRA', 'TERRAIN_DESERT', 'YIELD_GOLD', 1);

INSERT INTO Building_YieldPerXTerrainTimes100
	(BuildingType, TerrainType, YieldType, Yield)
VALUES
	('BUILDING_MACHU_PICHU', 'TERRAIN_MOUNTAIN', 'YIELD_FOOD', 100),
	('BUILDING_MACHU_PICHU', 'TERRAIN_MOUNTAIN', 'YIELD_CULTURE', 100),
	('BUILDING_MACHU_PICHU', 'TERRAIN_MOUNTAIN', 'YIELD_FAITH', 100),
	('BUILDING_MACHU_PICHU', 'TERRAIN_MOUNTAIN', 'YIELD_PRODUCTION', 100);

INSERT INTO Building_WLTKDYieldMod
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_MAUSOLEUM_HALICARNASSUS', 'YIELD_PRODUCTION', 10);

INSERT INTO Building_YieldFromGPExpend
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_MAUSOLEUM_HALICARNASSUS', 'YIELD_CULTURE', 30),
	('BUILDING_MOSQUE_OF_DJENNE', 'YIELD_SCIENCE', 50);

INSERT INTO Building_YieldChangesPerPop
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_TAJ_MAHAL', 'YIELD_GOLDEN_AGE_POINTS', 20);

INSERT INTO Building_ThemingBonuses
	(BuildingType, Description, Bonus, RequiresOwner, RequiresUniquePlayers, RequiresAnyButOwner, AIPriority)
VALUES
	('BUILDING_PARTHENON', 'TXT_KEY_THEMING_BONUS_BUILDING_PARTHENON', 4, 1, 0, 0, 2),
	('BUILDING_NOTRE_DAME', 'TXT_KEY_THEMING_BONUS_BUILDING_NOTRE_DAME', 4, 0, 1, 1, 2);

-- New Wonder Yields and Data
UPDATE Building_Flavors
SET Flavor = '60'
WHERE BuildingType = 'BUILDING_STONEHENGE';

INSERT INTO Building_Flavors
	(BuildingType, FlavorType, Flavor)
VALUES
	('BUILDING_MOTHERLAND_STATUE', 'FLAVOR_GREAT_PEOPLE', 30),
	('BUILDING_MOTHERLAND_STATUE', 'FLAVOR_HAPPINESS', 40),
	('BUILDING_MOTHERLAND_STATUE', 'FLAVOR_WONDER', 25),
	('BUILDING_SLATER_MILL', 'FLAVOR_GREAT_PEOPLE', 30),
	('BUILDING_SLATER_MILL', 'FLAVOR_PRODUCTION', 40),
	('BUILDING_SLATER_MILL', 'FLAVOR_WONDER', 25),
	('BUILDING_BLETCHLEY_PARK', 'FLAVOR_GREAT_PEOPLE', 30),
	('BUILDING_BLETCHLEY_PARK', 'FLAVOR_SCIENCE', 40),
	('BUILDING_BLETCHLEY_PARK', 'FLAVOR_WONDER', 25),
	('BUILDING_EMPIRE_STATE_BUILDING', 'FLAVOR_GREAT_PEOPLE', 50),
	('BUILDING_EMPIRE_STATE_BUILDING', 'FLAVOR_GOLD', 30),
	('BUILDING_EMPIRE_STATE_BUILDING', 'FLAVOR_WONDER', 30),
	('BUILDING_CERN', 'FLAVOR_SCIENCE', 50),
	('BUILDING_CERN', 'FLAVOR_WONDER', 30);

INSERT INTO Building_YieldChanges
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_SLATER_MILL', 'YIELD_PRODUCTION', 5),
	('BUILDING_MOTHERLAND_STATUE', 'YIELD_CULTURE', 1),
	('BUILDING_BLETCHLEY_PARK', 'YIELD_SCIENCE', 5),
	('BUILDING_EMPIRE_STATE_BUILDING', 'YIELD_CULTURE', 1),
	('BUILDING_CERN', 'YIELD_SCIENCE', 10),
	('BUILDING_MOSQUE_OF_DJENNE', 'YIELD_FAITH', 1),
	('BUILDING_MOSQUE_OF_DJENNE', 'YIELD_SCIENCE', 1),
	('BUILDING_KREMLIN', 'YIELD_FAITH', 4),
	('BUILDING_KREMLIN', 'YIELD_CULTURE', 3),
	('BUILDING_STATUE_ZEUS', 'YIELD_CULTURE', 1),
	('BUILDING_STONEHENGE', 'YIELD_CULTURE', 1),
	('BUILDING_HAGIA_SOPHIA', 'YIELD_FAITH', 5),
	('BUILDING_HAGIA_SOPHIA', 'YIELD_CULTURE', 5);

INSERT INTO Building_ResourceQuantity
	(BuildingType, ResourceType, Quantity)
VALUES
	('BUILDING_SLATER_MILL', 'RESOURCE_COAL', 2);

INSERT INTO Building_SpecialistYieldChanges
	(BuildingType, SpecialistType, YieldType, Yield)
VALUES
	('BUILDING_EMPIRE_STATE_BUILDING', 'SPECIALIST_CITIZEN', 'YIELD_GOLD', 1),
	('BUILDING_EMPIRE_STATE_BUILDING', 'SPECIALIST_ARTIST', 'YIELD_GOLD', 1),
	('BUILDING_EMPIRE_STATE_BUILDING', 'SPECIALIST_SCIENTIST', 'YIELD_GOLD', 1),
	('BUILDING_EMPIRE_STATE_BUILDING', 'SPECIALIST_MERCHANT', 'YIELD_GOLD', 1),
	('BUILDING_EMPIRE_STATE_BUILDING', 'SPECIALIST_ENGINEER', 'YIELD_GOLD', 1),
	('BUILDING_EMPIRE_STATE_BUILDING', 'SPECIALIST_WRITER', 'YIELD_GOLD', 1),
	('BUILDING_EMPIRE_STATE_BUILDING', 'SPECIALIST_MUSICIAN', 'YIELD_GOLD', 1);

INSERT INTO Civilization_BuildingClassOverrides
	(CivilizationType, BuildingClassType, BuildingType)
VALUES
	('CIVILIZATION_MINOR', 'BUILDINGCLASS_CERN', NULL),
	('CIVILIZATION_MINOR', 'BUILDINGCLASS_EMPIRE_STATE_BUILDING', NULL),
	('CIVILIZATION_MINOR', 'BUILDINGCLASS_SLATER_MILL', NULL),
	('CIVILIZATION_MINOR', 'BUILDINGCLASS_MOTHERLAND_STATUE', NULL),
	('CIVILIZATION_MINOR', 'BUILDINGCLASS_BLETCHLEY_PARK', NULL),
	('CIVILIZATION_BARBARIAN', 'BUILDINGCLASS_CERN', NULL),
	('CIVILIZATION_BARBARIAN', 'BUILDINGCLASS_EMPIRE_STATE_BUILDING', NULL),
	('CIVILIZATION_BARBARIAN', 'BUILDINGCLASS_SLATER_MILL', NULL),
	('CIVILIZATION_BARBARIAN', 'BUILDINGCLASS_MOTHERLAND_STATUE', NULL),
	('CIVILIZATION_BARBARIAN', 'BUILDINGCLASS_BLETCHLEY_PARK', NULL);