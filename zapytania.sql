SELECT * FROM `buildings`
SELECT * FROM `buildings_has_resources`
SELECT * FROM `maps`
SELECT * FROM `maps_has_buildings`
SELECT * FROM `maps_has_objectives`
SELECT * FROM `maps_has_resources`
SELECT * FROM `objectives`
SELECT * FROM `players`
SELECT * FROM `quests`
SELECT * FROM `resources`
SELECT * FROM `teams`
SELECT * FROM `teams_has_players`
SELECT * FROM `teams_has_troops`
SELECT * FROM `troops`
SELECT * FROM `troops_has_quests`
SELECT * FROM `troops_has_resources`
SELECT * FROM `troops_has_weapons`
SELECT * FROM `weapons`
SELECT * FROM `weapons_has_resources`

SELECT * FROM `troops`
JOIN troops_has_weapons ON troops.id = troops_has_weapons.troops_id
JOIN weapons ON weapons.id = troops_has_weapons.weapons_id

SELECT * FROM `troops`
JOIN troops_has_resources ON troops.id = troops_has_resources.troops_id
JOIN resources ON resources.id = troops_has_resources.resources_id

SELECT * FROM `troops`
JOIN troops_has_quests ON troops.id = troops_has_quests.troops_id
JOIN quests ON quests.id = troops_has_quests.quests_id

SELECT * FROM `weapons` 
JOIN weapons_has_resources ON weapons.id = weapons_has_resources.weapons_id
JOIN resources ON resources.id = weapons_has_resources.resources_id

SELECT * FROM `teams` 
JOIN teams_has_players ON teams.id = teams_has_players.teams_id
JOIN players ON players.id = teams_has_players.players_id

SELECT * FROM `teams` 
JOIN teams_has_troops ON teams.id = teams_has_troops.teams.id
JOIN troops ON troops.id = teams_has_troops.troops_id

SELECT * FROM `maps` 
JOIN maps_has_buildings ON maps.id = maps_has_buildings.maps_id
JOIN buildings ON buildings.id = maps_has_buildings.buildings_id

SELECT * FROM `maps` 
JOIN maps_has_objectives ON maps.id = maps_has_objectives.maps_id
JOIN objectives ON objectives.id = maps_has_objectives.objectives_id

SELECT * FROM `maps` 
JOIN maps_has_resources ON maps.id = maps_has_resources.maps_id
JOIN resources ON resources.id = maps_has_resources.resources_id

SELECT * FROM `buildings` 
JOIN buildings_has_resources ON buildings.id = buildings_has_resources.buildings_id
JOIN resources ON resources.id = buildings_has_resources.resources_id




