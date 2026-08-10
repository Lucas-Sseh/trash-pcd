-- @operation: export
-- @entity: batch
-- @name: Add custom regexes | Add custom CF
-- @exportedAt: 2026-08-10T18:47:49.038Z
-- @opIds: 1189, 1190, 1191, 1192, 1193, 1194, 1195, 1196, 1197, 1198, 1199, 1200, 1201, 1202, 1203, 1204, 1205, 1206, 1207, 1208, 1209, 1210, 1211, 1212, 1213, 1214, 1215, 1216, 1217, 1218, 1219, 1220, 1221, 1222, 1223, 1224, 1225, 1226, 1227, 1228, 1229, 1230, 1231, 1232, 1233, 1234, 1235, 1236, 1237, 1238, 1239, 1240, 1241, 1242, 1243, 1244, 1245, 1246, 1247, 1248, 1249, 1250, 1251, 1252, 1253, 1254, 1255, 1256, 1257, 1258, 1259, 1260, 1261, 1262, 1263, 1264, 1265, 1266, 1267, 1268, 1269, 1270, 1271, 1272, 1273, 1274, 1275, 1276, 1277, 1278, 1279, 1280, 1281, 1282, 1283, 1284, 1285, 1286, 1287, 1288, 1289, 1290, 1291, 1292, 1293, 1294, 1295, 1296, 1297, 1298, 1299, 1300, 1301, 1302, 1303, 1304, 1305, 1306, 1307, 1308, 1309, 1310, 1311, 1312, 1313, 1314, 1315, 1316, 1317, 1318, 1319, 1320, 1321, 1322, 1323, 1324, 1325, 1326, 1327, 1328, 1329, 1330, 1331, 1332, 1333, 1334, 1335, 1336, 1337, 1338, 1339, 1340, 1341, 1342, 1343, 1344, 1345, 1346, 1347, 1348, 1349, 1350, 1351, 1352, 1353, 1354, 1355, 1356, 1357, 1358, 1359, 1360, 1361, 1362, 1363, 1364, 1365, 1366, 1367, 1368, 1369, 1370, 1371, 1372, 1373, 1374, 1375, 1376, 1377, 1378, 1379, 1380, 1381, 1382, 1383, 1384, 1385, 1386, 1387, 1388, 1389, 1390, 1391, 1392, 1393, 1394, 1395, 1396, 1397, 1398, 1399, 1400, 1401, 1402, 1403, 1404, 1405, 1406, 1407, 1408, 1409, 1410, 1411, 1412, 1413, 1414, 1415, 1416, 1417, 1418, 1419, 1420, 1421, 1422, 1423, 1424, 1425, 1426, 1427, 1428, 1429, 1430, 1431, 1432, 1433, 1434, 1435, 1436, 1437, 1438, 1439, 1440, 1441, 1442, 1443, 1444, 1445, 1446, 1447, 1448, 1449, 1450, 1451, 1452, 1453, 1454, 1455, 1456, 1457, 1458, 1459, 1460, 1461, 1462, 1463, 1464, 1465, 1466, 1467, 1468, 1469, 1470, 1471, 1472, 1473, 1474, 1475, 1476, 1477, 1478, 1479, 1480, 1481, 1482, 1483, 1484, 1485, 1486, 1487, 1488, 1489, 1490, 1491, 1492, 1493, 1494, 1495, 1496, 1497, 1498, 1499, 1500, 1501, 1502, 1503, 1504, 1505, 1506, 1507, 1508, 1509, 1510, 1511, 1512, 1513, 1514, 1515, 1516, 1517, 1518, 1519, 1520, 1521, 1522, 1523, 1524, 1525, 1526, 1527, 1528, 1529, 1530, 1531, 1532, 1533, 1534, 1535, 1536, 1537, 1538, 1539, 1540, 1541, 1542, 1543, 1544, 1545, 1546, 1547, 1548, 1549, 1550, 1551, 1552, 1553, 1554, 1555, 1556, 1557, 1558, 1559, 1560, 1561, 1562, 1563, 1564, 1565, 1566, 1567, 1568, 1569, 1570, 1571, 1572, 1573, 1574, 1575, 1576, 1577, 1578, 1579, 1580, 1581, 1582, 1583, 1584, 1585, 1586, 1587, 1588, 1589, 1590, 1591, 1592, 1593, 1594, 1595, 1596, 1597, 1598, 1599, 1600, 1601, 1602, 1603, 1604, 1605, 1606, 1607, 1608, 1609, 1610, 1611, 1612, 1613, 1614, 1615, 1616, 1617, 1618, 1619, 1620, 1621, 1622, 1623, 1624, 1625, 1626, 1627, 1628, 1629, 1630, 1631, 1632, 1633, 1634, 1635, 1636, 1637, 1638, 1639, 1640, 1641, 1642, 1643

-- --- BEGIN op 1189 ( create custom_format "*AZAZE LQ" )
insert into "custom_formats" ("name", "description") values ('*AZAZE LQ', '');
-- --- END op 1189

-- --- BEGIN op 1190 ( update custom_format "*AZAZE LQ" )
update "custom_formats" set "description" = 'Pénalise les releases d''AZAZE lorsque Radarr n''a pas attribué le groupe. Se déclenche si `AZAZE` apparaît dans le titre alors que le champ Release Group ne contient pas `AZAZE`, cas fréquent chez cette team qui respecte rarement les conventions de nommage.

Complément de `*LQ & FR LQ`, qui couvre déjà AZAZE quand le groupe est correctement parsé. La condition négative reprend volontairement les limites de mot de la regex Trash `Bad/False releases` afin que les deux CF soient mutuellement exclusifs. Une release doit toujours recevoir la pénalité une fois et une seule.' where "name" = '*AZAZE LQ' and "description" = '';
-- --- END op 1190

-- --- BEGIN op 1191 ( update custom_format "*AZAZE LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*AZAZE LQ', 'Azaze in Title', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*AZAZE LQ', 'Azaze in Title', '*AZAZE in Title');
-- --- END op 1191

-- --- BEGIN op 1192 ( update custom_format "*AZAZE LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*AZAZE LQ', 'Release Group is AZAZE', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*AZAZE LQ', 'Release Group is AZAZE', '*Release Group is AZAZE');
-- --- END op 1192

-- --- BEGIN op 1193 ( update custom_format "*AZAZE LQ" )
UPDATE custom_format_conditions
SET type = 'release_group'
WHERE custom_format_name = '*AZAZE LQ'
  AND name = 'Release Group is AZAZE'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 1
  AND required = 1;

DELETE FROM condition_patterns WHERE custom_format_name = '*AZAZE LQ' AND condition_name = 'Release Group is AZAZE' AND regular_expression_name = '*Release Group is AZAZE';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*AZAZE LQ', 'Release Group is AZAZE', '*Release Group is AZAZE');
-- --- END op 1193

-- --- BEGIN op 1194 ( create custom_format "*AZAZE LQ" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*AZAZE LQ', 'Film.2021.MULTi.1080p.BluRay.x264-AZAZE', 'movie', 0, NULL);
-- --- END op 1194

-- --- BEGIN op 1195 ( create custom_format "*AZAZE LQ" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*AZAZE LQ', 'Film.2021.MULTi.1080p.BluRay.x264 AZAZE', 'movie', 1, NULL);
-- --- END op 1195

-- --- BEGIN op 1196 ( create custom_format "*AZAZE LQ" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*AZAZE LQ', '[AZAZE] Film 2021 1080p WEB x264', 'movie', 1, NULL);
-- --- END op 1196

-- --- BEGIN op 1197 ( create custom_format "*AZAZE LQ" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*AZAZE LQ', 'FILM_AZAZE_2021_1080p_WEB', 'movie', 1, NULL);
-- --- END op 1197

-- --- BEGIN op 1198 ( create custom_format "*AZAZE LQ" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*AZAZE LQ', 'Film.2021.1080p.WEB.x264-AZAZE_FR', 'movie', 1, NULL);
-- --- END op 1198

-- --- BEGIN op 1199 ( create custom_format "*AZAZE LQ" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*AZAZE LQ', 'Azazel.2002.1080p.BluRay.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1199

-- --- BEGIN op 1200 ( create custom_format "*AZAZE LQ" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*AZAZE LQ', 'Film.2021.1080p.WEB.x264-AZAZE2', 'movie', 0, NULL);
-- --- END op 1200

-- --- BEGIN op 1201 ( update custom_format "*AZAZE LQ" )
UPDATE custom_format_tests SET should_match = 0 WHERE custom_format_name = '*AZAZE LQ' AND title = 'Film.2021.1080p.WEB.x264-AZAZE_FR' AND type = 'movie' AND should_match = 1;
-- --- END op 1201

-- --- BEGIN op 1202 ( update custom_format "*AZAZE LQ" )
UPDATE custom_format_tests SET should_match = 0 WHERE custom_format_name = '*AZAZE LQ' AND title = '[AZAZE] Film 2021 1080p WEB x264' AND type = 'movie' AND should_match = 1;
-- --- END op 1202

-- --- BEGIN op 1203 ( update regular_expression "*Release Group is AZAZE" )
update "regular_expressions" set "description" = 'Détecte `AZAZE` avec `\b` en condition Release Group. Miroir volontaire de la regex Trash `Bad/False releases` du CF `FR LQ`, qui contient `AZAZE` entre limites de mot. Utilisée en négation dans le CF `*AZAZE LQ` pour éviter le double scoring avec `*LQ & FR LQ`. Toute modification de ce pattern doit préserver cette symétrie, sans quoi une release recevra la pénalité deux fois ou pas du tout.' where "name" = '*Release Group is AZAZE' and "description" = 'Détecte `AZAZE` avec `\b` en condition Release Group. Miroir volontaire de la regex Trash `Bad/False releases` du CF `FR LQ`, qui contient `AZAZE` entre limites de mot. Utilisée en négation dans le CF `*AZAZE LQ` pour éviter le double scoring avec `*LQ & FR LQ`. NE PAS élargir vers `[^A-Za-z0-9]` : un groupe du type `AZAZE_FR` échapperait alors à toute pénalité, `\b` ne franchissant pas l''underscore.';
-- --- END op 1203

-- --- BEGIN op 1204 ( update custom_format "*AZAZE LQ" )
insert into "tags" ("name") values ('Team') on conflict ("name") do nothing;

INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('*AZAZE LQ', 'Team');

insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('*AZAZE LQ', 'Sseh');
-- --- END op 1204

-- --- BEGIN op 1205 ( create custom_format "*Criterion Collection" )
insert into "custom_formats" ("name", "description") values ('*Criterion Collection', '');
-- --- END op 1205

-- --- BEGIN op 1206 ( update custom_format "*Criterion Collection" )
update "custom_formats" set "description" = 'Détecte les éditions Criterion Collection, quelle que soit la source. Se déclenche sur les tags `Criterion` ou `CC` dans le titre, sauf lorsque `Criterion` est le nom du groupe de release.

Diffère du CF Trash `Criterion Collection`, dont les conditions Bluray et DVD sont en `Required = OFF` et donc en OU avec les conditions de titre. Ce CF natif se déclenche sur toute release Bluray ou DVD, même sans mention de Criterion. Les conditions de source sont retirées ici : Criterion est un label d''édition et non une caractéristique technique, la source étant déjà notée par ailleurs dans le profil.' where "name" = '*Criterion Collection' and "description" = '';
-- --- END op 1206

-- --- BEGIN op 1207 ( update custom_format "*Criterion Collection" )
update "custom_formats" set "include_in_rename" = 1 where "name" = '*Criterion Collection' and "include_in_rename" = 0;
-- --- END op 1207

-- --- BEGIN op 1208 ( update custom_format "*Criterion Collection" )
insert into "tags" ("name") values ('Edition') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('*Criterion Collection', 'Edition');

insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('*Criterion Collection', 'Sseh');
-- --- END op 1208

-- --- BEGIN op 1209 ( update custom_format "*Criterion Collection" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Criterion Collection', 'Criterion', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Criterion Collection', 'Criterion', 'Criterion');
-- --- END op 1209

-- --- BEGIN op 1210 ( update custom_format "*Criterion Collection" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Criterion Collection', 'CC', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Criterion Collection', 'CC', 'CC');
-- --- END op 1210

-- --- BEGIN op 1211 ( update custom_format "*Criterion Collection" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Criterion Collection', 'Not Criterion RlsGrp', 'release_group', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Criterion Collection', 'Not Criterion RlsGrp', 'Not Criterion RlsGrp');
-- --- END op 1211

-- --- BEGIN op 1212 ( create custom_format "*Criterion Collection" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Criterion Collection', 'Film.2021.Criterion.1080p.BluRay.x264-GROUP', 'movie', 1, NULL);
-- --- END op 1212

-- --- BEGIN op 1213 ( create custom_format "*Criterion Collection" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Criterion Collection', 'Film.2021.Criterion.1080p.WEB-DL.x264-GROUP', 'movie', 1, NULL);
-- --- END op 1213

-- --- BEGIN op 1214 ( create custom_format "*Criterion Collection" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Criterion Collection', 'Film.2021.CC.1080p.WEB-DL.x264-GROUP', 'movie', 1, NULL);
-- --- END op 1214

-- --- BEGIN op 1215 ( create custom_format "*Criterion Collection" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Criterion Collection', 'Film.2021.1080p.BluRay.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1215

-- --- BEGIN op 1216 ( create custom_format "*Criterion Collection" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Criterion Collection', 'Film.2021.Criterion.1080p.WEB-DL.x264-Criterion', 'movie', 0, NULL);
-- --- END op 1216

-- --- BEGIN op 1217 ( create custom_format "*FR Scene Groups" )
insert into "custom_formats" ("name", "description") values ('*FR Scene Groups', '');
-- --- END op 1217

-- --- BEGIN op 1218 ( update custom_format "*FR Scene Groups" )
update "custom_formats" set "description" = '**FR Scene Groups**

Known French Scene groups.' where "name" = '*FR Scene Groups' and "description" = '';
-- --- END op 1218

-- --- BEGIN op 1219 ( update custom_format "*FR Scene Groups" )
insert into "tags" ("name") values ('French HQ Source Groups') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('*FR Scene Groups', 'French HQ Source Groups');
-- --- END op 1219

-- --- BEGIN op 1220 ( update custom_format "*FR Scene Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*FR Scene Groups', '#', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*FR Scene Groups', '#', '#');
-- --- END op 1220

-- --- BEGIN op 1221 ( update custom_format "*FR Scene Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*FR Scene Groups', 'A (Radarr)', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*FR Scene Groups', 'A (Radarr)', 'A (Radarr)');
-- --- END op 1221

-- --- BEGIN op 1222 ( update custom_format "*FR Scene Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*FR Scene Groups', 'A (Sonarr)', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*FR Scene Groups', 'A (Sonarr)', 'A (Sonarr)');
-- --- END op 1222

-- --- BEGIN op 1223 ( update custom_format "*FR Scene Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*FR Scene Groups', 'B', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*FR Scene Groups', 'B', 'B');
-- --- END op 1223

-- --- BEGIN op 1224 ( update custom_format "*FR Scene Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*FR Scene Groups', 'C', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*FR Scene Groups', 'C', 'C');
-- --- END op 1224

-- --- BEGIN op 1225 ( update custom_format "*FR Scene Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*FR Scene Groups', 'D', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*FR Scene Groups', 'D', 'D');
-- --- END op 1225

-- --- BEGIN op 1226 ( update custom_format "*FR Scene Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*FR Scene Groups', 'E', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*FR Scene Groups', 'E', 'E');
-- --- END op 1226

-- --- BEGIN op 1227 ( update custom_format "*FR Scene Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*FR Scene Groups', 'F', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*FR Scene Groups', 'F', 'F');
-- --- END op 1227

-- --- BEGIN op 1228 ( update custom_format "*FR Scene Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*FR Scene Groups', 'G', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*FR Scene Groups', 'G', 'G');
-- --- END op 1228

-- --- BEGIN op 1229 ( update custom_format "*FR Scene Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*FR Scene Groups', 'H', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*FR Scene Groups', 'H', 'H');
-- --- END op 1229

-- --- BEGIN op 1230 ( update custom_format "*FR Scene Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*FR Scene Groups', 'J', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*FR Scene Groups', 'J', 'J');
-- --- END op 1230

-- --- BEGIN op 1231 ( update custom_format "*FR Scene Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*FR Scene Groups', 'K', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*FR Scene Groups', 'K', 'K');
-- --- END op 1231

-- --- BEGIN op 1232 ( update custom_format "*FR Scene Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*FR Scene Groups', 'L', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*FR Scene Groups', 'L', 'L');
-- --- END op 1232

-- --- BEGIN op 1233 ( update custom_format "*FR Scene Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*FR Scene Groups', 'M', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*FR Scene Groups', 'M', 'M');
-- --- END op 1233

-- --- BEGIN op 1234 ( update custom_format "*FR Scene Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*FR Scene Groups', 'N (Radarr)', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*FR Scene Groups', 'N (Radarr)', 'N (Radarr)');
-- --- END op 1234

-- --- BEGIN op 1235 ( update custom_format "*FR Scene Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*FR Scene Groups', 'N (Sonarr)', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*FR Scene Groups', 'N (Sonarr)', 'N (Sonarr)');
-- --- END op 1235

-- --- BEGIN op 1236 ( update custom_format "*FR Scene Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*FR Scene Groups', 'O', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*FR Scene Groups', 'O', 'O');
-- --- END op 1236

-- --- BEGIN op 1237 ( update custom_format "*FR Scene Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*FR Scene Groups', 'P (Radarr)', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*FR Scene Groups', 'P (Radarr)', 'P (Radarr)');
-- --- END op 1237

-- --- BEGIN op 1238 ( update custom_format "*FR Scene Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*FR Scene Groups', 'P (Sonarr)', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*FR Scene Groups', 'P (Sonarr)', 'P (Sonarr)');
-- --- END op 1238

-- --- BEGIN op 1239 ( update custom_format "*FR Scene Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*FR Scene Groups', 'R', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*FR Scene Groups', 'R', 'R');
-- --- END op 1239

-- --- BEGIN op 1240 ( update custom_format "*FR Scene Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*FR Scene Groups', 'S (Radarr)', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*FR Scene Groups', 'S (Radarr)', 'S (Radarr)');
-- --- END op 1240

-- --- BEGIN op 1241 ( update custom_format "*FR Scene Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*FR Scene Groups', 'S (Sonarr)', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*FR Scene Groups', 'S (Sonarr)', 'S (Sonarr)');
-- --- END op 1241

-- --- BEGIN op 1242 ( update custom_format "*FR Scene Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*FR Scene Groups', 'T', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*FR Scene Groups', 'T', 'T');
-- --- END op 1242

-- --- BEGIN op 1243 ( update custom_format "*FR Scene Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*FR Scene Groups', 'U (Radarr)', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*FR Scene Groups', 'U (Radarr)', 'U (Radarr)');
-- --- END op 1243

-- --- BEGIN op 1244 ( update custom_format "*FR Scene Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*FR Scene Groups', 'U (Sonarr)', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*FR Scene Groups', 'U (Sonarr)', 'U (Sonarr)');
-- --- END op 1244

-- --- BEGIN op 1245 ( update custom_format "*FR Scene Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*FR Scene Groups', 'V', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*FR Scene Groups', 'V', 'V');
-- --- END op 1245

-- --- BEGIN op 1246 ( update custom_format "*FR Scene Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*FR Scene Groups', 'W', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*FR Scene Groups', 'W', 'W');
-- --- END op 1246

-- --- BEGIN op 1247 ( update custom_format "*FR Scene Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*FR Scene Groups', 'Z', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*FR Scene Groups', 'Z', 'Z');
-- --- END op 1247

-- --- BEGIN op 1248 ( update custom_format "*FR Scene Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*FR Scene Groups', 'YggTorrent Teams', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*FR Scene Groups', 'YggTorrent Teams', '*FR Tracker Extra Groups - YGG');
-- --- END op 1248

-- --- BEGIN op 1249 ( update custom_format "*FR Scene Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*FR Scene Groups', 'Sharewood Teams', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*FR Scene Groups', 'Sharewood Teams', '*FR Tracker Extra Groups - Sharewood');
-- --- END op 1249

-- --- BEGIN op 1250 ( create custom_format "*FR Scene Groups" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*FR Scene Groups', 'Film.2021.MULTi.1080p.BluRay.x264-CARAPiLS', 'movie', 1, NULL);
-- --- END op 1250

-- --- BEGIN op 1251 ( create custom_format "*FR Scene Groups" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*FR Scene Groups', 'Film.2021.MULTi.1080p.WEB.x264-BULITT', 'movie', 1, NULL);
-- --- END op 1251

-- --- BEGIN op 1252 ( create custom_format "*FR Scene Groups" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*FR Scene Groups', 'Film.2021.MULTi.1080p.WEB.x264-PopHD', 'movie', 1, NULL);
-- --- END op 1252

-- --- BEGIN op 1253 ( create custom_format "*FR Scene Groups" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*FR Scene Groups', 'Film.2021.MULTi.1080p.WEB.x264-dRuIdE', 'movie', 0, NULL);
-- --- END op 1253

-- --- BEGIN op 1254 ( create custom_format "*FR Scene Groups" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*FR Scene Groups', 'Film.2021.MULTi.1080p.WEB.x264-FTMVHD', 'movie', 0, NULL);
-- --- END op 1254

-- --- BEGIN op 1255 ( create custom_format "*FR Scene Groups" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*FR Scene Groups', 'Film.2021.MULTi.1080p.BluRay.x264-SHiNiGAMiUHD', 'movie', 1, NULL);
-- --- END op 1255

-- --- BEGIN op 1256 ( create custom_format "*FR Scene Groups" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*FR Scene Groups', 'Film.2021.MULTi.1080p.BluRay.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1256

-- --- BEGIN op 1257 ( update custom_format "*FR Scene Groups" )
update "custom_formats" set "description" = '**FR Scene Groups**

Known French Scene groups.

+Add YGG and Sharewood internal teams' where "name" = '*FR Scene Groups' and "description" = '**FR Scene Groups**

Known French Scene groups.';
-- --- END op 1257

-- --- BEGIN op 1258 ( update custom_format "*FR Scene Groups" )
insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('*FR Scene Groups', 'Sseh');
-- --- END op 1258

-- --- BEGIN op 1259 ( create regular_expression "*MULTISUB" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('*MULTISUB', '(?i)\bMULTI[ ._-]?SUB', 'Détecte les variantes multi sous-titres. 
Miroir exact du lookahead négatif `(?![ ._-]?SUB)` de la regex `*MULTi` 
Les deux devant rester complémentaires. 
Utilisée en négation dans le CF `*Language FR EN (no MULTi)`', NULL);

insert into "tags" ("name") values ('Subtitle') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*MULTISUB', 'Subtitle');

insert into "tags" ("name") values ('Seeh') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*MULTISUB', 'Seeh');
-- --- END op 1259

-- --- BEGIN op 1260 ( create custom_format "*Language FR EN (no MULTi)" )
insert into "custom_formats" ("name", "description") values ('*Language FR EN (no MULTi)', '');
-- --- END op 1260

-- --- BEGIN op 1261 ( update custom_format "*Language FR EN (no MULTi)" )
update "custom_formats" set "description" = 'Détecte une release bilingue française et anglaise lorsque le tag `MULTi` est absent du nom mais que les tags `FR` et `EN` y figurent tous les deux. Comble une lacune fréquente sur les trackers FR, où les conventions de nommage sont rarement respectées.

Équivalent fonctionnel de `*MULTi`, à noter au même score. Les deux CF sont rendus mutuellement exclusifs par la condition négative `No MULTi`, qui pointe sur la regex `*MULTi` elle-même afin que toute évolution de celle-ci soit répercutée automatiquement. La condition `No MULTISUB` écarte les releases où `FR` et `EN` désignent des pistes de sous-titres et non des pistes audio.

Les deux tags sont recherchés après l''année uniquement, faute de quoi la préposition française « en » présente dans de nombreux titres déclencherait le CF sur des releases purement VF.' where "name" = '*Language FR EN (no MULTi)' and "description" = '';
-- --- END op 1261

-- --- BEGIN op 1262 ( update custom_format "*Language FR EN (no MULTi)" )
insert into "tags" ("name") values ('Language') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('*Language FR EN (no MULTi)', 'Language');

insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('*Language FR EN (no MULTi)', 'Sseh');
-- --- END op 1262

-- --- BEGIN op 1263 ( update custom_format "*Language FR EN (no MULTi)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Language FR EN (no MULTi)', 'No MULTi', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Language FR EN (no MULTi)', 'No MULTi', '*MULTi');
-- --- END op 1263

-- --- BEGIN op 1264 ( update custom_format "*Language FR EN (no MULTi)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Language FR EN (no MULTi)', 'No MULTISUB', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Language FR EN (no MULTi)', 'No MULTISUB', '*MULTISUB');
-- --- END op 1264

-- --- BEGIN op 1265 ( update custom_format "*Language FR EN (no MULTi)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Language FR EN (no MULTi)', 'Tag FR in title', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Language FR EN (no MULTi)', 'Tag FR in title', '*Tag FR in title');
-- --- END op 1265

-- --- BEGIN op 1266 ( update custom_format "*Language FR EN (no MULTi)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Language FR EN (no MULTi)', 'Tag EN in title', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Language FR EN (no MULTi)', 'Tag EN in title', '*Tag EN in title');
-- --- END op 1266

-- --- BEGIN op 1267 ( create custom_format "*Language FR EN (no MULTi)" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Language FR EN (no MULTi)', 'Film.2021.FR.EN.1080p.WEB.x264-GROUP', 'movie', 1, NULL);
-- --- END op 1267

-- --- BEGIN op 1268 ( create custom_format "*Language FR EN (no MULTi)" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Language FR EN (no MULTi)', 'Film.2021.MULTi.FR.EN.1080p.WEB.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1268

-- --- BEGIN op 1269 ( create custom_format "*Language FR EN (no MULTi)" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Language FR EN (no MULTi)', 'Film.2021.MULTIVF.FR.EN.1080p.WEB.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1269

-- --- BEGIN op 1270 ( create custom_format "*Language FR EN (no MULTi)" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Language FR EN (no MULTi)', 'Film.2021.MULTI.SUBFR.FR.EN.1080p.WEB.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1270

-- --- BEGIN op 1271 ( create custom_format "*Language FR EN (no MULTi)" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Language FR EN (no MULTi)', 'En.Guerre.2018.FR.1080p.WEB.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1271

-- --- BEGIN op 1272 ( create custom_format "*Language FR EN (no MULTi)" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Language FR EN (no MULTi)', 'Film.2021.FR.1080p.WEB.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1272

-- --- BEGIN op 1273 ( create custom_format "*Language FR EN (no MULTi)" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Language FR EN (no MULTi)', 'Film.2021.EN.1080p.WEB.x264-GROUP', 'movie', 1, NULL);
-- --- END op 1273

-- --- BEGIN op 1274 ( update custom_format "*Language FR EN (no MULTi)" )
UPDATE custom_format_tests SET should_match = 0 WHERE custom_format_name = '*Language FR EN (no MULTi)' AND title = 'Film.2021.EN.1080p.WEB.x264-GROUP' AND type = 'movie' AND should_match = 1;
-- --- END op 1274

-- --- BEGIN op 1275 ( create custom_format "*LQ & FR LQ" )
insert into "custom_formats" ("name", "description") values ('*LQ & FR LQ', '');
-- --- END op 1275

-- --- BEGIN op 1276 ( update custom_format "*LQ & FR LQ" )
update "custom_formats" set "description" = '**LQ**

- A collection of known low-quality groups (often banned from the top trackers due to their lack of quality), banned or dishonest release groups, or rips/encodes from the scene and quick-to-release P2P groups that, while adequate, are typically not regarded as high quality.
- Release groups that disrupt the Starr apps automation because their poor naming could potentially create download loops, even if their overall quality is excellent.

--8<-- "includes/cf-descriptions/apply-10000.md"' where "name" = '*LQ & FR LQ' and "description" = '';
-- --- END op 1276

-- --- BEGIN op 1277 ( update custom_format "*LQ & FR LQ" )
insert into "tags" ("name") values ('Unwanted Formats') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('*LQ & FR LQ', 'Unwanted Formats');
-- --- END op 1277

-- --- BEGIN op 1278 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', '24xHD', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', '24xHD', '24xHD');
-- --- END op 1278

-- --- BEGIN op 1279 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', '41RGB', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', '41RGB', '41RGB');
-- --- END op 1279

-- --- BEGIN op 1280 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', '4K4U', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', '4K4U', '4K4U');
-- --- END op 1280

-- --- BEGIN op 1281 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'AOC', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'AOC', 'AOC');
-- --- END op 1281

-- --- BEGIN op 1282 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'AROMA', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'AROMA', 'AROMA');
-- --- END op 1282

-- --- BEGIN op 1283 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'AZAZE', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'AZAZE', 'AZAZE');
-- --- END op 1283

-- --- BEGIN op 1284 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'BARC0DE', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'BARC0DE', 'BARC0DE');
-- --- END op 1284

-- --- BEGIN op 1285 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'BAUCKLEY', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'BAUCKLEY', 'BAUCKLEY');
-- --- END op 1285

-- --- BEGIN op 1286 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'BRiNK', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'BRiNK', 'BRiNK');
-- --- END op 1286

-- --- BEGIN op 1287 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'BTM', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'BTM', 'BTM');
-- --- END op 1287

-- --- BEGIN op 1288 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'BdC', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'BdC', 'BdC');
-- --- END op 1288

-- --- BEGIN op 1289 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'C1NEM4', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'C1NEM4', 'C1NEM4');
-- --- END op 1289

-- --- BEGIN op 1290 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'C4K', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'C4K', 'C4K');
-- --- END op 1290

-- --- BEGIN op 1291 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'CDDHD', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'CDDHD', 'CDDHD');
-- --- END op 1291

-- --- BEGIN op 1292 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'CHAOS', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'CHAOS', 'CHAOS');
-- --- END op 1292

-- --- BEGIN op 1293 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'CHD', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'CHD', 'CHD');
-- --- END op 1293

-- --- BEGIN op 1294 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'CHX', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'CHX', 'CHX');
-- --- END op 1294

-- --- BEGIN op 1295 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'CLEANUP', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'CLEANUP', 'CLEANUP');
-- --- END op 1295

-- --- BEGIN op 1296 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'COLLECTiVE', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'COLLECTiVE', 'COLLECTiVE');
-- --- END op 1296

-- --- BEGIN op 1297 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'CREATiVE24', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'CREATiVE24', 'CREATiVE24');
-- --- END op 1297

-- --- BEGIN op 1298 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'CTFOH', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'CTFOH', 'CTFOH');
-- --- END op 1298

-- --- BEGIN op 1299 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'CiNE', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'CiNE', 'CiNE');
-- --- END op 1299

-- --- BEGIN op 1300 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'CrEwSaDe', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'CrEwSaDe', 'CrEwSaDe');
-- --- END op 1300

-- --- BEGIN op 1301 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'DDR', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'DDR', 'DDR');
-- --- END op 1301

-- --- BEGIN op 1302 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'DNL', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'DNL', 'DNL');
-- --- END op 1302

-- --- BEGIN op 1303 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'DRX', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'DRX', 'DRX');
-- --- END op 1303

-- --- BEGIN op 1304 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'DepraveD', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'DepraveD', 'DepraveD');
-- --- END op 1304

-- --- BEGIN op 1305 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'E', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'E', 'E (2)');
-- --- END op 1305

-- --- BEGIN op 1306 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'EPiC', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'EPiC', 'EPiC');
-- --- END op 1306

-- --- BEGIN op 1307 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'EVO', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'EVO', 'EVO');
-- --- END op 1307

-- --- BEGIN op 1308 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'EuReKA', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'EuReKA', 'EuReKA');
-- --- END op 1308

-- --- BEGIN op 1309 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'FGT', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'FGT', 'FGT');
-- --- END op 1309

-- --- BEGIN op 1310 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'FMD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'FMD', 'FMD');
-- --- END op 1310

-- --- BEGIN op 1311 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'FRDS', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'FRDS', 'FRDS');
-- --- END op 1311

-- --- BEGIN op 1312 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'FS', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'FS', 'FS');
-- --- END op 1312

-- --- BEGIN op 1313 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'FZHD', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'FZHD', 'FZHD');
-- --- END op 1313

-- --- BEGIN op 1314 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'FaNGDiNG0', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'FaNGDiNG0', 'FaNGDiNG0');
-- --- END op 1314

-- --- BEGIN op 1315 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'Feranki1980', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'Feranki1980', 'Feranki1980 (2)');
-- --- END op 1315

-- --- BEGIN op 1316 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'GHD', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'GHD', 'GHD');
-- --- END op 1316

-- --- BEGIN op 1317 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'GHOSTS', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'GHOSTS', 'GHOSTS');
-- --- END op 1317

-- --- BEGIN op 1318 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'GPTHD', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'GPTHD', 'GPTHD');
-- --- END op 1318

-- --- BEGIN op 1319 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'GalaxyRG', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'GalaxyRG', 'GalaxyRG (2)');
-- --- END op 1319

-- --- BEGIN op 1320 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'HDHUB4U', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'HDHUB4U', 'HDHUB4U');
-- --- END op 1320

-- --- BEGIN op 1321 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'HDS', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'HDS', 'HDS');
-- --- END op 1321

-- --- BEGIN op 1322 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'HDT', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'HDT', 'HDT');
-- --- END op 1322

-- --- BEGIN op 1323 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'HDTime', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'HDTime', 'HDTime');
-- --- END op 1323

-- --- BEGIN op 1324 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'HDWinG', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'HDWinG', 'HDWinG');
-- --- END op 1324

-- --- BEGIN op 1325 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'HiQVE', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'HiQVE', 'HiQVE');
-- --- END op 1325

-- --- BEGIN op 1326 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'JFF', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'JFF', 'JFF');
-- --- END op 1326

-- --- BEGIN op 1327 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'KC', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'KC', 'KC');
-- --- END op 1327

-- --- BEGIN op 1328 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'KIRA', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'KIRA', 'KIRA');
-- --- END op 1328

-- --- BEGIN op 1329 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'KiNGDOM', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'KiNGDOM', 'KiNGDOM');
-- --- END op 1329

-- --- BEGIN op 1330 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'L0SERNIGHT', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'L0SERNIGHT', 'L0SERNIGHT');
-- --- END op 1330

-- --- BEGIN op 1331 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'LAMA', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'LAMA', 'LAMA');
-- --- END op 1331

-- --- BEGIN op 1332 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'LUCY', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'LUCY', 'LUCY');
-- --- END op 1332

-- --- BEGIN op 1333 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'Leffe', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'Leffe', 'Leffe');
-- --- END op 1333

-- --- BEGIN op 1334 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'LiGaS', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'LiGaS', 'LiGaS');
-- --- END op 1334

-- --- BEGIN op 1335 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'Liber8', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'Liber8', 'Liber8');
-- --- END op 1335

-- --- BEGIN op 1336 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'MTeam', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'MTeam', 'MTeam');
-- --- END op 1336

-- --- BEGIN op 1337 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'MarkII', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'MarkII', 'MarkII');
-- --- END op 1337

-- --- BEGIN op 1338 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'MeGusta', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'MeGusta', 'MeGusta');
-- --- END op 1338

-- --- BEGIN op 1339 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'Mesc', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'Mesc', 'Mesc');
-- --- END op 1339

-- --- BEGIN op 1340 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'MySiLU', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'MySiLU', 'MySiLU');
-- --- END op 1340

-- --- BEGIN op 1341 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'NhaNc3', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'NhaNc3', 'NhaNc3');
-- --- END op 1341

-- --- BEGIN op 1342 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'NoGroup', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'NoGroup', 'NoGroup');
-- --- END op 1342

-- --- BEGIN op 1343 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'OFT', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'OFT', 'OFT');
-- --- END op 1343

-- --- BEGIN op 1344 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'PATOMiEL', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'PATOMiEL', 'PATOMiEL');
-- --- END op 1344

-- --- BEGIN op 1345 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'PRODJi', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'PRODJi', 'PRODJi');
-- --- END op 1345

-- --- BEGIN op 1346 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'PSA', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'PSA', 'PSA');
-- --- END op 1346

-- --- BEGIN op 1347 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'PTNK', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'PTNK', 'PTNK');
-- --- END op 1347

-- --- BEGIN op 1348 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'Pahe', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'Pahe', 'Pahe');
-- --- END op 1348

-- --- BEGIN op 1349 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'RARBG', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'RARBG', 'RARBG');
-- --- END op 1349

-- --- BEGIN op 1350 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'RBB', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'RBB', 'RBB');
-- --- END op 1350

-- --- BEGIN op 1351 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'RDN', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'RDN', 'RDN');
-- --- END op 1351

-- --- BEGIN op 1352 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'RU4HD', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'RU4HD', 'RU4HD');
-- --- END op 1352

-- --- BEGIN op 1353 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'RiffTrax', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'RiffTrax', 'RiffTrax');
-- --- END op 1353

-- --- BEGIN op 1354 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'SANTi', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'SANTi', 'SANTi');
-- --- END op 1354

-- --- BEGIN op 1355 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'SHD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'SHD', 'SHD');
-- --- END op 1355

-- --- BEGIN op 1356 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'STUTTERSHIT', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'STUTTERSHIT', 'STUTTERSHIT');
-- --- END op 1356

-- --- BEGIN op 1357 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'SUNSCREEN', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'SUNSCREEN', 'SUNSCREEN');
-- --- END op 1357

-- --- BEGIN op 1358 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'SasukeducK', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'SasukeducK', 'SasukeducK');
-- --- END op 1358

-- --- BEGIN op 1359 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'Scene', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'Scene', 'Scene');
-- --- END op 1359

-- --- BEGIN op 1360 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'ShieldBearer', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'ShieldBearer', 'ShieldBearer');
-- --- END op 1360

-- --- BEGIN op 1361 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'SyncUP', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'SyncUP', 'SyncUP');
-- --- END op 1361

-- --- BEGIN op 1362 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'TBS', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'TBS', 'TBS');
-- --- END op 1362

-- --- BEGIN op 1363 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'TEKNO3D', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'TEKNO3D', 'TEKNO3D (2)');
-- --- END op 1363

-- --- BEGIN op 1364 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'TG', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'TG', 'TG');
-- --- END op 1364

-- --- BEGIN op 1365 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'TIKO', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'TIKO', 'TIKO');
-- --- END op 1365

-- --- BEGIN op 1366 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'Tigole', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'Tigole', 'Tigole');
-- --- END op 1366

-- --- BEGIN op 1367 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'VIDEOHOLE', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'VIDEOHOLE', 'VIDEOHOLE');
-- --- END op 1367

-- --- BEGIN op 1368 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'VISIONPLUSHDR', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'VISIONPLUSHDR', 'VISIONPLUSHDR');
-- --- END op 1368

-- --- BEGIN op 1369 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'WAF', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'WAF', 'WAF');
-- --- END op 1369

-- --- BEGIN op 1370 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'WiKi', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'WiKi', 'WiKi');
-- --- END op 1370

-- --- BEGIN op 1371 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'XLF', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'XLF', 'XLF');
-- --- END op 1371

-- --- BEGIN op 1372 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'YIFY', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'YIFY', 'YIFY');
-- --- END op 1372

-- --- BEGIN op 1373 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'YTS', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'YTS', 'YTS');
-- --- END op 1373

-- --- BEGIN op 1374 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'Zero00', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'Zero00', 'Zero00');
-- --- END op 1374

-- --- BEGIN op 1375 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'Zeus', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'Zeus', 'Zeus');
-- --- END op 1375

-- --- BEGIN op 1376 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'aXXo', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'aXXo', 'aXXo');
-- --- END op 1376

-- --- BEGIN op 1377 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'beAst', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'beAst', 'beAst');
-- --- END op 1377

-- --- BEGIN op 1378 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'd3g', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'd3g', 'd3g');
-- --- END op 1378

-- --- BEGIN op 1379 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'iNTENSO', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'iNTENSO', 'iNTENSO');
-- --- END op 1379

-- --- BEGIN op 1380 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'iPlanet', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'iPlanet', 'iPlanet');
-- --- END op 1380

-- --- BEGIN op 1381 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'iVy', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'iVy', 'iVy');
-- --- END op 1381

-- --- BEGIN op 1382 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'jennaortega', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'jennaortega', 'jennaortega (2)');
-- --- END op 1382

-- --- BEGIN op 1383 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'mHD', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'mHD', 'mHD');
-- --- END op 1383

-- --- BEGIN op 1384 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'mSD', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'mSD', 'mSD');
-- --- END op 1384

-- --- BEGIN op 1385 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'nHD', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'nHD', 'nHD');
-- --- END op 1385

-- --- BEGIN op 1386 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'nSD', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'nSD', 'nSD');
-- --- END op 1386

-- --- BEGIN op 1387 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'nikt0', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'nikt0', 'nikt0');
-- --- END op 1387

-- --- BEGIN op 1388 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'worldmkv', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'worldmkv', 'worldmkv');
-- --- END op 1388

-- --- BEGIN op 1389 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'x0r', 'release_group', 'radarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'x0r', 'x0r');
-- --- END op 1389

-- --- BEGIN op 1390 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'Ads/Watermarks', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'Ads/Watermarks', 'Ads/Watermarks');
-- --- END op 1390

-- --- BEGIN op 1391 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'Bad/False releases', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'Bad/False releases', 'Bad/False releases');
-- --- END op 1391

-- --- BEGIN op 1392 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'DeTAG/ReTAG', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'DeTAG/ReTAG', 'DeTAG/ReTAG');
-- --- END op 1392

-- --- BEGIN op 1393 ( update custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*LQ & FR LQ', 'Other reasons', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*LQ & FR LQ', 'Other reasons', 'Other reasons');
-- --- END op 1393

-- --- BEGIN op 1394 ( update custom_format "*LQ & FR LQ" )
update "custom_formats" set "description" = 'Fusion des CF Trash `LQ` et `FR LQ`. Ces deux CF partagent plusieurs groupes, notamment `AZAZE`, présent à la fois dans la condition `AZAZE` de `LQ` et dans la regex `Bad/False releases` de `FR LQ`. Les conserver séparément appliquerait la pénalité deux fois sur les mêmes releases.

La fusion est nécessaire parce que les deux périmètres restent utiles : `LQ` couvre les groupes de faible qualité internationaux, `FR LQ` couvre les spécificités des trackers français. Un compte sur des trackers FR et EN expose aux deux.

Toutes les conditions sont en `Required = OFF`, donc en OU. Le CF se déclenche dès qu''un seul groupe de la liste est reconnu.' where "name" = '*LQ & FR LQ' and "description" = '**LQ**

- A collection of known low-quality groups (often banned from the top trackers due to their lack of quality), banned or dishonest release groups, or rips/encodes from the scene and quick-to-release P2P groups that, while adequate, are typically not regarded as high quality.
- Release groups that disrupt the Starr apps automation because their poor naming could potentially create download loops, even if their overall quality is excellent.

--8<-- "includes/cf-descriptions/apply-10000.md"';
-- --- END op 1394

-- --- BEGIN op 1395 ( create custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*LQ & FR LQ', 'Film.2021.MULTi.1080p.BluRay.x264-AZAZE', 'movie', 1, NULL);
-- --- END op 1395

-- --- BEGIN op 1396 ( create custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*LQ & FR LQ', 'Film.2021.MULTi.1080p.WEB.x264-RBB', 'movie', 1, NULL);
-- --- END op 1396

-- --- BEGIN op 1397 ( create custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*LQ & FR LQ', 'Film.2021.MULTi.1080p.WEB.x264-YTS.MX', 'movie', 1, NULL);
-- --- END op 1397

-- --- BEGIN op 1398 ( create custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*LQ & FR LQ', 'Film.2021.MULTi.1080p.WEB.x264-Wawa-city', 'movie', 1, NULL);
-- --- END op 1398

-- --- BEGIN op 1399 ( create custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*LQ & FR LQ', 'Film.2021.MULTi.1080p.WEB.x264-Torrent9', 'movie', 1, NULL);
-- --- END op 1399

-- --- BEGIN op 1400 ( create custom_format "*LQ & FR LQ" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*LQ & FR LQ', 'Film.2021.MULTi.1080p.BluRay.x264-CARAPiLS', 'movie', 0, NULL);
-- --- END op 1400

-- --- BEGIN op 1401 ( update custom_format "*LQ & FR LQ" )
insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('*LQ & FR LQ', 'Sseh');
-- --- END op 1401

-- --- BEGIN op 1402 ( create custom_format "*MULTi" )
insert into "custom_formats" ("name", "description") values ('*MULTi', '');
-- --- END op 1402

-- --- BEGIN op 1403 ( update custom_format "*MULTi" )
update "custom_formats" set "description" = 'Détecte les releases multilingues, y compris lorsque le tag est accolé à un marqueur de version française, comme `MULTIVF`, `MULTIVFF` ou `MULTI-VFF`, formes fréquentes sur les trackers FR et ignorées par le CF Trash `MULTi`.

Les variantes de sous-titres `MULTISUB`, `MULTI-SUBS` et `MULTI.SUBFR` sont exclues, car elles désignent des sous-titres multilingues sur une piste audio unique et non une release réellement multilingue.

Équivalent fonctionnel de `*Language FR EN (no MULTi)`, à noter au même score. La regex de ce CF sert de condition négative dans l''autre, ce qui garantit qu''un seul des deux se déclenche.' where "name" = '*MULTi' and "description" = '';
-- --- END op 1403

-- --- BEGIN op 1404 ( update custom_format "*MULTi" )
update "custom_formats" set "include_in_rename" = 1 where "name" = '*MULTi' and "include_in_rename" = 0;
-- --- END op 1404

-- --- BEGIN op 1405 ( update custom_format "*MULTi" )
insert into "tags" ("name") values ('Language') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('*MULTi', 'Language');

insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('*MULTi', 'Sseh');
-- --- END op 1405

-- --- BEGIN op 1406 ( update custom_format "*MULTi" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*MULTi', 'Multi', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*MULTi', 'Multi', '*MULTi');
-- --- END op 1406

-- --- BEGIN op 1407 ( create custom_format "*MULTi" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*MULTi', 'Film.2021.MULTi.1080p.BluRay.x264-GROUP', 'movie', 1, NULL);
-- --- END op 1407

-- --- BEGIN op 1408 ( create custom_format "*MULTi" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*MULTi', 'Film.2021.MULTIVF.1080p.WEB.x264-GROUP', 'movie', 1, NULL);
-- --- END op 1408

-- --- BEGIN op 1409 ( create custom_format "*MULTi" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*MULTi', 'Film.2021.MULTI-VFF.1080p.WEB.x264-GROUP', 'movie', 1, NULL);
-- --- END op 1409

-- --- BEGIN op 1410 ( create custom_format "*MULTi" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*MULTi', 'Film.2021.[MULTI].1080p.WEB.x264-GROUP', 'movie', 1, NULL);
-- --- END op 1410

-- --- BEGIN op 1411 ( create custom_format "*MULTi" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*MULTi', 'Film.2021.MULTI-FRENCH.1080p.WEB.x264-GROUP', 'movie', 1, NULL);
-- --- END op 1411

-- --- BEGIN op 1412 ( create custom_format "*MULTi" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*MULTi', 'Film.2021.MULTISUB.1080p.WEB.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1412

-- --- BEGIN op 1413 ( create custom_format "*MULTi" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*MULTi', 'Film.2021.MULTI.SUBFR.1080p.WEB.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1413

-- --- BEGIN op 1414 ( create custom_format "*MULTi" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*MULTi', 'Film.2021.MULTI-SUBS.1080p.WEB.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1414

-- --- BEGIN op 1415 ( create custom_format "*MULTi" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*MULTi', 'Film.2021.VOSTFR.1080p.WEB.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1415

-- --- BEGIN op 1416 ( create custom_format "*No tag - Audio" )
insert into "custom_formats" ("name", "description") values ('*No tag - Audio', '');
-- --- END op 1416

-- --- BEGIN op 1417 ( update custom_format "*No tag - Audio" )
update "custom_formats" set "description" = 'Se déclenche lorsque aucun codec audio n''est identifiable dans le nom de la release. Attribue alors le score du CF `AAC`, hypothèse la plus prudente puisque c''est le codec le plus courant parmi les releases mal nommées.

Répond au non-respect fréquent des conventions de nommage sur les trackers français, où l''absence de tag audio ne signifie pas l''absence de piste audio.

Les quinze conditions sont en négation requise, donc le CF ne se déclenche que si aucun marqueur audio n''est présent. Il est par construction exclusif de tous les CF audio de Trash. Trois conditions couvrent TrueHD, ATMOS et DDPA séparément, cette dernière échappant à `Not Basic Dolby Digital` du fait de l''évaluation insensible à la casse.' where "name" = '*No tag - Audio' and "description" = '';
-- --- END op 1417

-- --- BEGIN op 1418 ( update custom_format "*No tag - Audio" )
insert into "tags" ("name") values ('Audio Codec') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('*No tag - Audio', 'Audio Codec');

insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('*No tag - Audio', 'Sseh');
-- --- END op 1418

-- --- BEGIN op 1419 ( update custom_format "*No tag - Audio" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*No tag - Audio', 'Not TrueHD', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*No tag - Audio', 'Not TrueHD', 'TrueHD');
-- --- END op 1419

-- --- BEGIN op 1420 ( update custom_format "*No tag - Audio" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*No tag - Audio', 'Not ATMOS', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*No tag - Audio', 'Not ATMOS', 'ATMOS');
-- --- END op 1420

-- --- BEGIN op 1421 ( update custom_format "*No tag - Audio" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*No tag - Audio', 'Not DDPA', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*No tag - Audio', 'Not DDPA', 'Not TrueHD/ATMOS (2)');
-- --- END op 1421

-- --- BEGIN op 1422 ( update custom_format "*No tag - Audio" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*No tag - Audio', 'Not DTS X', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*No tag - Audio', 'Not DTS X', 'Not DTS X');
-- --- END op 1422

-- --- BEGIN op 1423 ( update custom_format "*No tag - Audio" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*No tag - Audio', 'Not Dolby Digital Plus', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*No tag - Audio', 'Not Dolby Digital Plus', 'Not Dolby Digital Plus');
-- --- END op 1423

-- --- BEGIN op 1424 ( update custom_format "*No tag - Audio" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*No tag - Audio', 'Not DTS-HD MA', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*No tag - Audio', 'Not DTS-HD MA', 'DTS-HD MA');
-- --- END op 1424

-- --- BEGIN op 1425 ( update custom_format "*No tag - Audio" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*No tag - Audio', 'Not DTS-HD HRA', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*No tag - Audio', 'Not DTS-HD HRA', 'DTS-HD HRA');
-- --- END op 1425

-- --- BEGIN op 1426 ( update custom_format "*No tag - Audio" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*No tag - Audio', 'Not DTS-ES', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*No tag - Audio', 'Not DTS-ES', 'DTS-ES');
-- --- END op 1426

-- --- BEGIN op 1427 ( update custom_format "*No tag - Audio" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*No tag - Audio', 'Not Basic DTS', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*No tag - Audio', 'Not Basic DTS', 'Not DTS');
-- --- END op 1427

-- --- BEGIN op 1428 ( update custom_format "*No tag - Audio" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*No tag - Audio', 'Not FLAC', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*No tag - Audio', 'Not FLAC', 'Not FLAC');
-- --- END op 1428

-- --- BEGIN op 1429 ( update custom_format "*No tag - Audio" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*No tag - Audio', 'Not PCM', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*No tag - Audio', 'Not PCM', 'Not PCM');
-- --- END op 1429

-- --- BEGIN op 1430 ( update custom_format "*No tag - Audio" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*No tag - Audio', 'Not AAC', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*No tag - Audio', 'Not AAC', 'AAC');
-- --- END op 1430

-- --- BEGIN op 1431 ( update custom_format "*No tag - Audio" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*No tag - Audio', 'Not Basic Dolby Digital', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*No tag - Audio', 'Not Basic Dolby Digital', 'Not Basic Dolby Digital');
-- --- END op 1431

-- --- BEGIN op 1432 ( update custom_format "*No tag - Audio" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*No tag - Audio', 'Not MP3', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*No tag - Audio', 'Not MP3', 'MP3');
-- --- END op 1432

-- --- BEGIN op 1433 ( update custom_format "*No tag - Audio" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*No tag - Audio', 'Not Opus', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*No tag - Audio', 'Not Opus', 'Opus');
-- --- END op 1433

-- --- BEGIN op 1434 ( create custom_format "*No tag - Audio" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*No tag - Audio', 'Film.2021.MULTi.1080p.BluRay.x264-GROUP', 'movie', 1, NULL);
-- --- END op 1434

-- --- BEGIN op 1435 ( create custom_format "*No tag - Audio" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*No tag - Audio', 'Film.2021.MULTi.1080p.BluRay.DTS-HD.MA.5.1.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1435

-- --- BEGIN op 1436 ( create custom_format "*No tag - Audio" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*No tag - Audio', 'Film.2021.MULTi.1080p.WEB.DDP5.1.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1436

-- --- BEGIN op 1437 ( create custom_format "*No tag - Audio" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*No tag - Audio', 'Film.2021.MULTi.1080p.WEB.DDPA5.1.x265-GROUP', 'movie', 0, NULL);
-- --- END op 1437

-- --- BEGIN op 1438 ( create custom_format "*No tag - Audio" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*No tag - Audio', 'Film.2021.MULTi.1080p.WEB.AAC.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1438

-- --- BEGIN op 1439 ( create custom_format "*No tag - Audio" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*No tag - Audio', 'Film.2021.MULTi.1080p.BluRay.TrueHD.7.1.Atmos.x264-GROUP', 'movie', 1, NULL);
-- --- END op 1439

-- --- BEGIN op 1440 ( create custom_format "*No tag - Audio" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*No tag - Audio', 'Film.2021.MULTi.1080p.BluRay.AC3.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1440

-- --- BEGIN op 1441 ( create custom_format "*No tag - Audio" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*No tag - Audio', 'Film.2021.MULTi.1080p.BluRay.FLAC.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1441

-- --- BEGIN op 1442 ( create custom_format "*No tag - Audio" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*No tag - Audio', 'Film.2021.MULTi.1080p.WEB.x265-CtrlHD', 'movie', 0, NULL);
-- --- END op 1442

-- --- BEGIN op 1443 ( update custom_format "*No tag - Audio" )
UPDATE custom_format_tests SET should_match = 0 WHERE custom_format_name = '*No tag - Audio' AND title = 'Film.2021.MULTi.1080p.BluRay.TrueHD.7.1.Atmos.x264-GROUP' AND type = 'movie' AND should_match = 1;
-- --- END op 1443

-- --- BEGIN op 1444 ( create custom_format "*No tag - VFF" )
insert into "custom_formats" ("name", "description") values ('*No tag - VFF', '');
-- --- END op 1444

-- --- BEGIN op 1445 ( update custom_format "*No tag - VFF" )
update "custom_formats" set "description" = 'Attribue le score VFF aux releases d''un film dont la langue d''origine est le français lorsque aucun marqueur de version n''apparaît dans le nom. Répond au non-respect des conventions de nommage sur les trackers FR, où une release VFF est fréquemment publiée sans le moindre tag.

Les onze conditions de titre écartent tous les marqueurs de version concurrents, `FRENCH`, `VF`, `FR`, `TRUEFRENCH`, `VFF`, `VF2`, `VFI`, `VFQ`, `VFB`, `VQ`, `VOQ`, ainsi que `MULTi`, `VOSTFR` et `SUBFRENCH`. Le CF est donc exclusif de `*VFF`, `*MULTi`, `*VOSTFR` et de tous les CF de version française de Trash.

`VOF` n''est volontairement pas exclu, version originale française et VFF désignant la même piste audio.

La condition de langue empêche toute vérification positive dans le moteur de test de Profilarr, qui ne dispose pas du contexte du film. Le comportement positif se valide dans Radarr.' where "name" = '*No tag - VFF' and "description" = '';
-- --- END op 1445

-- --- BEGIN op 1446 ( update custom_format "*No tag - VFF" )
update "custom_formats" set "include_in_rename" = 1 where "name" = '*No tag - VFF' and "include_in_rename" = 0;
-- --- END op 1446

-- --- BEGIN op 1447 ( update custom_format "*No tag - VFF" )
insert into "tags" ("name") values ('Language') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('*No tag - VFF', 'Language');

insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('*No tag - VFF', 'Sseh');
-- --- END op 1447

-- --- BEGIN op 1448 ( update custom_format "*No tag - VFF" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*No tag - VFF', 'No tag - FRENCH | VF | FR', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*No tag - VFF', 'No tag - FRENCH | VF | FR', '*FRENCH | VF | FR');
-- --- END op 1448

-- --- BEGIN op 1449 ( update custom_format "*No tag - VFF" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*No tag - VFF', 'No tag - TRUEFRENCH | VFF', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*No tag - VFF', 'No tag - TRUEFRENCH | VFF', 'TRUEFRENCH');
-- --- END op 1449

-- --- BEGIN op 1450 ( update custom_format "*No tag - VFF" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*No tag - VFF', 'No tag - VF2', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*No tag - VFF', 'No tag - VF2', 'Not VF2');
-- --- END op 1450

-- --- BEGIN op 1451 ( update custom_format "*No tag - VFF" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*No tag - VFF', 'No tag - VFI', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*No tag - VFF', 'No tag - VFI', 'French International');
-- --- END op 1451

-- --- BEGIN op 1452 ( update custom_format "*No tag - VFF" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*No tag - VFF', 'No tag - VFQ', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*No tag - VFF', 'No tag - VFQ', '*Canadian French');
-- --- END op 1452

-- --- BEGIN op 1453 ( update custom_format "*No tag - VFF" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*No tag - VFF', 'No tag - VFB', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*No tag - VFF', 'No tag - VFB', 'Belgian French');
-- --- END op 1453

-- --- BEGIN op 1454 ( update custom_format "*No tag - VFF" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*No tag - VFF', 'No tag - VQ', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*No tag - VFF', 'No tag - VQ', 'Version Québécoise');
-- --- END op 1454

-- --- BEGIN op 1455 ( update custom_format "*No tag - VFF" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*No tag - VFF', 'No tag - VOQ', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*No tag - VFF', 'No tag - VOQ', 'Quebec Original Version');
-- --- END op 1455

-- --- BEGIN op 1456 ( update custom_format "*No tag - VFF" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*No tag - VFF', 'No tag - MULTi', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*No tag - VFF', 'No tag - MULTi', '*MULTi');
-- --- END op 1456

-- --- BEGIN op 1457 ( update custom_format "*No tag - VFF" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*No tag - VFF', 'No tag - VOSTFR', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*No tag - VFF', 'No tag - VOSTFR', '*VOSTFR');
-- --- END op 1457

-- --- BEGIN op 1458 ( update custom_format "*No tag - VFF" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*No tag - VFF', 'No tag - SUBFRENCH', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*No tag - VFF', 'No tag - SUBFRENCH', 'SUBFRENCH');
-- --- END op 1458

-- --- BEGIN op 1459 ( update custom_format "*No tag - VFF" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*No tag - VFF', 'Language French', 'language', 'all', 0, 1);

INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('*No tag - VFF', 'Language French', 'French', 0);
-- --- END op 1459

-- --- BEGIN op 1460 ( update custom_format "*No tag - VFF" )
update "custom_formats" set "description" = 'Attribue le score VFF aux releases d''un film dont la langue d''origine est le français lorsque aucun marqueur de version n''apparaît dans le nom. 
Répond au non-respect des conventions de nommage sur les trackers FR, où une release VOF est fréquemment publiée sans le moindre tag.

Les onze conditions de titre écartent tous les marqueurs de version concurrents, `FRENCH`, `VF`, `FR`, `TRUEFRENCH`, `VFF`, `VF2`, `VFI`, `VFQ`, `VFB`, `VQ`, `VOQ`, ainsi que `MULTi`, `VOSTFR` et `SUBFRENCH`. Le CF est donc exclusif de `*VFF`, `*MULTi`, `*VOSTFR` et de tous les CF de version française de Trash.

`VOF` n''est volontairement pas exclu, version originale française et VFF désignant la même piste audio.

La condition de langue empêche toute vérification positive dans le moteur de test de Profilarr, qui ne dispose pas du contexte du film. Le comportement positif se valide dans Radarr.' where "name" = '*No tag - VFF' and "description" = 'Attribue le score VFF aux releases d''un film dont la langue d''origine est le français lorsque aucun marqueur de version n''apparaît dans le nom. Répond au non-respect des conventions de nommage sur les trackers FR, où une release VFF est fréquemment publiée sans le moindre tag.

Les onze conditions de titre écartent tous les marqueurs de version concurrents, `FRENCH`, `VF`, `FR`, `TRUEFRENCH`, `VFF`, `VF2`, `VFI`, `VFQ`, `VFB`, `VQ`, `VOQ`, ainsi que `MULTi`, `VOSTFR` et `SUBFRENCH`. Le CF est donc exclusif de `*VFF`, `*MULTi`, `*VOSTFR` et de tous les CF de version française de Trash.

`VOF` n''est volontairement pas exclu, version originale française et VFF désignant la même piste audio.

La condition de langue empêche toute vérification positive dans le moteur de test de Profilarr, qui ne dispose pas du contexte du film. Le comportement positif se valide dans Radarr.';
-- --- END op 1460

-- --- BEGIN op 1461 ( create custom_format "*No tag - VFF" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*No tag - VFF', 'Film.2021.FRENCH.1080p.BluRay.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1461

-- --- BEGIN op 1462 ( create custom_format "*No tag - VFF" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*No tag - VFF', 'Film.2021.TRUEFRENCH.1080p.BluRay.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1462

-- --- BEGIN op 1463 ( create custom_format "*No tag - VFF" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*No tag - VFF', 'Film.2021.MULTi.1080p.BluRay.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1463

-- --- BEGIN op 1464 ( create custom_format "*No tag - VFF" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*No tag - VFF', 'Film.2021.MULTi.FRA.1080p.WEB.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1464

-- --- BEGIN op 1465 ( create custom_format "*No tag - VFF" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*No tag - VFF', 'Film.2021.VFQ.1080p.WEB.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1465

-- --- BEGIN op 1466 ( create custom_format "*No tag - VFF" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*No tag - VFF', 'Film.2021.VFB.1080p.WEB.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1466

-- --- BEGIN op 1467 ( create custom_format "*No tag - VFF" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*No tag - VFF', 'Film.2021.VOSTFR.1080p.WEB.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1467

-- --- BEGIN op 1468 ( create custom_format "*No tag - VFF" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*No tag - VFF', 'Film.2021.SUBFRENCH.1080p.WEB.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1468

-- --- BEGIN op 1469 ( create custom_format "*No tag - VFF" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*No tag - VFF', 'Film.2021.1080p.BluRay.x264-GROUP', 'movie', 0, 'ne matche pas, mais pour la seule raison de la langue');
-- --- END op 1469

-- --- BEGIN op 1470 ( create custom_format "*No tag - VOSTFR" )
insert into "custom_formats" ("name", "description") values ('*No tag - VOSTFR', '');
-- --- END op 1470

-- --- BEGIN op 1471 ( update custom_format "*No tag - VOSTFR" )
update "custom_formats" set "description" = 'Attribue le score VOSTFR aux releases dépourvues de piste audio française lorsque aucun marqueur de version n''apparaît dans le nom. Sur un tracker français, une release sans mention de doublage est présumée sous-titrée.

Complémentaire de `*No tag - VFF`, qui traite le cas symétrique des films de langue originale française. Les deux CF se partagent l''ensemble des releases sans tag, selon la langue du film.

Les conditions de titre écartent tous les marqueurs de version française, ainsi que `MULTi`, `VOSTFR` et `SUBFRENCH`. Elles doublent volontairement la condition de langue afin que le CF ne dépende pas du parser de Radarr, dont la couverture des formes rares comme `VFB` ou `VOQ` n''est pas garantie.' where "name" = '*No tag - VOSTFR' and "description" = '';
-- --- END op 1471

-- --- BEGIN op 1472 ( update custom_format "*No tag - VOSTFR" )
insert into "tags" ("name") values ('Language') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('*No tag - VOSTFR', 'Language');

insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('*No tag - VOSTFR', 'Sseh');
-- --- END op 1472

-- --- BEGIN op 1473 ( update custom_format "*No tag - VOSTFR" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*No tag - VOSTFR', 'Not French Language', 'language', 'all', 1, 1);

INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('*No tag - VOSTFR', 'Not French Language', 'French', 0);
-- --- END op 1473

-- --- BEGIN op 1474 ( update custom_format "*No tag - VOSTFR" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*No tag - VOSTFR', 'No tag - VOSTFR', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*No tag - VOSTFR', 'No tag - VOSTFR', '*VOSTFR');
-- --- END op 1474

-- --- BEGIN op 1475 ( update custom_format "*No tag - VOSTFR" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*No tag - VOSTFR', 'No tag - SUBFRENCH', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*No tag - VOSTFR', 'No tag - SUBFRENCH', 'SUBFRENCH');
-- --- END op 1475

-- --- BEGIN op 1476 ( update custom_format "*No tag - VOSTFR" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*No tag - VOSTFR', 'No tag - MULTi', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*No tag - VOSTFR', 'No tag - MULTi', '*MULTi');
-- --- END op 1476

-- --- BEGIN op 1477 ( update custom_format "*No tag - VOSTFR" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*No tag - VOSTFR', 'No tag - FRENCH | VF | FR', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*No tag - VOSTFR', 'No tag - FRENCH | VF | FR', '*FRENCH | VF | FR');
-- --- END op 1477

-- --- BEGIN op 1478 ( update custom_format "*No tag - VOSTFR" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*No tag - VOSTFR', 'No tag - TRUEFRENCH | VFF', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*No tag - VOSTFR', 'No tag - TRUEFRENCH | VFF', 'TRUEFRENCH');
-- --- END op 1478

-- --- BEGIN op 1479 ( update custom_format "*No tag - VOSTFR" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*No tag - VOSTFR', 'No tag - VF2', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*No tag - VOSTFR', 'No tag - VF2', 'Not VF2');
-- --- END op 1479

-- --- BEGIN op 1480 ( update custom_format "*No tag - VOSTFR" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*No tag - VOSTFR', 'No tag - VFI', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*No tag - VOSTFR', 'No tag - VFI', 'French International');
-- --- END op 1480

-- --- BEGIN op 1481 ( update custom_format "*No tag - VOSTFR" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*No tag - VOSTFR', 'No tag - VFQ', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*No tag - VOSTFR', 'No tag - VFQ', '*Canadian French');
-- --- END op 1481

-- --- BEGIN op 1482 ( update custom_format "*No tag - VOSTFR" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*No tag - VOSTFR', 'No tag - VFB', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*No tag - VOSTFR', 'No tag - VFB', 'Belgian French');
-- --- END op 1482

-- --- BEGIN op 1483 ( update custom_format "*No tag - VOSTFR" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*No tag - VOSTFR', 'No tag - VQ', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*No tag - VOSTFR', 'No tag - VQ', 'Version Québécoise');
-- --- END op 1483

-- --- BEGIN op 1484 ( update custom_format "*No tag - VOSTFR" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*No tag - VOSTFR', 'No tag - VOQ', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*No tag - VOSTFR', 'No tag - VOQ', 'Quebec Original Version');
-- --- END op 1484

-- --- BEGIN op 1485 ( update custom_format "*No tag - VOSTFR" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*No tag - VOSTFR', 'No tag - VOF', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*No tag - VOSTFR', 'No tag - VOF', 'French Original Version');
-- --- END op 1485

-- --- BEGIN op 1486 ( create custom_format "*No tag - VOSTFR" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*No tag - VOSTFR', 'Movie.2021.1080p.BluRay.x264-GROUP', 'movie', 1, NULL);
-- --- END op 1486

-- --- BEGIN op 1487 ( create custom_format "*No tag - VOSTFR" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*No tag - VOSTFR', 'Movie.2021.VOSTFR.1080p.WEB.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1487

-- --- BEGIN op 1488 ( create custom_format "*No tag - VOSTFR" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*No tag - VOSTFR', 'Movie.2021.VOST.FR.1080p.WEB.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1488

-- --- BEGIN op 1489 ( create custom_format "*No tag - VOSTFR" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*No tag - VOSTFR', 'Movie.2021.SUBFRENCH.1080p.WEB.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1489

-- --- BEGIN op 1490 ( create custom_format "*No tag - VOSTFR" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*No tag - VOSTFR', 'Movie.2021.MULTi.1080p.BluRay.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1490

-- --- BEGIN op 1491 ( create custom_format "*No tag - VOSTFR" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*No tag - VOSTFR', 'Movie.2021.FRENCH.1080p.WEB.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1491

-- --- BEGIN op 1492 ( create custom_format "*No tag - VOSTFR" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*No tag - VOSTFR', 'Movie.2021.VFF.1080p.WEB.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1492

-- --- BEGIN op 1493 ( create custom_format "*No tag - VOSTFR" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*No tag - VOSTFR', 'Movie.2021.VFQ.1080p.WEB.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1493

-- --- BEGIN op 1494 ( create custom_format "*No tag - VOSTFR" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*No tag - VOSTFR', 'Movie.2021.VFB.1080p.WEB.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1494

-- --- BEGIN op 1495 ( create custom_format "*Notag x264 x265" )
insert into "custom_formats" ("name", "description") values ('*Notag x264 x265', '');
-- --- END op 1495

-- --- BEGIN op 1496 ( update custom_format "*Notag x264 x265" )
update "custom_formats" set "description" = 'Se déclenche lorsque aucun codec vidéo n''est identifiable dans le nom de la release. Attribue alors le score du CF `*x264`, hypothèse la plus prudente puisque le x264 reste le codec par défaut des releases mal nommées.

Répond au non-respect fréquent des conventions de nommage sur les trackers français, où l''absence de tag codec ne signifie pas l''absence de codec.

Les six conditions de titre couvrent AVC, HEVC, VVC, AV1, VC-1 et MPEG2, ce qui rend le CF exclusif de `*x264`, `*x265` et du CF Trash `AV1`. La condition `Not Remux` reprend celle des CF `x264` et `x265` de Trash, afin qu''un remux ne reçoive jamais de points de codec, qu''il déclare ou non son codec dans son nom.

Les codecs anciens comme XviD et DivX ne sont pas couverts et seront traités comme du x264.' where "name" = '*Notag x264 x265' and "description" = '';
-- --- END op 1496

-- --- BEGIN op 1497 ( update custom_format "*Notag x264 x265" )
insert into "tags" ("name") values ('Video Codec') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('*Notag x264 x265', 'Video Codec');

insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('*Notag x264 x265', 'Sseh');
-- --- END op 1497

-- --- BEGIN op 1498 ( update custom_format "*Notag x264 x265" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Notag x264 x265', 'Not x264/h264/AVC', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Notag x264 x265', 'Not x264/h264/AVC', 'x|h264');
-- --- END op 1498

-- --- BEGIN op 1499 ( update custom_format "*Notag x264 x265" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Notag x264 x265', 'Not x265/h265/HEVC', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Notag x264 x265', 'Not x265/h265/HEVC', 'x|h265');
-- --- END op 1499

-- --- BEGIN op 1500 ( update custom_format "*Notag x264 x265" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Notag x264 x265', 'Not x266/VVC', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Notag x264 x265', 'Not x266/VVC', 'x|h266');
-- --- END op 1500

-- --- BEGIN op 1501 ( update custom_format "*Notag x264 x265" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Notag x264 x265', 'Not AV1', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Notag x264 x265', 'Not AV1', 'AV1');
-- --- END op 1501

-- --- BEGIN op 1502 ( update custom_format "*Notag x264 x265" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Notag x264 x265', 'Not VC-1', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Notag x264 x265', 'Not VC-1', 'VC-1');
-- --- END op 1502

-- --- BEGIN op 1503 ( update custom_format "*Notag x264 x265" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Notag x264 x265', 'Not MPEG2', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Notag x264 x265', 'Not MPEG2', 'MPEG2');
-- --- END op 1503

-- --- BEGIN op 1504 ( update custom_format "*Notag x264 x265" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Notag x264 x265', 'Not Remux', 'quality_modifier', 'all', 1, 1);

INSERT INTO condition_quality_modifiers (custom_format_name, condition_name, quality_modifier) VALUES ('*Notag x264 x265', 'Not Remux', 'remux');
-- --- END op 1504

-- --- BEGIN op 1505 ( create custom_format "*Notag x264 x265" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Notag x264 x265', 'Film.2021.MULTi.1080p.BluRay-GROUP', 'movie', 1, NULL);
-- --- END op 1505

-- --- BEGIN op 1506 ( create custom_format "*Notag x264 x265" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Notag x264 x265', 'Film.2021.MULTi.1080p.WEB.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1506

-- --- BEGIN op 1507 ( create custom_format "*Notag x264 x265" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Notag x264 x265', 'Film.2021.MULTi.1080p.WEB.H.264-GROUP', 'movie', 0, NULL);
-- --- END op 1507

-- --- BEGIN op 1508 ( create custom_format "*Notag x264 x265" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Notag x264 x265', 'Film.2021.MULTi.1080p.BluRay.AVC-GROUP', 'movie', 0, NULL);
-- --- END op 1508

-- --- BEGIN op 1509 ( create custom_format "*Notag x264 x265" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Notag x264 x265', 'Film.2021.MULTi.2160p.WEB.x265-GROUP', 'movie', 0, NULL);
-- --- END op 1509

-- --- BEGIN op 1510 ( create custom_format "*Notag x264 x265" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Notag x264 x265', 'Film.2021.MULTi.2160p.WEB.HEVC-GROUP', 'movie', 0, NULL);
-- --- END op 1510

-- --- BEGIN op 1511 ( create custom_format "*Notag x264 x265" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Notag x264 x265', 'Film.2021.MULTi.1080p.WEB.AV1-GROUP', 'movie', 0, NULL);
-- --- END op 1511

-- --- BEGIN op 1512 ( create custom_format "*Notag x264 x265" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Notag x264 x265', 'Film.2021.MULTi.1080p.BluRay.REMUX.DTS-HD.MA.5.1-GROUP', 'movie', 0, NULL);
-- --- END op 1512

-- --- BEGIN op 1513 ( create custom_format "*Remaster" )
insert into "custom_formats" ("name", "description") values ('*Remaster', '');
-- --- END op 1513

-- --- BEGIN op 1514 ( update custom_format "*Remaster" )
update "custom_formats" set "description" = 'Détecte les rééditions remasterisées, hors remasters 4K traités par le CF `4K Remaster`.

Diffère du CF Trash `Remaster` par l''exclusion des éditions Criterion, via les tags `Criterion` et `CC`. Les marqueurs d''édition sont mutuellement exclusifs dans ce profil, selon la hiérarchie Criterion, puis Remaster, puis Special Edition. Une même release peut porter plusieurs de ces mentions sans que le fichier diffère, et un cumul de scores récompenserait alors la verbosité du nommage plutôt qu''une qualité réelle.' where "name" = '*Remaster' and "description" = '';
-- --- END op 1514

-- --- BEGIN op 1515 ( update custom_format "*Remaster" )
insert into "tags" ("name") values ('Edition') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('*Remaster', 'Edition');

insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('*Remaster', 'Sseh');
-- --- END op 1515

-- --- BEGIN op 1516 ( update custom_format "*Remaster" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Remaster', 'Remaster', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Remaster', 'Remaster', 'Remaster');
-- --- END op 1516

-- --- BEGIN op 1517 ( update custom_format "*Remaster" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Remaster', 'Not 4K Remaster', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Remaster', 'Not 4K Remaster', 'Not 4K Remaster');
-- --- END op 1517

-- --- BEGIN op 1518 ( update custom_format "*Remaster" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Remaster', 'Not Criterion', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Remaster', 'Not Criterion', 'Criterion');
-- --- END op 1518

-- --- BEGIN op 1519 ( update custom_format "*Remaster" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Remaster', 'Not CC', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Remaster', 'Not CC', 'CC');
-- --- END op 1519

-- --- BEGIN op 1520 ( create custom_format "*Remaster" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Remaster', 'Film.1962.Remastered.1080p.BluRay.x264-GROUP', 'movie', 1, NULL);
-- --- END op 1520

-- --- BEGIN op 1521 ( create custom_format "*Remaster" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Remaster', 'Film.1962.REMASTER.1080p.BluRay.x264-GROUP', 'movie', 1, NULL);
-- --- END op 1521

-- --- BEGIN op 1522 ( create custom_format "*Remaster" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Remaster', 'Film.1962.Criterion.Remastered.1080p.BluRay.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1522

-- --- BEGIN op 1523 ( create custom_format "*Remaster" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Remaster', 'Film.1962.CC.Remastered.1080p.BluRay.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1523

-- --- BEGIN op 1524 ( create custom_format "*Remaster" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Remaster', 'Film.1962.4K.Remaster.2160p.BluRay.x265-GROUP', 'movie', 0, NULL);
-- --- END op 1524

-- --- BEGIN op 1525 ( create custom_format "*Remaster" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Remaster', 'Film.1962.1080p.BluRay.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1525

-- --- BEGIN op 1526 ( create custom_format "*Special Edition" )
insert into "custom_formats" ("name", "description") values ('*Special Edition', '');
-- --- END op 1526

-- --- BEGIN op 1527 ( update custom_format "*Special Edition" )
update "custom_formats" set "description" = 'Détecte les éditions spéciales et les versions alternatives, y compris les formes françaises `RESTAURE`, `RESTAUREE`, `RESTAURÉE` et `RESTAURATION`, absentes du CF Trash `Special Edition`.

Les exclusions IMAX Edition, Open Matte, Theatrical et Extended Clip proviennent de Trash. Les exclusions Criterion, CC et Remaster sont propres à ce profil : les marqueurs d''édition y sont mutuellement exclusifs selon la hiérarchie Criterion, puis Remaster, puis Special Edition. Une même release porte souvent plusieurs de ces mentions sans que le fichier diffère, et un cumul récompenserait la verbosité du nommage plutôt qu''une qualité réelle.' where "name" = '*Special Edition' and "description" = '';
-- --- END op 1527

-- --- BEGIN op 1528 ( update custom_format "*Special Edition" )
insert into "tags" ("name") values ('Edition') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('*Special Edition', 'Edition');

insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('*Special Edition', 'Sseh');
-- --- END op 1528

-- --- BEGIN op 1529 ( update custom_format "*Special Edition" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Special Edition', 'Not Remaster', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Special Edition', 'Not Remaster', 'Remaster');
-- --- END op 1529

-- --- BEGIN op 1530 ( update custom_format "*Special Edition" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Special Edition', 'Not CC', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Special Edition', 'Not CC', 'CC');
-- --- END op 1530

-- --- BEGIN op 1531 ( update custom_format "*Special Edition" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Special Edition', 'Special Edition', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Special Edition', 'Special Edition', '*Special Edition');
-- --- END op 1531

-- --- BEGIN op 1532 ( update custom_format "*Special Edition" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Special Edition', 'Not IMAX Edition', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Special Edition', 'Not IMAX Edition', 'Not IMAX Edition');
-- --- END op 1532

-- --- BEGIN op 1533 ( update custom_format "*Special Edition" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Special Edition', 'Not Open Matte', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Special Edition', 'Not Open Matte', 'Not Open Matte');
-- --- END op 1533

-- --- BEGIN op 1534 ( update custom_format "*Special Edition" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Special Edition', 'Not Theatrical', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Special Edition', 'Not Theatrical', 'Not Theatrical');
-- --- END op 1534

-- --- BEGIN op 1535 ( update custom_format "*Special Edition" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Special Edition', 'Not Extended Clip', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Special Edition', 'Not Extended Clip', 'Not Extended Clip');
-- --- END op 1535

-- --- BEGIN op 1536 ( update custom_format "*Special Edition" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Special Edition', 'Not Criterion', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Special Edition', 'Not Criterion', 'Criterion');
-- --- END op 1536

-- --- BEGIN op 1537 ( create custom_format "*Special Edition" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Special Edition', 'Film.2021.EXTENDED.1080p.BluRay.x264-GROUP', 'movie', 1, NULL);
-- --- END op 1537

-- --- BEGIN op 1538 ( create custom_format "*Special Edition" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Special Edition', 'Film.1962.Version.Restauree.1080p.BluRay.x264-GROUP', 'movie', 1, NULL);
-- --- END op 1538

-- --- BEGIN op 1539 ( create custom_format "*Special Edition" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Special Edition', 'Film.1962.Restauration.1080p.BluRay.x264-GROUP', 'movie', 1, NULL);
-- --- END op 1539

-- --- BEGIN op 1540 ( create custom_format "*Special Edition" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Special Edition', 'Film.2021.Directors.Cut.1080p.BluRay.x264-GROUP', 'movie', 1, NULL);
-- --- END op 1540

-- --- BEGIN op 1541 ( create custom_format "*Special Edition" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Special Edition', 'Film.2021.IMAX.Edition.1080p.BluRay.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1541

-- --- BEGIN op 1542 ( create custom_format "*Special Edition" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Special Edition', 'Film.2021.Theatrical.Cut.1080p.BluRay.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1542

-- --- BEGIN op 1543 ( create custom_format "*Special Edition" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Special Edition', 'Film.1962.Criterion.Uncut.1080p.BluRay.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1543

-- --- BEGIN op 1544 ( create custom_format "*Special Edition" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Special Edition', 'Film.1962.Remastered.Extended.1080p.BluRay.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1544

-- --- BEGIN op 1545 ( create custom_format "*Special Edition" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Special Edition', 'Cut.Throat.City.2020.1080p.BluRay.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1545

-- --- BEGIN op 1546 ( create custom_format "*Team FW" )
insert into "custom_formats" ("name", "description") values ('*Team FW', '');
-- --- END op 1546

-- --- BEGIN op 1547 ( update custom_format "*Team FW" )
update "custom_formats" set "description" = 'Bonus attribué à la team FW, envers laquelle une confiance particulière a été établie. Le score dépasse l''écart de 600 points séparant x264 et x265, ce qui permet à une release FW en x264 de passer devant une x265 d''origine inconnue.

La détection porte sur le champ Release Group et non sur le titre, avec la regex Trash ancrée `^(FW)$`. Un boost de cette ampleur ne tolère pas le faux positif, et une recherche dans le titre attraperait les groupes dont le nom commence par FW, comme FWDHD.

Doublon assumé avec le CF Trash `FR WEB Tier 01`, qui contient également FW mais reste à zéro point et sert uniquement d''information en interactive search.' where "name" = '*Team FW' and "description" = '';
-- --- END op 1547

-- --- BEGIN op 1548 ( update custom_format "*Team FW" )
insert into "tags" ("name") values ('Teams') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('*Team FW', 'Teams');

insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('*Team FW', 'Sseh');
-- --- END op 1548

-- --- BEGIN op 1549 ( update custom_format "*Team FW" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Team FW', 'FW tag', 'release_group', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Team FW', 'FW tag', 'FW');
-- --- END op 1549

-- --- BEGIN op 1550 ( create custom_format "*Team FW" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Team FW', 'Film.2021.MULTi.1080p.WEB.x264-FW', 'movie', 1, NULL);
-- --- END op 1550

-- --- BEGIN op 1551 ( create custom_format "*Team FW" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Team FW', 'Film.2021.MULTi.1080p.WEB.x264-FWDHD', 'movie', 0, NULL);
-- --- END op 1551

-- --- BEGIN op 1552 ( create custom_format "*Team FW" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Team FW', 'Film.2021.MULTi.1080p.WEB-DL.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1552

-- --- BEGIN op 1553 ( create custom_format "*Team FW" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Team FW', 'Film.2021.MULTi.1080p.WEB.x264-FWD', 'movie', 0, NULL);
-- --- END op 1553

-- --- BEGIN op 1554 ( create regular_expression "*Team -mHDgz" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('*Team -mHDgz', '^(XSHD)$', 'Matches the release group exactly `XSHD`', NULL);

insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*Team -mHDgz', 'Sseh');

insert into "tags" ("name") values ('Team') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*Team -mHDgz', 'Team');
-- --- END op 1554

-- --- BEGIN op 1555 ( update regular_expression "*Team -mHDgz" )
update "regular_expressions" set "description" = 'Matches the release group exactly `mHDgz`' where "name" = '*Team -mHDgz' and "description" = 'Matches the release group exactly `XSHD`';
-- --- END op 1555

-- --- BEGIN op 1556 ( update regular_expression "*Team -mHDgz" )
update "regular_expressions" set "pattern" = '^(mHDgz)$' where "name" = '*Team -mHDgz' and "pattern" = '^(XSHD)$';
-- --- END op 1556

-- --- BEGIN op 1557 ( create custom_format "*Team mHDgz" )
insert into "custom_formats" ("name", "description") values ('*Team mHDgz', '');
-- --- END op 1557

-- --- BEGIN op 1558 ( update custom_format "*Team mHDgz" )
update "custom_formats" set "description" = 'Bonus attribué à la team mHDgz, envers laquelle une confiance particulière a été établie. 
Le score dépasse l''écart de 600 points séparant x264 et x265, ce qui permet à une release mHDgz en x264 de passer devant une x265 d''origine inconnue.

La détection porte sur le champ Release Group avec une regex ancrée. 
Une recherche dans le titre déclencherait aussi la condition `mHD` du CF `*LQ & FR LQ`, provoquant un cumul de +601 et -601 sur la même release.' where "name" = '*Team mHDgz' and "description" = '';
-- --- END op 1558

-- --- BEGIN op 1559 ( update custom_format "*Team mHDgz" )
insert into "tags" ("name") values ('Teams') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('*Team mHDgz', 'Teams');

insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('*Team mHDgz', 'Sseh');
-- --- END op 1559

-- --- BEGIN op 1560 ( update custom_format "*Team mHDgz" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Team mHDgz', 'mHDgz tag', 'release_group', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Team mHDgz', 'mHDgz tag', '*Team -mHDgz');
-- --- END op 1560

-- --- BEGIN op 1561 ( create custom_format "*Team mHDgz" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Team mHDgz', 'Film.2021.MULTi.1080p.WEB.x264-mHDgz', 'movie', 1, NULL);
-- --- END op 1561

-- --- BEGIN op 1562 ( create custom_format "*Team mHDgz" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Team mHDgz', 'Film.2021.MULTi.1080p.WEB.x264-mHD', 'movie', 0, NULL);
-- --- END op 1562

-- --- BEGIN op 1563 ( create custom_format "*Team mHDgz" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Team mHDgz', 'Film.2021.MULTi.1080p.BluRay.x264-mHDgzHD', 'movie', 0, NULL);
-- --- END op 1563

-- --- BEGIN op 1564 ( create custom_format "*Team mHDgz" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Team mHDgz', 'Film.2021.MULTi.1080p.WEB.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1564

-- --- BEGIN op 1565 ( create custom_format "*Team PopHD" )
insert into "custom_formats" ("name", "description") values ('*Team PopHD', '');
-- --- END op 1565

-- --- BEGIN op 1566 ( update custom_format "*Team PopHD" )
update "custom_formats" set "description" = 'Bonus attribué à la team PopHD, envers laquelle une confiance particulière a été établie. Le score dépasse l''écart de 600 points séparant x264 et x265, ce qui permet à une release PopHD en x264 de passer devant une x265 d''origine inconnue.

La détection porte sur le champ Release Group avec une regex ancrée, un boost de cette ampleur ne tolérant pas le faux positif.

Doublon assumé avec `*FR Scene Groups`, qui contient également PopHD via la liste des teams internes Sharewood mais reste à zéro point et sert uniquement d''information en interactive search.' where "name" = '*Team PopHD' and "description" = '';
-- --- END op 1566

-- --- BEGIN op 1567 ( update custom_format "*Team PopHD" )
insert into "tags" ("name") values ('Teams') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('*Team PopHD', 'Teams');

insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('*Team PopHD', 'Sseh');
-- --- END op 1567

-- --- BEGIN op 1568 ( update custom_format "*Team PopHD" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Team PopHD', 'PopHD tag', 'release_group', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Team PopHD', 'PopHD tag', '*Team -PopHD');
-- --- END op 1568

-- --- BEGIN op 1569 ( create custom_format "*Team PopHD" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Team PopHD', 'Film.2021.MULTi.1080p.WEB.x264-PopHD', 'movie', 1, NULL);
-- --- END op 1569

-- --- BEGIN op 1570 ( create custom_format "*Team PopHD" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Team PopHD', 'Film.2021.MULTi.1080p.WEB.x264-PopHDX', 'movie', 0, NULL);
-- --- END op 1570

-- --- BEGIN op 1571 ( create custom_format "*Team PopHD" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Team PopHD', 'Film.2021.MULTi.1080p.WEB.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1571

-- --- BEGIN op 1572 ( create custom_format "*Team SUPPLY" )
insert into "custom_formats" ("name", "description") values ('*Team SUPPLY', '');
-- --- END op 1572

-- --- BEGIN op 1573 ( update custom_format "*Team SUPPLY" )
update "custom_formats" set "description" = 'Bonus attribué à la team SUPPLY, envers laquelle une confiance particulière a été établie. Le score dépasse l''écart de 600 points séparant x264 et x265, ce qui permet à une release SUPPLY en x264 de passer devant une x265 d''origine inconnue.

La détection porte sur le champ Release Group avec la regex Trash ancrée `^(SUPPLY)$`. Une recherche dans le titre attraperait le mot anglais `supply` présent dans certains titres de films.

Doublon assumé avec le CF Trash `FR WEB Tier 01`, qui contient également SUPPLY mais reste à zéro point et sert uniquement d''information en interactive search.' where "name" = '*Team SUPPLY' and "description" = '';
-- --- END op 1573

-- --- BEGIN op 1574 ( update custom_format "*Team SUPPLY" )
insert into "tags" ("name") values ('Teams') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('*Team SUPPLY', 'Teams');

insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('*Team SUPPLY', 'Sseh');
-- --- END op 1574

-- --- BEGIN op 1575 ( update custom_format "*Team SUPPLY" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Team SUPPLY', 'SUPPLY tag', 'release_group', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Team SUPPLY', 'SUPPLY tag', 'SUPPLY');
-- --- END op 1575

-- --- BEGIN op 1576 ( create custom_format "*Team SUPPLY" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Team SUPPLY', 'Film.2021.MULTi.1080p.WEB.x264-SUPPLY', 'movie', 1, NULL);
-- --- END op 1576

-- --- BEGIN op 1577 ( create custom_format "*Team SUPPLY" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Team SUPPLY', 'The.Supply.Chain.2021.1080p.WEB.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1577

-- --- BEGIN op 1578 ( create custom_format "*Team SUPPLY" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Team SUPPLY', 'Film.2021.MULTi.1080p.WEB.x264-SUPPLYHD', 'movie', 0, NULL);
-- --- END op 1578

-- --- BEGIN op 1579 ( create custom_format "*Team SUPPLY" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Team SUPPLY', 'Film.2021.MULTi.1080p.WEB.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1579

-- --- BEGIN op 1580 ( create custom_format "*Team XSHD" )
insert into "custom_formats" ("name", "description") values ('*Team XSHD', '');
-- --- END op 1580

-- --- BEGIN op 1581 ( update custom_format "*Team XSHD" )
update "custom_formats" set "description" = 'Bonus attribué à la team XSHD, envers laquelle une confiance particulière a été établie. Le score dépasse l''écart de 600 points séparant x264 et x265, ce qui permet à une release XSHD en x264 de passer devant une x265 d''origine inconnue.

La détection porte sur le champ Release Group avec une regex ancrée, un boost de cette ampleur ne tolérant pas le faux positif.

Cette team n''est présente dans aucun CF de la biblio Trash, la regex est donc entièrement custom.' where "name" = '*Team XSHD' and "description" = '';
-- --- END op 1581

-- --- BEGIN op 1582 ( update custom_format "*Team XSHD" )
insert into "tags" ("name") values ('Teams') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('*Team XSHD', 'Teams');

insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('*Team XSHD', 'Sseh');
-- --- END op 1582

-- --- BEGIN op 1583 ( update custom_format "*Team XSHD" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Team XSHD', 'XSHD tag', 'release_group', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Team XSHD', 'XSHD tag', '*Team -XSHD');
-- --- END op 1583

-- --- BEGIN op 1584 ( create custom_format "*Team XSHD" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Team XSHD', 'Film.2021.MULTi.1080p.WEB.x264-XSHD', 'movie', 1, NULL);
-- --- END op 1584

-- --- BEGIN op 1585 ( create custom_format "*Team XSHD" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Team XSHD', 'Film.2021.MULTi.1080p.WEB.x264-XSHDTeam', 'movie', 0, NULL);
-- --- END op 1585

-- --- BEGIN op 1586 ( create custom_format "*Team XSHD" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Team XSHD', 'Film.2021.MULTi.1080p.WEB.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1586

-- --- BEGIN op 1587 ( create custom_format "*VFF" )
insert into "custom_formats" ("name", "description") values ('*VFF', '');
-- --- END op 1587

-- --- BEGIN op 1588 ( update custom_format "*VFF" )
update "custom_formats" set "description" = 'Détecte les releases en version française métropolitaine. Élargit le CF Trash `VFF`, restreint aux tags `TRUEFRENCH` et `VFF`, aux marqueurs génériques `FRENCH`, `VF` et `FR`, très majoritairement employés pour désigner une VFF sur les trackers français.

Ce CF est à zéro point et sert d''information en interactive search. La VFF étant la norme attendue, elle n''a pas à être gratifiée, seule la VFQ reçoit une pénalité.

L''élargissement rend le CF générique, il doit donc céder le pas à tous les détecteurs spécifiques, faute de quoi une release VFQ ou VOSTFR s''afficherait à tort comme VFF. Les conditions négatives écartent VF2, VFQ, VFI, VFB, VQ, VOQ et VOSTFR. `VOF` n''est pas exclu, version originale française et VFF désignant la même piste.

La condition `Not VFQ` pointe sur la regex `*Canadian French` et non sur la native. Cette dernière classe `MULTi.FRENCH` comme québécois, alors que cette forme désigne une VFF dans l''usage courant des trackers FR.' where "name" = '*VFF' and "description" = '';
-- --- END op 1588

-- --- BEGIN op 1589 ( update custom_format "*VFF" )
update "custom_formats" set "include_in_rename" = 1 where "name" = '*VFF' and "include_in_rename" = 0;
-- --- END op 1589

-- --- BEGIN op 1590 ( update custom_format "*VFF" )
insert into "tags" ("name") values ('Language') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('*VFF', 'Language');

insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('*VFF', 'Sseh');
-- --- END op 1590

-- --- BEGIN op 1591 ( update custom_format "*VFF" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*VFF', 'FRENCH | VF | FR', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*VFF', 'FRENCH | VF | FR', '*FRENCH | VF | FR');
-- --- END op 1591

-- --- BEGIN op 1592 ( update custom_format "*VFF" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*VFF', 'TRUEFRENCH | VFF', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*VFF', 'TRUEFRENCH | VFF', 'TRUEFRENCH');
-- --- END op 1592

-- --- BEGIN op 1593 ( update custom_format "*VFF" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*VFF', 'Not VF2', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*VFF', 'Not VF2', 'Not VF2');
-- --- END op 1593

-- --- BEGIN op 1594 ( update custom_format "*VFF" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*VFF', 'Not VFQ', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*VFF', 'Not VFQ', '*Canadian French');
-- --- END op 1594

-- --- BEGIN op 1595 ( update custom_format "*VFF" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*VFF', 'Not VFI', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*VFF', 'Not VFI', 'French International');
-- --- END op 1595

-- --- BEGIN op 1596 ( update custom_format "*VFF" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*VFF', 'Not VFB', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*VFF', 'Not VFB', 'Belgian French');
-- --- END op 1596

-- --- BEGIN op 1597 ( update custom_format "*VFF" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*VFF', 'Not VQ', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*VFF', 'Not VQ', 'Version Québécoise');
-- --- END op 1597

-- --- BEGIN op 1598 ( update custom_format "*VFF" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*VFF', 'Not VOQ', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*VFF', 'Not VOQ', 'Quebec Original Version');
-- --- END op 1598

-- --- BEGIN op 1599 ( update custom_format "*VFF" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*VFF', 'Not VOSTFR', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*VFF', 'Not VOSTFR', '*VOSTFR');
-- --- END op 1599

-- --- BEGIN op 1600 ( create custom_format "*VFF" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*VFF', 'Film.2021.FRENCH.1080p.BluRay.x264-GROUP', 'movie', 1, NULL);
-- --- END op 1600

-- --- BEGIN op 1601 ( create custom_format "*VFF" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*VFF', 'Film.2021.TRUEFRENCH.1080p.BluRay.x264-GROUP', 'movie', 1, NULL);
-- --- END op 1601

-- --- BEGIN op 1602 ( create custom_format "*VFF" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*VFF', 'Film.2021.VFF.1080p.WEB.x264-GROUP', 'movie', 1, NULL);
-- --- END op 1602

-- --- BEGIN op 1603 ( create custom_format "*VFF" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*VFF', 'Film.2021.VF.1080p.WEB.x264-GROUP', 'movie', 1, NULL);
-- --- END op 1603

-- --- BEGIN op 1604 ( create custom_format "*VFF" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*VFF', 'Film.2021.MULTi.FRENCH.1080p.WEB.x264-GROUP', 'movie', 1, NULL);
-- --- END op 1604

-- --- BEGIN op 1605 ( create custom_format "*VFF" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*VFF', 'Film.2021.VFQ.1080p.WEB.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1605

-- --- BEGIN op 1606 ( create custom_format "*VFF" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*VFF', 'Film.2021.MULTi.FRA.1080p.WEB.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1606

-- --- BEGIN op 1607 ( create custom_format "*VFF" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*VFF', 'Film.2021.VFI.1080p.WEB.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1607

-- --- BEGIN op 1608 ( create custom_format "*VFF" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*VFF', 'Film.2021.VF2.1080p.WEB.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1608

-- --- BEGIN op 1609 ( create custom_format "*VFF" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*VFF', 'Film.2021.VOST.FR.1080p.WEB.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1609

-- --- BEGIN op 1610 ( create custom_format "*VOSTFR" )
insert into "custom_formats" ("name", "description") values ('*VOSTFR', '');
-- --- END op 1610

-- --- BEGIN op 1611 ( update custom_format "*VOSTFR" )
update "custom_formats" set "description" = 'Détecte les releases en version originale sous-titrée en français, ainsi que les sous-titres intégrés signalés par `SUBFRENCH`.

Diffère du CF Trash `VOSTFR` par une regex resserrée. La native `\b(VOST.*?FR(E|A)?)\b` autorise n''importe quelle distance entre `VOST` et `FR`, et matche donc par pontage sur un titre comme `Film.VOST.2021.MULTi.FRENCH.1080p`. La version custom borne cette distance aux seuls séparateurs et couvre en outre la forme `VOSTF`.

La condition `Not MULTi` écarte les releases multilingues, dans lesquelles le tag VOSTFR signale des sous-titres accompagnant une piste française et non une absence de doublage.' where "name" = '*VOSTFR' and "description" = '';
-- --- END op 1611

-- --- BEGIN op 1612 ( update custom_format "*VOSTFR" )
update "custom_formats" set "include_in_rename" = 1 where "name" = '*VOSTFR' and "include_in_rename" = 0;
-- --- END op 1612

-- --- BEGIN op 1613 ( update custom_format "*VOSTFR" )
insert into "tags" ("name") values ('Language') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('*VOSTFR', 'Language');

insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('*VOSTFR', 'Sseh');
-- --- END op 1613

-- --- BEGIN op 1614 ( update custom_format "*VOSTFR" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*VOSTFR', 'VOSTFR (incl. VOSTF)', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*VOSTFR', 'VOSTFR (incl. VOSTF)', '*VOSTFR');
-- --- END op 1614

-- --- BEGIN op 1615 ( update custom_format "*VOSTFR" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*VOSTFR', 'SUBFRENCH', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*VOSTFR', 'SUBFRENCH', 'SUBFRENCH');
-- --- END op 1615

-- --- BEGIN op 1616 ( update custom_format "*VOSTFR" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*VOSTFR', 'Not MULTi', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*VOSTFR', 'Not MULTi', '*MULTi');
-- --- END op 1616

-- --- BEGIN op 1617 ( create custom_format "*VOSTFR" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*VOSTFR', 'Movie.2021.VOSTFR.1080p.WEB.x264-GROUP', 'movie', 1, NULL);
-- --- END op 1617

-- --- BEGIN op 1618 ( create custom_format "*VOSTFR" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*VOSTFR', 'Movie.2021.VOSTF.1080p.WEB.x264-GROUP', 'movie', 1, NULL);
-- --- END op 1618

-- --- BEGIN op 1619 ( create custom_format "*VOSTFR" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*VOSTFR', 'Movie.2021.VOST.FR.1080p.WEB.x264-GROUP', 'movie', 1, NULL);
-- --- END op 1619

-- --- BEGIN op 1620 ( create custom_format "*VOSTFR" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*VOSTFR', 'Movie.2021.VOST-FRE.1080p.WEB.x264-GROUP', 'movie', 1, NULL);
-- --- END op 1620

-- --- BEGIN op 1621 ( create custom_format "*VOSTFR" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*VOSTFR', 'Movie.2021.SUBFRENCH.1080p.WEB.x264-GROUP', 'movie', 1, NULL);
-- --- END op 1621

-- --- BEGIN op 1622 ( create custom_format "*VOSTFR" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*VOSTFR', 'Movie.2021.MULTi.VOSTFR.1080p.WEB.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1622

-- --- BEGIN op 1623 ( create custom_format "*VOSTFR" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*VOSTFR', 'Movie.2021.VOSTA.1080p.WEB.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1623

-- --- BEGIN op 1624 ( create custom_format "*VOSTFR" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*VOSTFR', 'Movie.2021.MULTi.1080p.WEB.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1624

-- --- BEGIN op 1625 ( create regular_expression "*VOSTFR | SUBFRENCH" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('*VOSTFR | SUBFRENCH', '(?i)\b(?:VOST(?:[ ._-]*FR(?:E|A)?|F)|SUBFR(?:A|ENCH)?)\b', 'Fusion des regex `*VOSTFR` et `SUBFRENCH`, destinée à supprimer toute condition `Required = OFF` du CF `*VOSTFR`. Le comportement des conditions non requises diverge entre Radarr et le moteur de test de Profilarr. Toute modification de `*VOSTFR` doit être répercutée ici.', NULL);

insert into "tags" ("name") values ('Language') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*VOSTFR | SUBFRENCH', 'Language');

insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*VOSTFR | SUBFRENCH', 'Sseh');
-- --- END op 1625

-- --- BEGIN op 1626 ( update custom_format "*VOSTFR" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '*VOSTFR'
	  AND name = 'SUBFRENCH'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1626

-- --- BEGIN op 1627 ( update custom_format "*VOSTFR" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '*VOSTFR'
	  AND name = 'VOSTFR (incl. VOSTF)'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1627

-- --- BEGIN op 1628 ( update custom_format "*VOSTFR" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*VOSTFR', 'VOSTFR ou SUBFRENCH', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*VOSTFR', 'VOSTFR ou SUBFRENCH', '*VOSTFR | SUBFRENCH');
-- --- END op 1628

-- --- BEGIN op 1629 ( create custom_format "*VFF" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*VFF', 'Film.2021.1080p.BluRay.x264-GROUP', 'movie', 0, NULL);
-- --- END op 1629

-- --- BEGIN op 1630 ( create regular_expression "*FRENCH | VF | FR | TRUEFRENCH | VFF" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('*FRENCH | VF | FR | TRUEFRENCH | VFF', '(?i)\b(FRENCH|TRUEFRENCH|VFF|VF|FR)\b', 'Fusion de la regex `*FRENCH | VF | FR` et de la regex Trash `TRUEFRENCH`, destinée à supprimer toute condition `Required = OFF` du CF `*VFF`. Le comportement des conditions non requises diverge entre Radarr et le moteur de test de Profilarr. Correspond au pattern d''origine du CF dans Radarr.', NULL);

insert into "tags" ("name") values ('Language') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*FRENCH | VF | FR | TRUEFRENCH | VFF', 'Language');

insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*FRENCH | VF | FR | TRUEFRENCH | VFF', 'Sseh');
-- --- END op 1630

-- --- BEGIN op 1631 ( update custom_format "*VFF" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '*VFF'
	  AND name = 'FRENCH | VF | FR'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1631

-- --- BEGIN op 1632 ( update custom_format "*VFF" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '*VFF'
	  AND name = 'TRUEFRENCH | VFF'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1632

-- --- BEGIN op 1633 ( update custom_format "*VFF" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*VFF', 'FRENCH | VF | FR | TRUEFRENCH | VFF', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*VFF', 'FRENCH | VF | FR | TRUEFRENCH | VFF', '*FRENCH | VF | FR | TRUEFRENCH | VFF');
-- --- END op 1633

-- --- BEGIN op 1634 ( create regular_expression "*Criterion | CC" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('*Criterion | CC', '\b(Criterion|CC)\b', NULL, NULL);

insert into "tags" ("name") values ('Edition') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*Criterion | CC', 'Edition');

insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*Criterion | CC', 'Sseh');
-- --- END op 1634

-- --- BEGIN op 1635 ( update custom_format "*Criterion Collection" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '*Criterion Collection'
	  AND name = 'CC'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1635

-- --- BEGIN op 1636 ( update custom_format "*Criterion Collection" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '*Criterion Collection'
	  AND name = 'Criterion'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1636

-- --- BEGIN op 1637 ( update custom_format "*Criterion Collection" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Criterion Collection', 'Criterion ou CC', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Criterion Collection', 'Criterion ou CC', '*Criterion | CC');
-- --- END op 1637

-- --- BEGIN op 1638 ( update custom_format "*No tag - Audio" )
DELETE FROM condition_patterns WHERE custom_format_name = '*No tag - Audio' AND condition_name = 'Not DTS-ES' AND regular_expression_name = 'DTS-ES';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*No tag - Audio', 'Not DTS-ES', 'Not DTS-ES');
-- --- END op 1638

-- --- BEGIN op 1639 ( update custom_format "*No tag - Audio" )
DELETE FROM condition_patterns WHERE custom_format_name = '*No tag - Audio' AND condition_name = 'Not DTS-HD HRA' AND regular_expression_name = 'DTS-HD HRA';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*No tag - Audio', 'Not DTS-HD HRA', 'Not DTS-HD HRA/ES');
-- --- END op 1639

-- --- BEGIN op 1640 ( update regular_expression "*MULTISUB" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = '*MULTISUB' AND tag_name = 'Seeh';

insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*MULTISUB', 'Sseh');
-- --- END op 1640

-- --- BEGIN op 1641 ( update regular_expression "*Criterion | CC" )
update "regular_expressions" set "description" = 'Fusion des regex Trash `Criterion` et `CC`, destinée à supprimer toute condition `Required = OFF` du CF `*Criterion Collection`. 
Le comportement des conditions non requises diverge entre Radarr et le moteur de test de Profilarr.' where "name" = '*Criterion | CC' and "description" is null;
-- --- END op 1641

-- --- BEGIN op 1642 ( update custom_format "*Notag - x264 x265" )
update "custom_formats" set "description" = 'Se déclenche lorsque aucun codec vidéo n''est identifiable dans le nom de la release. Attribue alors le score du CF `x264`, hypothèse la plus prudente puisque le x264 reste le codec par défaut des releases mal nommées.

Répond au non-respect fréquent des conventions de nommage sur les trackers français, où l''absence de tag codec ne signifie pas l''absence de codec.

Les six conditions de titre couvrent AVC, HEVC, VVC, AV1, VC-1 et MPEG2, ce qui rend le CF exclusif de `x264`, `x265` et du CF Trash `AV1`. La condition `Not Remux` reprend celle des CF `x264` et `x265` de Trash, afin qu''un remux ne reçoive jamais de points de codec, qu''il déclare ou non son codec dans son nom.

Les codecs anciens comme XviD et DivX ne sont pas couverts et seront traités comme du x264.' where "name" = '*Notag x264 x265' and "description" = 'Se déclenche lorsque aucun codec vidéo n''est identifiable dans le nom de la release. Attribue alors le score du CF `*x264`, hypothèse la plus prudente puisque le x264 reste le codec par défaut des releases mal nommées.

Répond au non-respect fréquent des conventions de nommage sur les trackers français, où l''absence de tag codec ne signifie pas l''absence de codec.

Les six conditions de titre couvrent AVC, HEVC, VVC, AV1, VC-1 et MPEG2, ce qui rend le CF exclusif de `*x264`, `*x265` et du CF Trash `AV1`. La condition `Not Remux` reprend celle des CF `x264` et `x265` de Trash, afin qu''un remux ne reçoive jamais de points de codec, qu''il déclare ou non son codec dans son nom.

Les codecs anciens comme XviD et DivX ne sont pas couverts et seront traités comme du x264.';
-- --- END op 1642

-- --- BEGIN op 1643 ( update custom_format "*Notag - x264 x265" )
update "custom_formats" set "name" = '*Notag - x264 x265' where "name" = '*Notag x264 x265';
-- --- END op 1643
