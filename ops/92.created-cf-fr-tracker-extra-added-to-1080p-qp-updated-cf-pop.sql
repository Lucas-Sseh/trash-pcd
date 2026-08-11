-- @operation: export
-- @entity: batch
-- @name: Created CF Fr Tracker extra | Added to 1080p QP | Updated CF PopHD Description
-- @exportedAt: 2026-08-11T13:11:03.899Z
-- @opIds: 2265, 2266, 2267, 2268, 2269, 2270, 2271, 2272, 2273, 2274, 2275, 2276, 2277, 2278, 2279, 2280, 2281, 2282, 2283, 2284, 2285, 2286, 2287, 2288, 2289, 2290, 2291, 2292, 2293, 2294, 2295, 2296, 2297, 2298, 2299, 2300, 2301, 2302, 2303

-- --- BEGIN op 2265 ( update quality_profile "Multi.VO - 1080p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND custom_format_name = '*FR Scene Groups'
  AND arr_type = 'radarr'
  AND score = 0;
-- --- END op 2265

-- --- BEGIN op 2266 ( update quality_profile "Multi.VO - 1080p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND custom_format_name = '*FR Scene Groups'
  AND arr_type = 'sonarr'
  AND score = 0;
-- --- END op 2266

-- --- BEGIN op 2267 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'FR Scene Groups', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'FR Scene Groups'
    AND arr_type = 'radarr'
);
-- --- END op 2267

-- --- BEGIN op 2268 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'FR Scene Groups', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'FR Scene Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 2268

-- --- BEGIN op 2269 ( update custom_format "*FR Scene Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '*FR Scene Groups'
	  AND name = '#'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2269

-- --- BEGIN op 2270 ( update custom_format "*FR Scene Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '*FR Scene Groups'
	  AND name = 'A (Radarr)'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2270

-- --- BEGIN op 2271 ( update custom_format "*FR Scene Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '*FR Scene Groups'
	  AND name = 'A (Sonarr)'
	  AND type = 'release_group'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2271

-- --- BEGIN op 2272 ( update custom_format "*FR Scene Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '*FR Scene Groups'
	  AND name = 'B'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2272

-- --- BEGIN op 2273 ( update custom_format "*FR Scene Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '*FR Scene Groups'
	  AND name = 'C'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2273

-- --- BEGIN op 2274 ( update custom_format "*FR Scene Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '*FR Scene Groups'
	  AND name = 'D'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2274

-- --- BEGIN op 2275 ( update custom_format "*FR Scene Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '*FR Scene Groups'
	  AND name = 'E'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2275

-- --- BEGIN op 2276 ( update custom_format "*FR Scene Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '*FR Scene Groups'
	  AND name = 'F'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2276

-- --- BEGIN op 2277 ( update custom_format "*FR Scene Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '*FR Scene Groups'
	  AND name = 'G'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2277

-- --- BEGIN op 2278 ( update custom_format "*FR Scene Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '*FR Scene Groups'
	  AND name = 'H'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2278

-- --- BEGIN op 2279 ( update custom_format "*FR Scene Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '*FR Scene Groups'
	  AND name = 'J'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2279

-- --- BEGIN op 2280 ( update custom_format "*FR Scene Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '*FR Scene Groups'
	  AND name = 'K'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2280

-- --- BEGIN op 2281 ( update custom_format "*FR Scene Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '*FR Scene Groups'
	  AND name = 'L'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2281

-- --- BEGIN op 2282 ( update custom_format "*FR Scene Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '*FR Scene Groups'
	  AND name = 'M'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2282

-- --- BEGIN op 2283 ( update custom_format "*FR Scene Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '*FR Scene Groups'
	  AND name = 'N (Radarr)'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2283

-- --- BEGIN op 2284 ( update custom_format "*FR Scene Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '*FR Scene Groups'
	  AND name = 'N (Sonarr)'
	  AND type = 'release_group'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2284

-- --- BEGIN op 2285 ( update custom_format "*FR Scene Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '*FR Scene Groups'
	  AND name = 'O'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2285

-- --- BEGIN op 2286 ( update custom_format "*FR Scene Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '*FR Scene Groups'
	  AND name = 'P (Radarr)'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2286

-- --- BEGIN op 2287 ( update custom_format "*FR Scene Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '*FR Scene Groups'
	  AND name = 'P (Sonarr)'
	  AND type = 'release_group'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2287

-- --- BEGIN op 2288 ( update custom_format "*FR Scene Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '*FR Scene Groups'
	  AND name = 'R'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2288

-- --- BEGIN op 2289 ( update custom_format "*FR Scene Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '*FR Scene Groups'
	  AND name = 'S (Radarr)'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2289

-- --- BEGIN op 2290 ( update custom_format "*FR Scene Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '*FR Scene Groups'
	  AND name = 'S (Sonarr)'
	  AND type = 'release_group'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2290

-- --- BEGIN op 2291 ( update custom_format "*FR Scene Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '*FR Scene Groups'
	  AND name = 'T'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2291

-- --- BEGIN op 2292 ( update custom_format "*FR Scene Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '*FR Scene Groups'
	  AND name = 'U (Radarr)'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2292

-- --- BEGIN op 2293 ( update custom_format "*FR Scene Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '*FR Scene Groups'
	  AND name = 'U (Sonarr)'
	  AND type = 'release_group'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2293

-- --- BEGIN op 2294 ( update custom_format "*FR Scene Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '*FR Scene Groups'
	  AND name = 'V'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2294

-- --- BEGIN op 2295 ( update custom_format "*FR Scene Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '*FR Scene Groups'
	  AND name = 'W'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2295

-- --- BEGIN op 2296 ( update custom_format "*FR Scene Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '*FR Scene Groups'
	  AND name = 'Z'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2296

-- --- BEGIN op 2297 ( delete custom_format "*FR Scene Groups" )
DELETE FROM custom_format_tests
WHERE custom_format_name = '*FR Scene Groups'
  AND title = 'Film.2021.MULTi.1080p.BluRay.x264-SHiNiGAMiUHD'
  AND type = 'movie'
  AND should_match = 1
  AND description IS NULL;
-- --- END op 2297

-- --- BEGIN op 2298 ( delete custom_format "*FR Scene Groups" )
DELETE FROM custom_format_tests
WHERE custom_format_name = '*FR Scene Groups'
  AND title = 'Film.2021.MULTi.1080p.BluRay.x264-CARAPiLS'
  AND type = 'movie'
  AND should_match = 1
  AND description IS NULL;
-- --- END op 2298

-- --- BEGIN op 2299 ( update custom_format "*FR Tracker Extra Groups" )
update "custom_formats" set "description" = 'Add YGG and Sharewood internal teams' where "name" = '*FR Scene Groups' and "description" = '**FR Scene Groups**

Known French Scene groups.

+Add YGG and Sharewood internal teams';
-- --- END op 2299

-- --- BEGIN op 2300 ( update custom_format "*FR Tracker Extra Groups" )
update "custom_formats" set "name" = '*FR Tracker Extra Groups' where "name" = '*FR Scene Groups';
-- --- END op 2300

-- --- BEGIN op 2301 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '*FR Tracker Extra Groups', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '*FR Tracker Extra Groups'
    AND arr_type = 'radarr'
);
-- --- END op 2301

-- --- BEGIN op 2302 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '*FR Tracker Extra Groups', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '*FR Tracker Extra Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 2302

-- --- BEGIN op 2303 ( update custom_format "*Team PopHD" )
update "custom_formats" set "description" = 'Bonus attribué à la team PopHD, envers laquelle une confiance particulière a été établie. Le score dépasse l''écart de 600 points séparant x264 et x265, ce qui permet à une release PopHD en x264 de passer devant une x265 d''origine inconnue.

La détection porte sur le champ Release Group avec une regex ancrée, un boost de cette ampleur ne tolérant pas le faux positif.

Doublon assumé avec `*FR Tracker Extra Groups`, qui contient également PopHD via la liste des teams internes Sharewood mais reste à zéro point et sert uniquement d''information en interactive search' where "name" = '*Team PopHD' and "description" = 'Bonus attribué à la team PopHD, envers laquelle une confiance particulière a été établie. Le score dépasse l''écart de 600 points séparant x264 et x265, ce qui permet à une release PopHD en x264 de passer devant une x265 d''origine inconnue.

La détection porte sur le champ Release Group avec une regex ancrée, un boost de cette ampleur ne tolérant pas le faux positif.

Doublon assumé avec `*FR Scene Groups`, qui contient également PopHD via la liste des teams internes Sharewood mais reste à zéro point et sert uniquement d''information en interactive search.';
-- --- END op 2303
