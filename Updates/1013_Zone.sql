-- Delete three random chess square triggers that seem to have escaped karazhan :O
DELETE FROM creature WHERE id = 17316 AND map = 530;


-- Boulderfist Crusher/Boulderfist Mystic
DELETE FROM creature_addon WHERE guid IN (68492,68493);
DELETE FROM creature_movement WHERE id IN (68492,68493);
DELETE FROM game_event_creature WHERE guid IN (68492,68493);
DELETE FROM game_event_creature_data WHERE guid IN (68492,68493);
DELETE FROM creature_battleground WHERE guid IN (68492,68493);
DELETE FROM creature_linking WHERE guid IN (68492,68493)
 OR master_guid IN (68492,68493);
DELETE FROM creature WHERE guid IN (68492,68493);
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
-- Boulderfist Crusher
(68492,17134,530,1,0,0,-2174.165,6081.968,72.46264,4.486988,300,300,2,0,5715,0,0,1), -- Boulderfist Crusher
-- Boulderfist Mystic
(68493,17135,530,1,0,0,-2353.576,6196.409,49.09693,0,300,300,0,0,4572,2705,0,0); -- Boulderfist Mystic
-- Fix positions, MovementType and spawndist
UPDATE creature SET position_x = -2254.501 ,position_y = 6228.208, position_z = 43.00068, orientation = 4.066617 WHERE guid = 60070;
UPDATE creature SET position_x = -2258.156, position_y = 6223.644, position_z = 43.70845, orientation = 0.8377581 WHERE guid = 60071;
UPDATE creature SET position_x = -2557.923, position_y = 6289.339, position_z = 14.93073, orientation = 5.044002 WHERE guid = 60073;
UPDATE creature SET position_x = -2548.215, position_y = 6278.791, position_z = 14.34162, orientation = 6.090689, MovementType = 1, spawndist = 15 WHERE guid = 60074;
UPDATE creature SET position_x = -2482.29, position_y = 6252.11, position_z = 31.31107, orientation = 1.295753, MovementType = 1, spawndist = 15 WHERE guid = 60050;
UPDATE creature SET MovementType = 1,spawndist = 15 WHERE guid IN (60062,60078);
UPDATE creature SET MovementType = 1,spawndist = 10 WHERE guid IN (60061,60089,60049,60069,60088,60055,60054,60053);
UPDATE creature SET MovementType = 1,spawndist = 2 WHERE guid IN (60067,60063,60068,60066,60064,60087,60086,60072,60051,60077,60057);

-- Boulderfist Mystics
-- There are a bunch of these in pairs that do random emotes OOC
-- Do it in EventAI for random timers
-- Throw AI Event to trigger phase 2 for self, then set idle movement. (We really need a way to specify GUIDs directly in EventAI :P)
DELETE FROM dbscripts_on_creature_movement WHERE id = 1713501;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,datalong3,dataint,dataint2,dataint3,dataint4,buddy_entry,search_radius,data_flags,comments,x,y,z,o) VALUES
(1713501,0,35,6,0,0,0,0,0,0,0,0,0,'Boulderfist Mystic - Throw AI Event Type 6 (B)',0,0,0,0),
(1713501,0,20,0,0,0,0,0,0,0,0,0,0,'Boulderfist Mystic - Set Idle Movement',0,0,0,0);

UPDATE creature SET MovementType = 2 WHERE guid IN(60076,60075,60079,60080,68493,60083,60084,60085,60071,60070,60081,60082);
DELETE FROM creature_movement WHERE id IN(60076,60075,60079,60080,68493,60083,60084,60085,60071,60070,60081,60082);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
-- 60076
(60076,1,-2541.29, 6309.98, 14.2807,1000,1713501,0.750492),
-- 60075
(60075,1,-2537.24, 6313.77, 14.0923,1000,1713501,3.89208),
-- 60079
(60079,1,-2537.2, 6159.07, 60.0224,1000,1713501,1.93731),
-- 60080
(60080,1,-2538.98, 6163.36, 60.0224,1000,1713501,5.13127),
-- 68493
(68493,1,-2353.58, 6196.41, 49.0969,1000,1713501,0),
-- 60083
(60083,1,-2346.64, 6195.92, 49.3596,1000,1713501,3.01942),
-- 60084
(60084,1,-2345.1, 6116.98, 61.4476,1000,1713501,3.01942),
-- 60085
(60085,1,-2349.18, 6117.24, 61.2811,1000,1713501,0),
-- 60071
(60071,1,-2258.16, 6223.64, 43.7085,1000,1713501,0.837758),
-- 60070
(60070,1,-2254.5, 6228.21, 43.0007,1000,1713501,4.06662),
-- 60081
(60081,1,-2483.06, 6105.18, 92.4103,1000,1713501,1.55334),
-- 60082
(60082,1,-2482.71, 6111.47, 92.1755,1000,1713501,4.62512);

-- Boulderfist Crushers pathing
-- #1
UPDATE creature SET position_x = -2550.233, position_y = 6249.649, position_z = 17.38174, orientation = 4.814135, spawndist = 0, MovementType = 2 WHERE guid = 60052; -- Set the proper spawnpoint
DELETE FROM creature_movement WHERE id = 60052;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(60052,1,-2577.251,6235.653,18.45096,0,0,100),
(60052,2,-2607.656,6236.104,18.94805,0,0,100),
(60052,3,-2606.656,6246.699,19.09185,0,0,100),
(60052,4,-2578.347,6262.054,19.71659,0,0,100),
(60052,5,-2561.33,6266.698,17.11542,0,0,100),
(60052,6,-2550.983,6289.674,14.78571,0,0,100),
(60052,7,-2533.952,6274.876,16.87946,0,0,100),
(60052,8,-2554.409,6234.14,17.21527,0,0,100),
(60052,9,-2583.25,6200.917,20.25212,0,0,100),
(60052,10,-2575.007,6166.878,21.78411,0,0,100),
(60052,11,-2590.12,6134.229,21.81025,0,0,100),
(60052,12,-2607.667,6166.835,22.28057,0,0,100),
(60052,13,-2600.179,6198.742,23.05938,0,0,100),
(60052,14,-2583.268,6200.287,20.32988,0,0,100),
(60052,15,-2564.738,6237.478,18.00775,0,0,100),
(60052,16,-2522.429,6252.29,20.19801,0,0,100),
(60052,17,-2494.24,6265.955,28.42438,0,0,100),
(60052,18,-2477.608,6245.658,31.17071,0,0,100),
(60052,19,-2459.413,6249.109,30.62293,0,0,100),
(60052,20,-2450.923,6262.668,31.41529,0,0,100),
(60052,21,-2451.458,6273.524,30.90981,0,0,100),
(60052,22,-2473.082,6274.135,31.2543,0,0,100),
(60052,23,-2481.972,6275.971,30.64639,0,0,100),
(60052,24,-2492.535,6289.705,33.41445,0,0,100),
(60052,25,-2480.027,6301.259,33.3386,0,0,100),
(60052,26,-2460.721,6304.374,33.70474,0,0,100),
(60052,27,-2454.64,6300.436,33.95633,0,0,100),
(60052,28,-2459.83,6297.436,32.64931,0,0,100),
(60052,29,-2484.486,6294.799,32.87319,0,0,100),
(60052,30,-2488.06,6282.862,31.43618,0,0,100),
(60052,31,-2494.241,6267.219,28.553,0,0,100),
(60052,32,-2522.571,6252.928,20.17067,0,0,100),
(60052,33,-2565.119,6251.4,18.20123,0,0,100);
-- #2 This one has a lot of issues on slopes. Adding points in between didn't help completely either. Map issue?
UPDATE creature SET position_x = -2368.993, position_y = 6155.321, position_z = 60.68983, orientation = 3.375115, spawndist = 0, MovementType = 2 WHERE guid = 60059; -- Set the proper spawnpoint
DELETE FROM creature_movement WHERE id = 60059;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(60059,1,-2399.844,6147.982,71.06328,0,0,100),
(60059,2,-2432.956,6121.422,83.23274,0,0,100),
(60059,3,-2466.083,6121.511,88.61314,0,0,100),
(60059,4,-2498.95,6129.08,92.34127,0,0,100),
(60059,5,-2509.331,6142.653,93.18784,0,0,100),
(60059,6,-2498.272,6119,92.22591,0,0,100),
(60059,7,-2478.536,6077.883,93.76772,0,0,100),
(60059,8,-2465.792,6100.151,92.3082,0,0,100),
(60059,9,-2448.861,6127.569,83.04636,0,0,100),
(60059,10,-2448.847,6140.451,77.72874,0,0,100),
(60059,11,-2474.902,6153.139,63.35086,0,0,100),
(60059,12,-2500.071,6186.787,60.56055,0,0,100),
(60059,13,-2533.038,6182.577,60.19934,0,0,100),
(60059,14,-2500.569,6181.5,59.989,0,0,100),
(60059,15,-2466.607,6169.582,58.25665,0,0,100),
(60059,16,-2447.577,6166.336,54.24046,0,0,100),
(60059,17,-2450.868,6199.792,31.97747,0,0,100),
(60059,18,-2470.541,6233.041,30.6633,0,0,100),
(60059,19,-2466.961,6261.01,31.04571,0,0,100),
(60059,20,-2499.331,6266.069,27.68829,0,0,100),
(60059,21,-2466.961,6261.01,31.04571,0,0,100),
(60059,22,-2470.675,6233.3,30.707,0,0,100),
(60059,23,-2450.868,6199.792,31.97747,0,0,100),
(60059,24,-2447.577,6166.336,54.24046,0,0,100),
(60059,25,-2466.316,6169.527,58.25665,0,0,100),
(60059,26,-2500.569,6181.5,60.06873,0,0,100),
(60059,27,-2498.959,6180.938,60.10369,0,0,100),
(60059,28,-2541.146,6187.5,60.79309,0,0,100),
(60059,29,-2538.757,6187.5,60.69751,0,0,100),
(60059,30,-2533.038,6182.577,60.19934,0,0,100),
(60059,31,-2500.071,6186.787,60.56055,0,0,100),
(60059,32,-2475.183,6153.281,63.52248,0,0,100),
(60059,33,-2449.129,6140.594,77.34264,0,0,100),
(60059,34,-2448.861,6127.569,83.04636,0,0,100),
(60059,35,-2465.792,6100.151,92.3082,0,0,100),
(60059,36,-2478.536,6077.883,93.76772,0,0,100),
(60059,37,-2498.272,6119,92.22591,0,0,100),
(60059,38,-2509.331,6142.653,93.18784,0,0,100),
(60059,39,-2498.95,6129.08,92.34127,0,0,100),
(60059,40,-2466.666,6121.875,88.72591,0,0,100),
(60059,41,-2432.956,6121.422,83.23274,0,0,100),
(60059,42,-2399.844,6147.982,71.06328,0,0,100),
(60059,43,-2367.009,6154.886,59.9362,0,0,100);
-- #3
UPDATE creature SET position_x = -2258.108, position_y = 6220.713, position_z = 44.20533, orientation = 4.400949, spawndist = 0, MovementType = 2 WHERE guid = 60060; -- Set the proper spawnpoint
DELETE FROM creature_movement WHERE id = 60060;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(60060,1,-2269.54,6185.135,50.54529,0,0,100),
(60060,2,-2300.504,6160.397,57.35026,0,0,100),
(60060,3,-2333.537,6174.551,51.46076,0,0,100),
(60060,4,-2354.695,6165.477,54.33383,0,0,100),
(60060,5,-2353.252,6135.473,60.3641,0,0,100),
(60060,6,-2345.113,6126.771,60.89935,0,0,100),
(60060,7,-2353.252,6135.473,60.3641,0,0,100),
(60060,8,-2354.915,6165.381,54.32211,0,0,100),
(60060,9,-2333.537,6174.551,51.46076,0,0,100),
(60060,10,-2300.504,6160.397,57.35026,0,0,100),
(60060,11,-2269.54,6185.135,50.54529,0,0,100),
(60060,12,-2257.554,6220.683,44.19547,0,0,100);
-- #4
UPDATE creature SET position_x = -2118.976,position_y = 5980.721,position_z = 66.85947,orientation = 3.316068,spawndist = 0,MovementType = 2 WHERE guid = 60065; -- Set the proper spawnpoint
DELETE FROM creature_movement WHERE id = 60065;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(60065,1,-2136.837,5977.572,64.68365,0,0,100),
(60065,2,-2148.347,5989.642,63.66749,0,0,100),
(60065,3,-2152.432,6007.189,65.21045,0,0,100),
(60065,4,-2166.111,6021.165,66.59776,0,0,100),
(60065,5,-2172.089,6046.619,70.16312,0,0,100),
(60065,6,-2174.784,6073.014,70.81654,0,0,100),
(60065,7,-2177.271,6088.607,71.61189,0,0,100),
(60065,8,-2162.905,6076.886,75.61743,0,0,100),
(60065,9,-2154.044,6068.34,75.62115,0,0,100),
(60065,10,-2143.106,6058.039,73.89748,0,0,100),
(60065,11,-2143.106,6058.039,73.89748,0,0,100),
(60065,12,-2142.5,6051.048,73.31793,0,0,100),
(60065,13,-2129.46,6044.501,69.78086,0,0,100),
(60065,14,-2142.5,6051.048,73.31793,0,0,100),
(60065,15,-2143.106,6058.039,73.89748,0,0,100),
(60065,16,-2153.904,6068.208,75.56915,0,0,100),
(60065,17,-2162.905,6076.886,75.61743,0,0,100),
(60065,18,-2177.271,6088.607,71.61189,0,0,100),
(60065,19,-2174.784,6073.014,70.81654,0,0,100),
(60065,20,-2172.089,6046.619,70.16312,0,0,100),
(60065,21,-2166.111,6021.165,66.59776,0,0,100),
(60065,22,-2152.589,6007.531,65.39119,0,0,100),
(60065,23,-2148.347,5989.642,63.66749,0,0,100),
(60065,24,-2136.837,5977.572,64.68365,0,0,100),
(60065,25,-2120.268,5981.125,66.34538,0,0,100);
-- #5
UPDATE creature SET position_x = -2215.675,position_y = 6011.072,position_z = 67.42715,orientation = 0.5019428,spawndist = 0,MovementType = 2 WHERE guid = 60048; -- Set the proper spawnpoint
DELETE FROM creature_movement WHERE id = 60048;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(60048,1,-2197.875,6020.842,66.40403,0,0,100),
(60048,2,-2185.898,6029.625,66.28046,0,0,100),
(60048,3,-2187.256,6042.542,67.49062,0,0,100),
(60048,4,-2199.021,6048.374,68.09481,0,0,100),
(60048,5,-2210.043,6046.705,67.64626,0,0,100),
(60048,6,-2215.665,6058.173,68.39651,0,0,100),
(60048,7,-2203.843,6069.921,72.05132,0,0,100),
(60048,8,-2207.289,6076.843,72.2662,0,0,100),
(60048,9,-2189.263,6094.723,72.98553,0,0,100),
(60048,10,-2219.709,6071.23,71.79917,0,0,100),
(60048,11,-2219.709,6071.23,71.79917,0,0,100),
(60048,12,-2241.646,6073.002,73.11702,0,0,100),
(60048,13,-2251.782,6080.446,76.47441,0,0,100),
(60048,14,-2257.793,6097.254,77.32147,0,0,100),
(60048,15,-2269.76,6109.586,74.90349,0,0,100),
(60048,16,-2298.05,6128.994,63.42472,0,0,100),
(60048,17,-2269.76,6109.586,74.90349,0,0,100),
(60048,18,-2258.203,6097.282,77.32368,0,0,100),
(60048,19,-2251.782,6080.446,76.47441,0,0,100),
(60048,20,-2241.646,6073.002,73.11702,0,0,100),
(60048,21,-2219.986,6071.252,71.82043,0,0,100),
(60048,22,-2189.278,6094.729,72.98857,0,0,100),
(60048,23,-2207.289,6076.843,72.2662,0,0,100),
(60048,24,-2203.843,6069.921,72.05132,0,0,100),
(60048,25,-2215.665,6058.173,68.39651,0,0,100),
(60048,26,-2210.043,6046.705,67.64626,0,0,100),
(60048,27,-2199.021,6048.374,68.09481,0,0,100),
(60048,28,-2187.256,6042.542,67.49062,0,0,100),
(60048,29,-2185.898,6029.625,66.28046,0,0,100),
(60048,30,-2197.731,6020.948,66.35845,0,0,100),
(60048,31,-2216.761,6010.768,67.10125,0,0,100);
