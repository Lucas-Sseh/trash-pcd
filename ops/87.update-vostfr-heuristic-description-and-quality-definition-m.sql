-- @operation: export
-- @entity: batch
-- @name: Update VOSTFR heuristic description and Quality Definition minimum sizes
-- @exportedAt: 2026-08-11T09:32:29.971Z
-- @opIds: 2202, 2203, 2204, 2205, 2206, 2207, 2208, 2209, 2210, 2211, 2212, 2213, 2214, 2215, 2216, 2217, 2218, 2219, 2220, 2221, 2222, 2223, 2224, 2225, 2226, 2227, 2228, 2229, 2230, 2231, 2232, 2233, 2234, 2235, 2236, 2237, 2238

-- --- BEGIN op 2202 ( update custom_format "*No tag - VOSTFR" )
update "custom_formats" set "description" = 'Attribue le score `VOSTFR` aux releases dépourvues de piste audio française lorsque aucun marqueur de version n''apparaît dans le nom. Sur les trackers francophones utilisés pour les recherches automatiques et le RSS, une release en langue originale non française sans mention de doublage est présumée contenir des sous-titres français, conformément aux règles de publication de ces trackers.
Le CF reçoit donc volontairement le même score que `*VOSTFR`.
Cette heuristique est conçue pour les trackers francophones. Lors d''une recherche interactive incluant des indexers internationaux, elle peut produire des faux positifs : une release VO sans tag de langue peut être identifiée comme `VOSTFR` alors qu''elle ne contient pas de sous-titres français. Cette limitation est acceptée afin de préserver le comportement correct des recherches automatiques.' where "name" = '*No tag - VOSTFR' and "description" = 'Attribue le score VOSTFR aux releases dépourvues de piste audio française lorsque aucun marqueur de version n''apparaît dans le nom. Sur un tracker français, une release sans mention de doublage est présumée sous-titrée.

Complémentaire de `*No tag - VFF`, qui traite le cas symétrique des films de langue originale française. Les deux CF se partagent l''ensemble des releases sans tag, selon la langue du film.

Les conditions de titre écartent tous les marqueurs de version française, ainsi que `MULTi`, `VOSTFR` et `SUBFRENCH`. Elles doublent volontairement la condition de langue afin que le CF ne dépende pas du parser de Radarr, dont la couverture des formes rares comme `VFB` ou `VOQ` n''est pas garantie.';
-- --- END op 2202

-- --- BEGIN op 2203 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 10, "max_size" = 128, "preferred_size" = 60 where "name" = '*Default-Sseh' and "quality_name" = 'Bluray-1080p' and "min_size" = 0 and "max_size" = 128 and "preferred_size" = 60;
-- --- END op 2203

-- --- BEGIN op 2204 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 45, "max_size" = 300, "preferred_size" = 120 where "name" = '*Default-Sseh' and "quality_name" = 'Bluray-2160p' and "min_size" = 0 and "max_size" = 300 and "preferred_size" = 120;
-- --- END op 2204

-- --- BEGIN op 2205 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 20, "max_size" = 128, "preferred_size" = 60 where "name" = '*Default-Sseh' and "quality_name" = 'HDTV-1080p' and "min_size" = 0 and "max_size" = 128 and "preferred_size" = 60;
-- --- END op 2205

-- --- BEGIN op 2206 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 45, "max_size" = 300, "preferred_size" = 120 where "name" = '*Default-Sseh' and "quality_name" = 'HDTV-2160p' and "min_size" = 0 and "max_size" = 300 and "preferred_size" = 120;
-- --- END op 2206

-- --- BEGIN op 2207 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 20, "max_size" = 0, "preferred_size" = 250 where "name" = '*Default-Sseh' and "quality_name" = 'Remux-1080p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 250;
-- --- END op 2207

-- --- BEGIN op 2208 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 45, "max_size" = 0, "preferred_size" = 500 where "name" = '*Default-Sseh' and "quality_name" = 'Remux-2160p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 500;
-- --- END op 2208

-- --- BEGIN op 2209 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 20, "max_size" = 128, "preferred_size" = 60 where "name" = '*Default-Sseh' and "quality_name" = 'WEBDL-1080p' and "min_size" = 0 and "max_size" = 128 and "preferred_size" = 60;
-- --- END op 2209

-- --- BEGIN op 2210 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 45, "max_size" = 300, "preferred_size" = 120 where "name" = '*Default-Sseh' and "quality_name" = 'WEBDL-2160p' and "min_size" = 0 and "max_size" = 300 and "preferred_size" = 120;
-- --- END op 2210

-- --- BEGIN op 2211 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 20, "max_size" = 128, "preferred_size" = 60 where "name" = '*Default-Sseh' and "quality_name" = 'WEBRip-1080p' and "min_size" = 0 and "max_size" = 128 and "preferred_size" = 60;
-- --- END op 2211

-- --- BEGIN op 2212 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 45, "max_size" = 300, "preferred_size" = 120 where "name" = '*Default-Sseh' and "quality_name" = 'WEBRip-2160p' and "min_size" = 0 and "max_size" = 300 and "preferred_size" = 120;
-- --- END op 2212

-- --- BEGIN op 2213 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 17, "max_size" = 128, "preferred_size" = 60 where "name" = '*Default-Sseh' and "quality_name" = 'Bluray-1080p' and "min_size" = 10 and "max_size" = 128 and "preferred_size" = 60;
-- --- END op 2213

-- --- BEGIN op 2214 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 10, "max_size" = 65, "preferred_size" = 40 where "name" = '*Default-Sseh' and "quality_name" = 'Bluray-720p' and "min_size" = 0 and "max_size" = 65 and "preferred_size" = 40;
-- --- END op 2214

-- --- BEGIN op 2215 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 17, "max_size" = 128, "preferred_size" = 60 where "name" = '*Default-Sseh' and "quality_name" = 'HDTV-1080p' and "min_size" = 20 and "max_size" = 128 and "preferred_size" = 60;
-- --- END op 2215

-- --- BEGIN op 2216 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 10, "max_size" = 65, "preferred_size" = 40 where "name" = '*Default-Sseh' and "quality_name" = 'HDTV-720p' and "min_size" = 0 and "max_size" = 65 and "preferred_size" = 40;
-- --- END op 2216

-- --- BEGIN op 2217 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 17, "max_size" = 0, "preferred_size" = 250 where "name" = '*Default-Sseh' and "quality_name" = 'Remux-1080p' and "min_size" = 20 and "max_size" = 0 and "preferred_size" = 250;
-- --- END op 2217

-- --- BEGIN op 2218 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 17, "max_size" = 128, "preferred_size" = 60 where "name" = '*Default-Sseh' and "quality_name" = 'WEBDL-1080p' and "min_size" = 20 and "max_size" = 128 and "preferred_size" = 60;
-- --- END op 2218

-- --- BEGIN op 2219 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 10, "max_size" = 65, "preferred_size" = 40 where "name" = '*Default-Sseh' and "quality_name" = 'WEBDL-720p' and "min_size" = 0 and "max_size" = 65 and "preferred_size" = 40;
-- --- END op 2219

-- --- BEGIN op 2220 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 17, "max_size" = 128, "preferred_size" = 60 where "name" = '*Default-Sseh' and "quality_name" = 'WEBRip-1080p' and "min_size" = 20 and "max_size" = 128 and "preferred_size" = 60;
-- --- END op 2220

-- --- BEGIN op 2221 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 10, "max_size" = 65, "preferred_size" = 40 where "name" = '*Default-Sseh' and "quality_name" = 'WEBRip-720p' and "min_size" = 0 and "max_size" = 65 and "preferred_size" = 40;
-- --- END op 2221

-- --- BEGIN op 2222 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 100, "max_size" = 0, "preferred_size" = 200 where "name" = '*Default-Sseh' and "quality_name" = 'BR-DISK' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 200;
-- --- END op 2222

-- --- BEGIN op 2223 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 5, "max_size" = 70, "preferred_size" = 30 where "name" = '*Default-Sseh' and "quality_name" = 'Bluray-480p' and "min_size" = 0 and "max_size" = 70 and "preferred_size" = 30;
-- --- END op 2223

-- --- BEGIN op 2224 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 5, "max_size" = 80, "preferred_size" = 35 where "name" = '*Default-Sseh' and "quality_name" = 'Bluray-576p' and "min_size" = 0 and "max_size" = 80 and "preferred_size" = 35;
-- --- END op 2224

-- --- BEGIN op 2225 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 5, "max_size" = 30, "preferred_size" = 10 where "name" = '*Default-Sseh' and "quality_name" = 'CAM' and "min_size" = 0 and "max_size" = 30 and "preferred_size" = 10;
-- --- END op 2225

-- --- BEGIN op 2226 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 5, "max_size" = 70, "preferred_size" = 30 where "name" = '*Default-Sseh' and "quality_name" = 'DVD' and "min_size" = 0 and "max_size" = 70 and "preferred_size" = 30;
-- --- END op 2226

-- --- BEGIN op 2227 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 5, "max_size" = 100, "preferred_size" = 40 where "name" = '*Default-Sseh' and "quality_name" = 'DVD-R' and "min_size" = 0 and "max_size" = 100 and "preferred_size" = 40;
-- --- END op 2227

-- --- BEGIN op 2228 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 5, "max_size" = 70, "preferred_size" = 30 where "name" = '*Default-Sseh' and "quality_name" = 'DVDSCR' and "min_size" = 0 and "max_size" = 70 and "preferred_size" = 30;
-- --- END op 2228

-- --- BEGIN op 2229 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 5, "max_size" = 80, "preferred_size" = 35 where "name" = '*Default-Sseh' and "quality_name" = 'REGIONAL' and "min_size" = 0 and "max_size" = 80 and "preferred_size" = 35;
-- --- END op 2229

-- --- BEGIN op 2230 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 50, "max_size" = 0, "preferred_size" = 150 where "name" = '*Default-Sseh' and "quality_name" = 'Raw-HD' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 150;
-- --- END op 2230

-- --- BEGIN op 2231 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 100, "max_size" = 0, "preferred_size" = 250 where "name" = '*Default-Sseh' and "quality_name" = 'Remux-1080p' and "min_size" = 17 and "max_size" = 0 and "preferred_size" = 250;
-- --- END op 2231

-- --- BEGIN op 2232 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 185, "max_size" = 0, "preferred_size" = 500 where "name" = '*Default-Sseh' and "quality_name" = 'Remux-2160p' and "min_size" = 45 and "max_size" = 0 and "preferred_size" = 500;
-- --- END op 2232

-- --- BEGIN op 2233 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 5, "max_size" = 50, "preferred_size" = 20 where "name" = '*Default-Sseh' and "quality_name" = 'SDTV' and "min_size" = 0 and "max_size" = 50 and "preferred_size" = 20;
-- --- END op 2233

-- --- BEGIN op 2234 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 5, "max_size" = 50, "preferred_size" = 20 where "name" = '*Default-Sseh' and "quality_name" = 'TELECINE' and "min_size" = 0 and "max_size" = 50 and "preferred_size" = 20;
-- --- END op 2234

-- --- BEGIN op 2235 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 5, "max_size" = 40, "preferred_size" = 15 where "name" = '*Default-Sseh' and "quality_name" = 'TELESYNC' and "min_size" = 0 and "max_size" = 40 and "preferred_size" = 15;
-- --- END op 2235

-- --- BEGIN op 2236 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 5, "max_size" = 60, "preferred_size" = 25 where "name" = '*Default-Sseh' and "quality_name" = 'WEBDL-480p' and "min_size" = 0 and "max_size" = 60 and "preferred_size" = 25;
-- --- END op 2236

-- --- BEGIN op 2237 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 5, "max_size" = 60, "preferred_size" = 25 where "name" = '*Default-Sseh' and "quality_name" = 'WEBRip-480p' and "min_size" = 0 and "max_size" = 60 and "preferred_size" = 25;
-- --- END op 2237

-- --- BEGIN op 2238 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 5, "max_size" = 60, "preferred_size" = 20 where "name" = '*Default-Sseh' and "quality_name" = 'WORKPRINT' and "min_size" = 0 and "max_size" = 60 and "preferred_size" = 20;
-- --- END op 2238
