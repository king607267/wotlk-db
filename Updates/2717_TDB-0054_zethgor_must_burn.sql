-- 21182 Zeth'Gor Quest Credit Marker, They Must Burn, Tower South
UPDATE creature SET position_x=-1152.167, position_y=2107.406, position_z=83.17665, MovementType=2, spawndist=0 WHERE id=21182;
DELETE FROM `creature_movement_template` WHERE entry=21182;
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(21182,0,0,-1152.167,2107.406,83.17665,0,0,100),
(21182,0,1,-1150.145,2102.392,75.23684,0,0,100),
(21182,0,2,-1158.784,2102.993,76.98234,0,0,100),
(21182,0,3,-1158.344,2112.019,79.20454,0,0,100),
(21182,0,4,-1148.166,2113.343,77.0103,0,0,100),
(21182,0,5,-1148.897,2102.624,69.67694,0,0,100),
(21182,0,6,-1157.054,2104.975,82.9548,0,0,100),
(21182,0,7,-1156.975,2109.627,83.51005,0,0,100),
(21182,0,8,-1152.303,2112.098,90.67654,0,0,100),
(21182,0,9,-1150.817,2103.74,89.81573,0,0,100),
(21182,0,10,-1153.965,2107.031,97.06559,0,0,100),
(21182,0,11,-1156.105,2107.421,93.06557,0,0,100),
(21182,0,12,-1152.167,2107.406,83.17665,0,0,100),
(21182,0,13,-1150.145,2102.392,75.23684,0,0,100),
(21182,0,14,-1158.784,2102.993,76.98234,0,0,100);

-- 22401 Zeth'Gor Quest Credit Marker, They Must Burn, Tower North
UPDATE creature SET position_x=-816.8493, position_y=2028.659, position_z=49.75199, MovementType=2, spawndist=0 WHERE id=22401;
DELETE FROM `creature_movement_template` WHERE entry=22401;
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(22401,0,0,-816.8493,2028.659,49.75199,0,0,100),
(22401,0,1,-825.249,2026.351,46.58422,0,0,100),
(22401,0,2,-821.9919,2034.883,55.01843,0,0,100),
(22401,0,3,-820.9771,2027.591,63.68367,0,0,100),
(22401,0,4,-825.2185,2034.113,65.86314,0,0,100),
(22401,0,5,-816.8493,2028.659,49.75199,0,0,100),
(22401,0,6,-825.249,2026.351,46.58422,0,0,100),
(22401,0,7,-821.9919,2034.883,55.01843,0,0,100);

-- 22402 Zeth'Gor Quest Credit Marker, They Must Burn, Tower Forge
UPDATE creature SET position_x=-897.1001, position_y=1917.556, position_z=93.73737, MovementType=2, spawndist=0 WHERE id=22402;
DELETE FROM `creature_movement_template` WHERE entry=22402;
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(22402,0,0,-897.1001,1917.556,93.73737,0,0,100),
(22402,0,1,-903.386,1919.14,76.0997,0,0,100),
(22402,0,2,-898.1819,1920.161,82.67819,0,0,100),
(22402,0,3,-901.2836,1920.168,92.57269,0,0,100),
(22402,0,4,-894.9478,1924.78,75.48938,0,0,100),
(22402,0,5,-894.4704,1919.866,93.71019,0,0,100),
(22402,0,6,-897.1001,1917.556,93.73737,0,0,100),
(22402,0,7,-903.386,1919.14,76.0997,0,0,100),
(22402,0,8,-898.1819,1920.161,82.67819,0,0,100);

-- 22403 Zeth'Gor Quest Credit Marker, They Must Burn, Tower Foothill
UPDATE creature SET position_x=-979.3693, position_y=1876.667, position_z=121.5866, MovementType=2, spawndist=0 WHERE id=22403;
DELETE FROM `creature_movement_template` WHERE entry=22403;
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(22403,0,0,-979.3693,1876.667,121.5866,0,0,100),
(22403,0,1,-978.3713,1883.556,104.3167,0,0,100),
(22403,0,2,-974.3038,1878.926,109.6782,0,0,100),
(22403,0,3,-974.1463,1874.819,121.9402,0,0,100),
(22403,0,4,-982.4401,1875.441,100.4122,0,0,100),
(22403,0,5,-975.1263,1882.178,118.0354,0,0,100),
(22403,0,6,-979.3693,1876.667,121.5866,0,0,100),
(22403,0,7,-978.3713,1883.556,104.3167,0,0,100),
(22403,0,8,-974.3038,1878.926,109.6782,0,0,100);

UPDATE gameobject_template SET Faction=114, `size`=2 WHERE entry=184661; -- Smoke Beacon
-- spams custom anim every 1 second? 8 times

-- 21170 Honor Hold Gryphon Brigadier, South
-- summoned by spell 36302 Summon Honor Hold Gryphon Brigadier South
-- summon spells casted by 21173 Zeth'Gor Quest Credit Marker, They Must Burn
-- cast 36325 They Must Burn Bomb Drop (DND) -> target 21182 Zeth'Gor Quest Credit Marker, They Must Burn, Tower South

-- object 183816 should possibly not have static spawns... It is summoned by spell 36325 Spread Hellfire Fire
-- associated with trap object 183929 Hellfire Hot Spot Spreader -> casts spell 34516
-- DELETE FROM gameobject WHERE guid IN (24683,24684,24685,24686,32141,32142,32143);
DELETE FROM spell_script_target WHERE entry=34516;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(34516, 0, 183816, 0);
UPDATE gameobject_template SET data8=1 WHERE entry=183929; -- set serverside so that it's not visible to players

UPDATE creature_template SET ExtraFlags=ExtraFlags|4096 WHERE Entry=21173;

-- existing spawn, guid 74239
DELETE FROM creature WHERE guid=100224;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(100224, 21173, 530, 1, 0, 0, -1166.439, 2233.399, 154.3978, 1.867502, 300, 300, 0, 0, 0, 0, 0, 0);

-- 21170 Honor Hold Gryphon Brigadier, South
UPDATE creature_template SET InhabitType=7, ExtraFlags=ExtraFlags|4096 WHERE Entry=21170;
DELETE FROM creature_movement_template WHERE entry=21170;
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(21170,0,0,-1180.088,2255.51,188.0319,0,0,100),
(21170,0,1,-1166.439,2233.399,154.4811,0,0,100),
(21170,0,2,-1152.79,2211.288,120.9303,0,0,100),
(21170,0,3,-1146.584,2178.448,110.9858,0,0,100),
(21170,0,4,-1155.939,2146.783,105.9581,0,0,100),
(21170,0,5,-1151.148,2107.598,99.68026,0,0,100),
(21170,0,6,-1142.785,2094.159,103.5414,0,0,100),
(21170,0,7,-1136.896,2085.377,109.1246,0,0,100),
(21170,0,8,-1119.036,2071.976,118.8748,0,0,100),
(21170,0,9,-1103.594,2050.397,128.2081,0,0,100),
(21170,0,10,-1080.568,2022.377,137.5138,0,0,100),
(21170,0,11,-1080.568,2022.377,137.5138,5000,1,100); -- despawn

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(21170,1,0,-1182.329,2271.941,188.0319,0,0,100),
(21170,1,1,-1166.439,2233.399,154.4811,0,0,100),
(21170,1,2,-1150.548,2194.858,120.9303,0,0,100),
(21170,1,3,-1151.814,2161.048,110.9858,0,0,100),
(21170,1,4,-1152.937,2131.728,105.9581,0,0,100),
(21170,1,5,-1151.148,2107.598,99.458,0,0,100),
(21170,1,6,-1165.406,2089.037,115.6802,0,0,100),
(21170,1,7,-1174.068,2083.782,125.0691,0,0,100),
(21170,1,8,-1205.327,2083.083,164.097,0,0,100),
(21170,1,9,-1232.793,2084.872,183.4025,0,0,100),
(21170,1,10,-1264.571,2093.127,197.5136,0,0,100),
(21170,1,11,-1264.571,2093.127,197.5136,5000,1,100); -- despawn

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(21170,2,0,-1169.97,2259.231,168.0546,0,0,100),
(21170,2,1,-1166.439,2233.399,154.4811,0,0,100),
(21170,2,2,-1162.907,2207.568,140.9076,0,0,100),
(21170,2,3,-1165.149,2160.382,126.1298,0,0,100),
(21170,2,4,-1171.198,2119.914,110.0741,0,0,100),
(21170,2,5,-1152.598,2108.961,101.9074,0,0,100),
(21170,2,6,-1126.18,2129.599,118.6573,0,0,100),
(21170,2,7,-1113.314,2146.836,135.1296,0,0,100),
(21170,2,8,-1105.45,2173.646,171.0185,0,0,100),
(21170,2,9,-1107.9,2202.193,195.935,0,0,100),
(21170,2,10,-1107.9,2202.193,195.935,5000,1,100); -- despawn

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(21170,3,0,-1149.914,2258.004,183.5825,0,0,100),
(21170,3,1,-1166.439,2233.399,154.4811,0,0,100),
(21170,3,2,-1182.963,2208.794,125.3797,0,0,100),
(21170,3,3,-1182.292,2161.906,114.2409,0,0,100),
(21170,3,4,-1175.9,2113.828,105.1853,0,0,100),
(21170,3,5,-1152.598,2108.961,104.5463,0,0,100),
(21170,3,6,-1126.18,2129.599,117.0184,0,0,100),
(21170,3,7,-1097.298,2159.928,136.074,0,0,100),
(21170,3,8,-1084.76,2185.17,157.8796,0,0,100),
(21170,3,9,-1074.359,2208.386,178.1295,0,0,100),
(21170,3,10,-1074.359,2208.386,178.1295,5000,1,100); -- despawn

-- 22404 Honor Hold Gryphon Brigadier, North
-- missing 1 potential path?
UPDATE creature_template SET InhabitType=7, ExtraFlags=ExtraFlags|4096 WHERE Entry=22404;
DELETE FROM creature_movement_template WHERE entry=22404;
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(22404,0,0,-726.5537,1916.293,102.4365,0,0,100),
(22404,0,1,-738.3353,1922.693,100.9578,0,0,100),
(22404,0,2,-750.1168,1929.094,99.47905,0,0,100),
(22404,0,3,-774.873,1952.79,99.47905,0,0,100),
(22404,0,4,-786.8572,1972.59,99.47905,0,0,100),
(22404,0,5,-799.9429,2000.454,78.95126,0,0,100),
(22404,0,6,-806.1043,2017.675,73.36794,0,0,100),
(22404,0,7,-819.2725,2032.523,73.17354,0,0,100),
(22404,0,8,-831.7571,2046.865,80.61793,0,0,100),
(22404,0,9,-844.0977,2058.49,83.64579,0,0,100),
(22404,0,10,-859.0389,2080.072,95.78463,0,0,100),
(22404,0,11,-883.3383,2095.611,107.5624,0,0,100),
(22404,0,12,-883.3383,2095.611,107.5624,5000,1,100); -- despawn

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(22404,1,0,-726.5537,1916.293,102.4365,0,0,100),
(22404,1,1,-738.3353,1922.693,100.9578,0,0,100),
(22404,1,2,-750.1168,1929.094,99.47905,0,0,100),
(22404,1,3,-773.3017,1941.179,99.47905,0,0,100),
(22404,1,4,-792.3573,1953.981,99.47905,0,0,100),
(22404,1,5,-812.7388,1993.078,78.95126,0,0,100),
(22404,1,6,-823.2512,2008.549,73.36794,0,0,100),
(22404,1,7,-823.4645,2030.833,73.17354,0,0,100),
(22404,1,8,-812.5039,2051.152,80.61793,0,0,100),
(22404,1,9,-838.6264,2088.113,83.64579,0,0,100),
(22404,1,10,-857.7249,2123.352,87.72904,0,0,100),
(22404,1,11,-891.1043,2149.23,87.72904,0,0,100),
(22404,1,12,-891.1043,2149.23,87.72904,5000,1,100); -- despawn

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(22404,2,0,-726.5537,1916.293,102.4365,0,0,100),
(22404,2,1,-738.3353,1922.693,100.9578,0,0,100),
(22404,2,2,-750.1168,1929.094,99.47905,0,0,100),
(22404,2,3,-773.3017,1941.179,99.47905,0,0,100),
(22404,2,4,-798.551,1950.061,99.47905,0,0,100),
(22404,2,5,-822.979,1966.302,78.95126,0,0,100),
(22404,2,6,-829.1212,1999.823,73.36794,0,0,100),
(22404,2,7,-823.4645,2030.833,73.17354,0,0,100),
(22404,2,8,-822.0243,2049.509,80.61793,0,0,100),
(22404,2,9,-838.6264,2088.113,83.64579,0,0,100),
(22404,2,10,-857.7249,2123.352,87.72904,0,0,100),
(22404,2,11,-856.7349,2157.759,99.95123,0,0,100),
(22404,2,12,-856.7349,2157.759,99.95123,5000,1,100); -- despawn

-- 22405 Honor Hold Gryphon Brigadier, Forge
-- missing 3 potential paths?
UPDATE creature_template SET InhabitType=7, ExtraFlags=ExtraFlags|4096 WHERE Entry=22405;
DELETE FROM creature_movement_template WHERE entry=22405;
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(22405,0,0,-726.5537,1916.293,102.4365,0,0,100),
(22405,0,1,-738.3353,1922.693,100.9578,0,0,100),
(22405,0,2,-750.1168,1929.094,99.47905,0,0,100),
(22405,0,3,-779.0291,1934.054,99.47905,0,0,100),
(22405,0,4,-805.9227,1932.241,104.2291,0,0,100),
(22405,0,5,-837.3495,1926.666,101.0902,0,0,100),
(22405,0,6,-862.7343,1923.357,97.618,0,0,100),
(22405,0,7,-897.9168,1921.757,99.59021,0,0,100),
(22405,0,8,-914.8586,1930.438,97.67357,0,0,100),
(22405,0,9,-932.5103,1940.806,109.0624,0,0,100),
(22405,0,10,-945.1282,1950.602,122.7846,0,0,100),
(22405,0,11,-966.2561,1954.868,135.8124,0,0,100),
(22405,0,12,-993.241,1956.073,157.4512,0,0,100),
(22405,0,13,-993.241,1956.073,157.4512,5000,1,100); -- despawn

-- 22406 Honor Hold Gryphon Brigadier, Foothill
UPDATE creature_template SET InhabitType=7, ExtraFlags=ExtraFlags|4096 WHERE Entry=22406;
DELETE FROM creature_movement_template WHERE entry=22406;
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(22406,0,0,-726.5537,1916.293,86.13097,0,0,100),
(22406,0,1,-738.3353,1922.693,100.9578,0,0,100),
(22406,0,2,-750.1168,1929.094,115.7846,0,0,100),
(22406,0,3,-780.6038,1912.869,111.4513,0,0,100),
(22406,0,4,-812.3557,1903.761,119.8957,0,0,100),
(22406,0,5,-852.6487,1887.492,134.7291,0,0,100),
(22406,0,6,-885.8631,1878.916,144.8403,0,0,100),
(22406,0,7,-910.2131,1876.215,149.118,0,0,100),
(22406,0,8,-933.7659,1874.894,145.9792,0,0,100),
(22406,0,9,-957.0587,1876.275,129.8402,0,0,100),
(22406,0,10,-976.4232,1879.735,128.3126,0,0,100),
(22406,0,11,-1003.331,1901.21,136.0901,0,0,100),
(22406,0,12,-1019.146,1920.588,153.8956,0,0,100),
(22406,0,13,-1035.73,1937.606,168.2844,0,0,100),
(22406,0,14,-1055.794,1959.019,183.0622,0,0,100),
(22406,0,15,-1055.794,1959.019,183.0622,5000,1,100); -- despawn

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(22406,1,0,-726.5537,1916.293,86.13097,0,0,100),
(22406,1,1,-738.3353,1922.693,100.9578,0,0,100),
(22406,1,2,-750.1168,1929.094,115.7846,0,0,100),
(22406,1,3,-780.6038,1912.869,111.4513,0,0,100),
(22406,1,4,-812.3557,1903.761,119.8957,0,0,100),
(22406,1,5,-844.3373,1894.094,121.1179,0,0,100),
(22406,1,6,-875.8698,1888.307,134.0069,0,0,100),
(22406,1,7,-905.6191,1885.849,139.368,0,0,100),
(22406,1,8,-933.7491,1881.107,135.5625,0,0,100),
(22406,1,9,-957.0587,1876.275,129.8402,0,0,100),
(22406,1,10,-976.4232,1879.735,128.3126,0,0,100),
(22406,1,11,-1001.597,1896.851,136.0901,0,0,100),
(22406,1,12,-1026.942,1912.217,153.8956,0,0,100),
(22406,1,13,-1046.058,1925.075,168.2844,0,0,100),
(22406,1,14,-1065.902,1940.892,183.0622,0,0,100),
(22406,1,15,-1065.902,1940.892,183.0622,5000,1,100); -- despawn

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(22406,2,0,-726.5537,1916.293,86.13097,0,0,100),
(22406,2,1,-738.3353,1922.693,100.9578,0,0,100),
(22406,2,2,-750.1168,1929.094,115.7846,0,0,100),
(22406,2,3,-780.6038,1912.869,111.4513,0,0,100),
(22406,2,4,-812.3557,1903.761,119.8957,0,0,100),
(22406,2,5,-844.3373,1894.094,121.1179,0,0,100),
(22406,2,6,-875.8698,1888.307,134.0069,0,0,100),
(22406,2,7,-908.7481,1889.962,139.368,0,0,100),
(22406,2,8,-936.4296,1891.453,135.5625,0,0,100),
(22406,2,9,-956.9449,1888.206,129.8402,0,0,100),
(22406,2,10,-976.4232,1879.735,128.3126,0,0,100),
(22406,2,11,-999.7429,1861.678,156.9511,0,0,100),
(22406,2,12,-1019.369,1838.22,181.4233,0,0,100),
(22406,2,13,-1015.93,1818.592,198.4232,0,0,100),
(22406,2,14,-1003.392,1791.963,211.84,0,0,100),
(22406,2,15,-1003.392,1791.963,211.84,5000,1,100); -- despawn

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(22406,3,0,-726.5537,1916.293,86.13097,0,0,100),
(22406,3,1,-738.3353,1922.693,100.9578,0,0,100),
(22406,3,2,-750.1168,1929.094,115.7846,0,0,100),
(22406,3,3,-780.6038,1912.869,111.4513,0,0,100),
(22406,3,4,-809.3598,1907.495,119.8957,0,0,100),
(22406,3,5,-837.6174,1903.5,121.1179,0,0,100),
(22406,3,6,-866.6458,1898.007,134.0069,0,0,100),
(22406,3,7,-905.5453,1896.332,139.368,0,0,100),
(22406,3,8,-928.1199,1891.287,135.5625,0,0,100),
(22406,3,9,-949.9658,1884.561,129.8402,0,0,100),
(22406,3,10,-976.4232,1879.735,128.3126,0,0,100),
(22406,3,11,-999.9407,1891.013,136.0901,0,0,100),
(22406,3,12,-1023.856,1898.861,153.8956,0,0,100),
(22406,3,13,-1047.789,1909.254,168.2844,0,0,100),
(22406,3,14,-1065.531,1914.846,183.0622,0,0,100),
(22406,3,15,-1065.531,1914.846,183.0622,5000,1,100); -- despawn
