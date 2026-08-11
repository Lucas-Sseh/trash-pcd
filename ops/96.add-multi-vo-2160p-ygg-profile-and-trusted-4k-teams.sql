-- @operation: export
-- @entity: batch
-- @name: Add Multi.VO 2160p YGG profile and trusted 4K teams
-- @exportedAt: 2026-08-11T20:51:02.215Z
-- @opIds: 2316, 2317, 2318, 2319, 2320, 2321, 2322, 2323, 2324, 2325, 2326, 2327, 2328, 2329, 2330, 2331, 2332, 2333, 2334, 2335, 2336, 2337, 2338, 2339, 2340, 2341, 2342, 2343, 2344, 2345, 2346, 2347, 2348, 2349, 2350, 2351, 2352, 2353, 2354, 2355, 2356, 2357, 2358, 2359, 2360, 2361, 2362, 2363, 2364, 2365, 2366, 2367, 2368, 2369, 2370, 2371, 2372, 2373, 2374, 2375, 2376, 2377, 2378, 2379, 2380, 2381, 2382, 2383, 2384, 2385, 2386, 2387, 2388, 2389, 2390, 2391, 2392, 2393, 2394, 2395, 2396, 2397, 2398, 2399, 2400, 2401, 2402, 2403, 2404, 2405, 2406, 2407, 2408, 2409, 2410, 2411, 2412, 2413, 2414, 2415, 2416, 2417, 2418, 2419, 2420, 2421, 2422, 2423, 2424, 2425, 2426, 2427, 2428, 2429, 2430, 2431, 2432, 2433, 2434, 2435, 2436, 2437, 2438, 2439, 2440, 2441, 2442, 2443, 2444, 2445, 2446, 2447, 2448, 2449, 2450, 2451, 2452, 2453, 2454, 2455, 2456, 2457, 2458, 2459, 2460, 2461, 2462, 2463, 2464, 2465, 2466, 2467, 2468, 2469, 2470, 2471, 2472, 2473, 2474, 2475, 2476, 2477, 2478, 2479, 2480, 2481, 2482, 2483, 2484, 2485, 2486, 2487, 2488, 2489, 2490, 2491, 2492, 2493, 2494, 2495, 2496, 2497, 2498, 2499, 2500, 2501, 2502, 2503, 2504, 2505, 2506, 2507, 2508, 2509, 2510, 2511, 2512, 2513, 2514, 2515, 2516, 2517, 2518, 2519, 2520, 2521, 2522, 2523, 2524, 2525, 2526, 2527, 2528, 2529, 2530, 2531, 2532, 2533, 2534, 2535, 2536, 2537, 2538, 2539, 2540, 2541, 2542, 2543, 2544, 2545, 2546, 2547, 2548, 2549, 2550, 2551, 2552, 2553, 2554, 2555, 2556, 2557, 2558, 2559, 2560, 2561, 2562, 2563, 2564, 2565, 2566, 2567, 2568, 2569, 2570, 2571, 2572, 2573, 2574, 2575, 2576, 2577, 2578, 2579, 2580, 2581, 2582, 2583, 2584, 2585, 2586, 2587, 2588, 2589, 2590, 2591, 2592, 2593, 2594, 2595, 2596, 2597, 2598, 2599, 2600, 2601, 2602, 2603, 2604, 2605, 2606, 2607, 2608, 2609, 2610, 2611, 2612, 2613, 2614, 2615, 2616, 2617, 2618, 2619, 2620, 2621, 2622, 2623, 2624, 2625, 2626, 2627, 2628, 2629, 2630, 2631, 2632, 2633, 2634, 2635, 2636, 2637, 2638, 2639, 2640, 2641, 2642, 2643, 2644, 2645, 2646, 2647, 2648, 2649, 2650, 2651, 2652, 2653, 2654, 2655, 2656, 2657, 2658, 2659, 2660, 2661, 2662, 2663, 2664, 2665, 2666, 2667, 2668, 2669, 2670, 2671, 2672, 2673, 2674, 2675, 2676, 2677, 2678, 2679, 2680, 2681, 2682, 2683, 2684, 2685

-- --- BEGIN op 2316 ( create quality_profile "Multi.VO - 2160p - YGG" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('Multi.VO - 2160p - YGG', 'French Quality Profile that covers:
- WEBDL: 1080p, 2160p
- Bluray: 2160p
- Remux: 1080p', 1, 0, 0, 1);

insert into "tags" ("name") values ('French') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Multi.VO - 2160p - YGG', 'French');

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Multi.VO - 2160p - YGG', 'Bluray|WEB 2160p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Multi.VO - 2160p - YGG', 'Bluray|WEB 2160p', 'Bluray-2160p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Multi.VO - 2160p - YGG', 'Bluray|WEB 2160p', 'WEBRip-2160p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Multi.VO - 2160p - YGG', 'Bluray|WEB 2160p', 'WEBDL-2160p', 2);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Multi.VO - 2160p - YGG', NULL, 'Bluray|WEB 2160p', 0, 1, 1);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Multi.VO - 2160p - YGG', 'Remux-1080p', NULL, 1, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Multi.VO - 2160p - YGG', 'Raw-HD', NULL, 2, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Multi.VO - 2160p - YGG', 'BR-DISK', NULL, 3, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Multi.VO - 2160p - YGG', 'Remux-2160p', NULL, 4, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Multi.VO - 2160p - YGG', 'HDTV-2160p', NULL, 5, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Multi.VO - 2160p - YGG', 'Bluray-1080p', NULL, 6, 0, 0);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Multi.VO - 2160p - YGG', 'WEB 1080p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Multi.VO - 2160p - YGG', 'WEB 1080p', 'WEBRip-1080p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Multi.VO - 2160p - YGG', 'WEB 1080p', 'WEBDL-1080p', 1);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Multi.VO - 2160p - YGG', NULL, 'WEB 1080p', 7, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Multi.VO - 2160p - YGG', 'HDTV-1080p', NULL, 8, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Multi.VO - 2160p - YGG', 'Bluray-720p', NULL, 9, 0, 0);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Multi.VO - 2160p - YGG', 'WEB 720p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Multi.VO - 2160p - YGG', 'WEB 720p', 'WEBRip-720p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Multi.VO - 2160p - YGG', 'WEB 720p', 'WEBDL-720p', 1);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Multi.VO - 2160p - YGG', NULL, 'WEB 720p', 10, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Multi.VO - 2160p - YGG', 'HDTV-720p', NULL, 11, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Multi.VO - 2160p - YGG', 'Bluray-576p', NULL, 12, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Multi.VO - 2160p - YGG', 'Bluray-480p', NULL, 13, 0, 0);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Multi.VO - 2160p - YGG', 'WEB 480p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Multi.VO - 2160p - YGG', 'WEB 480p', 'WEBRip-480p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Multi.VO - 2160p - YGG', 'WEB 480p', 'WEBDL-480p', 1);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Multi.VO - 2160p - YGG', NULL, 'WEB 480p', 14, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Multi.VO - 2160p - YGG', 'DVD-R', NULL, 15, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Multi.VO - 2160p - YGG', 'DVD', NULL, 16, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Multi.VO - 2160p - YGG', 'SDTV', NULL, 17, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Multi.VO - 2160p - YGG', 'DVDSCR', NULL, 18, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Multi.VO - 2160p - YGG', 'REGIONAL', NULL, 19, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Multi.VO - 2160p - YGG', 'TELECINE', NULL, 20, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Multi.VO - 2160p - YGG', 'TELESYNC', NULL, 21, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Multi.VO - 2160p - YGG', 'CAM', NULL, 22, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Multi.VO - 2160p - YGG', 'WORKPRINT', NULL, 23, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Multi.VO - 2160p - YGG', 'Unknown', NULL, 24, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Multi.VO - 2160p - YGG', 'HDTV-480p', NULL, 25, 0, 0);

INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('Multi.VO - 2160p - YGG', 'Original', 'simple');
-- --- END op 2316

-- --- BEGIN op 2317 ( update quality_profile "Multi.VO - 2160p - YGG" )
update "quality_profiles" set "upgrade_until_score" = 10000 where "name" = 'Multi.VO - 2160p - YGG' and "upgrade_until_score" = 0;
-- --- END op 2317

-- --- BEGIN op 2318 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '3D', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '3D'
    AND arr_type = 'radarr'
);
-- --- END op 2318

-- --- BEGIN op 2319 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'AAC', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'AAC'
    AND arr_type = 'radarr'
);
-- --- END op 2319

-- --- BEGIN op 2320 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'AMZN', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'AMZN'
    AND arr_type = 'radarr'
);
-- --- END op 2320

-- --- BEGIN op 2321 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'AMZN', 'sonarr', 75
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'AMZN'
    AND arr_type = 'sonarr'
);
-- --- END op 2321

-- --- BEGIN op 2322 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'ATMOS (undefined)', 'radarr', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'ATMOS (undefined)'
    AND arr_type = 'radarr'
);
-- --- END op 2322

-- --- BEGIN op 2323 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'ATV', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'ATV'
    AND arr_type = 'radarr'
);
-- --- END op 2323

-- --- BEGIN op 2324 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'ATV', 'sonarr', 75
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'ATV'
    AND arr_type = 'sonarr'
);
-- --- END op 2324

-- --- BEGIN op 2325 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'ATVP', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'radarr'
);
-- --- END op 2325

-- --- BEGIN op 2326 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'ATVP', 'sonarr', 75
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'sonarr'
);
-- --- END op 2326

-- --- BEGIN op 2327 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'AV1', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'AV1'
    AND arr_type = 'radarr'
);
-- --- END op 2327

-- --- BEGIN op 2328 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'AV1', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'AV1'
    AND arr_type = 'sonarr'
);
-- --- END op 2328

-- --- BEGIN op 2329 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'BCORE', 'radarr', 15
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'BCORE'
    AND arr_type = 'radarr'
);
-- --- END op 2329

-- --- BEGIN op 2330 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'BR-DISK', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'BR-DISK'
    AND arr_type = 'radarr'
);
-- --- END op 2330

-- --- BEGIN op 2331 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'BR-DISK', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'BR-DISK'
    AND arr_type = 'sonarr'
);
-- --- END op 2331

-- --- BEGIN op 2332 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'Black and White Editions', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'Black and White Editions'
    AND arr_type = 'radarr'
);
-- --- END op 2332

-- --- BEGIN op 2333 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'CC', 'sonarr', 75
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'CC'
    AND arr_type = 'sonarr'
);
-- --- END op 2333

-- --- BEGIN op 2334 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'CRiT', 'radarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'CRiT'
    AND arr_type = 'radarr'
);
-- --- END op 2334

-- --- BEGIN op 2335 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'DCU', 'sonarr', 75
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'DCU'
    AND arr_type = 'sonarr'
);
-- --- END op 2335

-- --- BEGIN op 2336 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'DD', 'radarr', 750
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'DD'
    AND arr_type = 'radarr'
);
-- --- END op 2336

-- --- BEGIN op 2337 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'DD+', 'radarr', 1750
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'DD+'
    AND arr_type = 'radarr'
);
-- --- END op 2337

-- --- BEGIN op 2338 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'DD+ ATMOS', 'radarr', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'DD+ ATMOS'
    AND arr_type = 'radarr'
);
-- --- END op 2338

-- --- BEGIN op 2339 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'DSNP', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'radarr'
);
-- --- END op 2339

-- --- BEGIN op 2340 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'DSNP', 'sonarr', 75
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'sonarr'
);
-- --- END op 2340

-- --- BEGIN op 2341 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'DTS', 'radarr', 1250
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'DTS'
    AND arr_type = 'radarr'
);
-- --- END op 2341

-- --- BEGIN op 2342 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'DTS X', 'radarr', 4500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'DTS X'
    AND arr_type = 'radarr'
);
-- --- END op 2342

-- --- BEGIN op 2343 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'DTS-ES', 'radarr', 1500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'DTS-ES'
    AND arr_type = 'radarr'
);
-- --- END op 2343

-- --- BEGIN op 2344 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'DTS-HD HRA', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'DTS-HD HRA'
    AND arr_type = 'radarr'
);
-- --- END op 2344

-- --- BEGIN op 2345 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'DTS-HD MA', 'radarr', 2500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'DTS-HD MA'
    AND arr_type = 'radarr'
);
-- --- END op 2345

-- --- BEGIN op 2346 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'Extras', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'Extras'
    AND arr_type = 'radarr'
);
-- --- END op 2346

-- --- BEGIN op 2347 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'Extras', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'Extras'
    AND arr_type = 'sonarr'
);
-- --- END op 2347

-- --- BEGIN op 2348 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'FLAC', 'radarr', 2250
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'FLAC'
    AND arr_type = 'radarr'
);
-- --- END op 2348

-- --- BEGIN op 2349 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'FR HD Bluray Tier 01', 'sonarr', 1800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'FR HD Bluray Tier 01'
    AND arr_type = 'sonarr'
);
-- --- END op 2349

-- --- BEGIN op 2350 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'FR LQ', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'FR LQ'
    AND arr_type = 'radarr'
);
-- --- END op 2350

-- --- BEGIN op 2351 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'FR LQ', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'FR LQ'
    AND arr_type = 'sonarr'
);
-- --- END op 2351

-- --- BEGIN op 2352 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'FR Remux Tier 01', 'radarr', 1950
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'FR Remux Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 2352

-- --- BEGIN op 2353 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'FR Remux Tier 02', 'radarr', 1900
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'FR Remux Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 2353

-- --- BEGIN op 2354 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'FR Scene Groups', 'radarr', 1500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'FR Scene Groups'
    AND arr_type = 'radarr'
);
-- --- END op 2354

-- --- BEGIN op 2355 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'FR Scene Groups', 'sonarr', 1500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'FR Scene Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 2355

-- --- BEGIN op 2356 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'FR UHD Bluray Tier 01', 'radarr', 1800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'FR UHD Bluray Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 2356

-- --- BEGIN op 2357 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'FR UHD Bluray Tier 02', 'radarr', 1750
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'FR UHD Bluray Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 2357

-- --- BEGIN op 2358 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'FR WEB Tier 01', 'radarr', 1700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'FR WEB Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 2358

-- --- BEGIN op 2359 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'FR WEB Tier 01', 'sonarr', 1700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'FR WEB Tier 01'
    AND arr_type = 'sonarr'
);
-- --- END op 2359

-- --- BEGIN op 2360 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'FR WEB Tier 02', 'radarr', 1650
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'FR WEB Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 2360

-- --- BEGIN op 2361 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'FR WEB Tier 02', 'sonarr', 1650
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'FR WEB Tier 02'
    AND arr_type = 'sonarr'
);
-- --- END op 2361

-- --- BEGIN op 2362 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'FR WEB Tier 03', 'sonarr', 1600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'FR WEB Tier 03'
    AND arr_type = 'sonarr'
);
-- --- END op 2362

-- --- BEGIN op 2363 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'FastSUB', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'FastSUB'
    AND arr_type = 'sonarr'
);
-- --- END op 2363

-- --- BEGIN op 2364 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'Generated Dynamic HDR', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'Generated Dynamic HDR'
    AND arr_type = 'radarr'
);
-- --- END op 2364

-- --- BEGIN op 2365 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'HBO', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'HBO'
    AND arr_type = 'radarr'
);
-- --- END op 2365

-- --- BEGIN op 2366 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'HBO', 'sonarr', 75
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'HBO'
    AND arr_type = 'sonarr'
);
-- --- END op 2366

-- --- BEGIN op 2367 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'HD Bluray Tier 01', 'sonarr', 1800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'HD Bluray Tier 01'
    AND arr_type = 'sonarr'
);
-- --- END op 2367

-- --- BEGIN op 2368 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'HD Bluray Tier 02', 'sonarr', 1750
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'HD Bluray Tier 02'
    AND arr_type = 'sonarr'
);
-- --- END op 2368

-- --- BEGIN op 2369 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'HD Streaming Boost', 'sonarr', 75
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'HD Streaming Boost'
    AND arr_type = 'sonarr'
);
-- --- END op 2369

-- --- BEGIN op 2370 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'HDR10', 'radarr', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'HDR10'
    AND arr_type = 'radarr'
);
-- --- END op 2370

-- --- BEGIN op 2371 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'HDR10', 'sonarr', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'HDR10'
    AND arr_type = 'sonarr'
);
-- --- END op 2371

-- --- BEGIN op 2372 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'HMAX', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'HMAX'
    AND arr_type = 'radarr'
);
-- --- END op 2372

-- --- BEGIN op 2373 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'HMAX', 'sonarr', 75
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'HMAX'
    AND arr_type = 'sonarr'
);
-- --- END op 2373

-- --- BEGIN op 2374 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'Hulu', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'Hulu'
    AND arr_type = 'radarr'
);
-- --- END op 2374

-- --- BEGIN op 2375 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'Hulu', 'sonarr', 75
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'Hulu'
    AND arr_type = 'sonarr'
);
-- --- END op 2375

-- --- BEGIN op 2376 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'LQ', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'LQ'
    AND arr_type = 'radarr'
);
-- --- END op 2376

-- --- BEGIN op 2377 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'LQ', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'LQ'
    AND arr_type = 'sonarr'
);
-- --- END op 2377

-- --- BEGIN op 2378 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'LQ (Release Title)', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'LQ (Release Title)'
    AND arr_type = 'radarr'
);
-- --- END op 2378

-- --- BEGIN op 2379 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'LQ (Release Title)', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'LQ (Release Title)'
    AND arr_type = 'sonarr'
);
-- --- END op 2379

-- --- BEGIN op 2380 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'Language: Not French', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'Language: Not French'
    AND arr_type = 'radarr'
);
-- --- END op 2380

-- --- BEGIN op 2381 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'Language: Not French', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'Language: Not French'
    AND arr_type = 'sonarr'
);
-- --- END op 2381

-- --- BEGIN op 2382 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'Language: Not Original', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'Language: Not Original'
    AND arr_type = 'radarr'
);
-- --- END op 2382

-- --- BEGIN op 2383 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'Language: Not Original', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'Language: Not Original'
    AND arr_type = 'sonarr'
);
-- --- END op 2383

-- --- BEGIN op 2384 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'Language: Original + French', 'radarr', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'Language: Original + French'
    AND arr_type = 'radarr'
);
-- --- END op 2384

-- --- BEGIN op 2385 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'Language: Original + French', 'sonarr', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'Language: Original + French'
    AND arr_type = 'sonarr'
);
-- --- END op 2385

-- --- BEGIN op 2386 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'Line/Mic Dubbed', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'Line/Mic Dubbed'
    AND arr_type = 'radarr'
);
-- --- END op 2386

-- --- BEGIN op 2387 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'MA', 'radarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'MA'
    AND arr_type = 'radarr'
);
-- --- END op 2387

-- --- BEGIN op 2388 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'MAX', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'MAX'
    AND arr_type = 'radarr'
);
-- --- END op 2388

-- --- BEGIN op 2389 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'MAX', 'sonarr', 75
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'MAX'
    AND arr_type = 'sonarr'
);
-- --- END op 2389

-- --- BEGIN op 2390 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'NF', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'NF'
    AND arr_type = 'radarr'
);
-- --- END op 2390

-- --- BEGIN op 2391 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'NF', 'sonarr', 75
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'NF'
    AND arr_type = 'sonarr'
);
-- --- END op 2391

-- --- BEGIN op 2392 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'PCM', 'radarr', 2250
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'PCM'
    AND arr_type = 'radarr'
);
-- --- END op 2392

-- --- BEGIN op 2393 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'PCOK', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'PCOK'
    AND arr_type = 'radarr'
);
-- --- END op 2393

-- --- BEGIN op 2394 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'PCOK', 'sonarr', 75
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'PCOK'
    AND arr_type = 'sonarr'
);
-- --- END op 2394

-- --- BEGIN op 2395 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'PLAY', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'PLAY'
    AND arr_type = 'radarr'
);
-- --- END op 2395

-- --- BEGIN op 2396 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'PLAY', 'sonarr', 75
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'PLAY'
    AND arr_type = 'sonarr'
);
-- --- END op 2396

-- --- BEGIN op 2397 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'PMTP', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'PMTP'
    AND arr_type = 'radarr'
);
-- --- END op 2397

-- --- BEGIN op 2398 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'PMTP', 'sonarr', 75
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'PMTP'
    AND arr_type = 'sonarr'
);
-- --- END op 2398

-- --- BEGIN op 2399 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'ROKU', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'ROKU'
    AND arr_type = 'radarr'
);
-- --- END op 2399

-- --- BEGIN op 2400 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'ROKU', 'sonarr', 75
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'ROKU'
    AND arr_type = 'sonarr'
);
-- --- END op 2400

-- --- BEGIN op 2401 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'Remux Tier 01', 'radarr', 1950
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'Remux Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 2401

-- --- BEGIN op 2402 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'Remux Tier 02', 'radarr', 1900
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'Remux Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 2402

-- --- BEGIN op 2403 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'Remux Tier 03', 'radarr', 1850
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'Remux Tier 03'
    AND arr_type = 'radarr'
);
-- --- END op 2403

-- --- BEGIN op 2404 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'Repack/Proper', 'radarr', 5
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'Repack/Proper'
    AND arr_type = 'radarr'
);
-- --- END op 2404

-- --- BEGIN op 2405 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'Repack/Proper', 'sonarr', 5
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'Repack/Proper'
    AND arr_type = 'sonarr'
);
-- --- END op 2405

-- --- BEGIN op 2406 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'Repack2', 'radarr', 6
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'Repack2'
    AND arr_type = 'radarr'
);
-- --- END op 2406

-- --- BEGIN op 2407 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'Repack2', 'sonarr', 6
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'Repack2'
    AND arr_type = 'sonarr'
);
-- --- END op 2407

-- --- BEGIN op 2408 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'Repack3', 'radarr', 7
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'Repack3'
    AND arr_type = 'radarr'
);
-- --- END op 2408

-- --- BEGIN op 2409 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'Repack3', 'sonarr', 7
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'Repack3'
    AND arr_type = 'sonarr'
);
-- --- END op 2409

-- --- BEGIN op 2410 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'SHO', 'sonarr', 75
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'SHO'
    AND arr_type = 'sonarr'
);
-- --- END op 2410

-- --- BEGIN op 2411 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'STAN', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'STAN'
    AND arr_type = 'radarr'
);
-- --- END op 2411

-- --- BEGIN op 2412 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'STAN', 'sonarr', 75
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'STAN'
    AND arr_type = 'sonarr'
);
-- --- END op 2412

-- --- BEGIN op 2413 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'SYFY', 'sonarr', 75
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'SYFY'
    AND arr_type = 'sonarr'
);
-- --- END op 2413

-- --- BEGIN op 2414 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'Sing-Along Versions', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'Sing-Along Versions'
    AND arr_type = 'radarr'
);
-- --- END op 2414

-- --- BEGIN op 2415 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'TrueHD', 'radarr', 2750
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'TrueHD'
    AND arr_type = 'radarr'
);
-- --- END op 2415

-- --- BEGIN op 2416 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'TrueHD ATMOS', 'radarr', 5000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'TrueHD ATMOS'
    AND arr_type = 'radarr'
);
-- --- END op 2416

-- --- BEGIN op 2417 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'UHD Bluray Tier 01', 'radarr', 1800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'UHD Bluray Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 2417

-- --- BEGIN op 2418 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'UHD Bluray Tier 02', 'radarr', 1750
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'UHD Bluray Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 2418

-- --- BEGIN op 2419 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'UHD Bluray Tier 03', 'radarr', 1700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'UHD Bluray Tier 03'
    AND arr_type = 'radarr'
);
-- --- END op 2419

-- --- BEGIN op 2420 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'UHD Streaming Boost', 'sonarr', 75
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'UHD Streaming Boost'
    AND arr_type = 'sonarr'
);
-- --- END op 2420

-- --- BEGIN op 2421 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'Upscaled', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'Upscaled'
    AND arr_type = 'radarr'
);
-- --- END op 2421

-- --- BEGIN op 2422 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'Upscaled', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'Upscaled'
    AND arr_type = 'sonarr'
);
-- --- END op 2422

-- --- BEGIN op 2423 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'VF2', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'VF2'
    AND arr_type = 'radarr'
);
-- --- END op 2423

-- --- BEGIN op 2424 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'VF2', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'VF2'
    AND arr_type = 'sonarr'
);
-- --- END op 2424

-- --- BEGIN op 2425 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'VFB', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'VFB'
    AND arr_type = 'radarr'
);
-- --- END op 2425

-- --- BEGIN op 2426 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'VFB', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'VFB'
    AND arr_type = 'sonarr'
);
-- --- END op 2426

-- --- BEGIN op 2427 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'VFF', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'VFF'
    AND arr_type = 'radarr'
);
-- --- END op 2427

-- --- BEGIN op 2428 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'VFF', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'VFF'
    AND arr_type = 'sonarr'
);
-- --- END op 2428

-- --- BEGIN op 2429 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'VFI', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'VFI'
    AND arr_type = 'radarr'
);
-- --- END op 2429

-- --- BEGIN op 2430 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'VFI', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'VFI'
    AND arr_type = 'sonarr'
);
-- --- END op 2430

-- --- BEGIN op 2431 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'VFQ', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'VFQ'
    AND arr_type = 'radarr'
);
-- --- END op 2431

-- --- BEGIN op 2432 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'VFQ', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'VFQ'
    AND arr_type = 'sonarr'
);
-- --- END op 2432

-- --- BEGIN op 2433 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'VOF', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'VOF'
    AND arr_type = 'radarr'
);
-- --- END op 2433

-- --- BEGIN op 2434 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'VOF', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'VOF'
    AND arr_type = 'sonarr'
);
-- --- END op 2434

-- --- BEGIN op 2435 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'VOQ', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'VOQ'
    AND arr_type = 'radarr'
);
-- --- END op 2435

-- --- BEGIN op 2436 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'VOQ', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'VOQ'
    AND arr_type = 'sonarr'
);
-- --- END op 2436

-- --- BEGIN op 2437 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'VQ', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'VQ'
    AND arr_type = 'radarr'
);
-- --- END op 2437

-- --- BEGIN op 2438 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'VQ', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'VQ'
    AND arr_type = 'sonarr'
);
-- --- END op 2438

-- --- BEGIN op 2439 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'WEB Scene', 'sonarr', 1600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'WEB Scene'
    AND arr_type = 'sonarr'
);
-- --- END op 2439

-- --- BEGIN op 2440 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'WEB Tier 01', 'radarr', 1700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'WEB Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 2440

-- --- BEGIN op 2441 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'WEB Tier 01', 'sonarr', 1700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'WEB Tier 01'
    AND arr_type = 'sonarr'
);
-- --- END op 2441

-- --- BEGIN op 2442 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'WEB Tier 02', 'radarr', 1650
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'WEB Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 2442

-- --- BEGIN op 2443 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'WEB Tier 02', 'sonarr', 1650
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'WEB Tier 02'
    AND arr_type = 'sonarr'
);
-- --- END op 2443

-- --- BEGIN op 2444 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'WEB Tier 03', 'radarr', 1600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'WEB Tier 03'
    AND arr_type = 'radarr'
);
-- --- END op 2444

-- --- BEGIN op 2445 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'WEB Tier 03', 'sonarr', 1600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'WEB Tier 03'
    AND arr_type = 'sonarr'
);
-- --- END op 2445

-- --- BEGIN op 2446 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'iT', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'iT'
    AND arr_type = 'radarr'
);
-- --- END op 2446

-- --- BEGIN op 2447 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'iT', 'sonarr', 75
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'iT'
    AND arr_type = 'sonarr'
);
-- --- END op 2447

-- --- BEGIN op 2448 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'x265 (no HDR/DV)', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'x265 (no HDR/DV)'
    AND arr_type = 'radarr'
);
-- --- END op 2448

-- --- BEGIN op 2449 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'x265 (no HDR/DV)', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'x265 (no HDR/DV)'
    AND arr_type = 'sonarr'
);
-- --- END op 2449

-- --- BEGIN op 2450 ( update quality_profile "Multi.VO - 2160p - YGG" )
update "quality_profiles" set "description" = NULL where "name" = 'Multi.VO - 2160p - YGG' and "description" = 'French Quality Profile that covers:
- WEBDL: 1080p, 2160p
- Bluray: 2160p
- Remux: 1080p';
-- --- END op 2450

-- --- BEGIN op 2451 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_qualities
SET enabled = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND quality_name = 'Remux-1080p'
  AND quality_group_name IS NULL
  AND position = 1
  AND enabled = 1
  AND upgrade_until = 0;
-- --- END op 2451

-- --- BEGIN op 2452 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '*AZAZE LQ', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '*AZAZE LQ'
    AND arr_type = 'radarr'
);
-- --- END op 2452

-- --- BEGIN op 2453 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '*AZAZE LQ', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '*AZAZE LQ'
    AND arr_type = 'sonarr'
);
-- --- END op 2453

-- --- BEGIN op 2454 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '*Criterion Collection', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '*Criterion Collection'
    AND arr_type = 'radarr'
);
-- --- END op 2454

-- --- BEGIN op 2455 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '*Criterion Collection', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '*Criterion Collection'
    AND arr_type = 'sonarr'
);
-- --- END op 2455

-- --- BEGIN op 2456 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '*FR Tracker Extra Groups', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '*FR Tracker Extra Groups'
    AND arr_type = 'radarr'
);
-- --- END op 2456

-- --- BEGIN op 2457 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '*FR Tracker Extra Groups', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '*FR Tracker Extra Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 2457

-- --- BEGIN op 2458 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '*Language FR EN (no MULTi) (Radarr)', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '*Language FR EN (no MULTi) (Radarr)'
    AND arr_type = 'radarr'
);
-- --- END op 2458

-- --- BEGIN op 2459 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '*Language FR EN (no MULTi) (Sonarr)', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '*Language FR EN (no MULTi) (Sonarr)'
    AND arr_type = 'sonarr'
);
-- --- END op 2459

-- --- BEGIN op 2460 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '*LQ & FR LQ', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '*LQ & FR LQ'
    AND arr_type = 'radarr'
);
-- --- END op 2460

-- --- BEGIN op 2461 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '*LQ & FR LQ', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '*LQ & FR LQ'
    AND arr_type = 'sonarr'
);
-- --- END op 2461

-- --- BEGIN op 2462 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '*MULTi', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '*MULTi'
    AND arr_type = 'radarr'
);
-- --- END op 2462

-- --- BEGIN op 2463 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '*MULTi', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '*MULTi'
    AND arr_type = 'sonarr'
);
-- --- END op 2463

-- --- BEGIN op 2464 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '*No tag - Audio', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '*No tag - Audio'
    AND arr_type = 'radarr'
);
-- --- END op 2464

-- --- BEGIN op 2465 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '*No tag - Audio', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '*No tag - Audio'
    AND arr_type = 'sonarr'
);
-- --- END op 2465

-- --- BEGIN op 2466 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '*No tag - VFF', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '*No tag - VFF'
    AND arr_type = 'radarr'
);
-- --- END op 2466

-- --- BEGIN op 2467 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '*No tag - VFF', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '*No tag - VFF'
    AND arr_type = 'sonarr'
);
-- --- END op 2467

-- --- BEGIN op 2468 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '*No tag - VOSTFR', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '*No tag - VOSTFR'
    AND arr_type = 'radarr'
);
-- --- END op 2468

-- --- BEGIN op 2469 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '*No tag - VOSTFR', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '*No tag - VOSTFR'
    AND arr_type = 'sonarr'
);
-- --- END op 2469

-- --- BEGIN op 2470 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '*No tag - x264 x265', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '*No tag - x264 x265'
    AND arr_type = 'radarr'
);
-- --- END op 2470

-- --- BEGIN op 2471 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '*No tag - x264 x265', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '*No tag - x264 x265'
    AND arr_type = 'sonarr'
);
-- --- END op 2471

-- --- BEGIN op 2472 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '*Remaster', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '*Remaster'
    AND arr_type = 'radarr'
);
-- --- END op 2472

-- --- BEGIN op 2473 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '*Remaster', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '*Remaster'
    AND arr_type = 'sonarr'
);
-- --- END op 2473

-- --- BEGIN op 2474 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '*Special Edition', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '*Special Edition'
    AND arr_type = 'radarr'
);
-- --- END op 2474

-- --- BEGIN op 2475 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '*Special Edition', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '*Special Edition'
    AND arr_type = 'sonarr'
);
-- --- END op 2475

-- --- BEGIN op 2476 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '*Team CHiLL', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '*Team CHiLL'
    AND arr_type = 'radarr'
);
-- --- END op 2476

-- --- BEGIN op 2477 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '*Team CHiLL', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '*Team CHiLL'
    AND arr_type = 'sonarr'
);
-- --- END op 2477

-- --- BEGIN op 2478 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '*Team FW', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '*Team FW'
    AND arr_type = 'radarr'
);
-- --- END op 2478

-- --- BEGIN op 2479 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '*Team FW', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '*Team FW'
    AND arr_type = 'sonarr'
);
-- --- END op 2479

-- --- BEGIN op 2480 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '*Team mHDgz', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '*Team mHDgz'
    AND arr_type = 'radarr'
);
-- --- END op 2480

-- --- BEGIN op 2481 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '*Team mHDgz', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '*Team mHDgz'
    AND arr_type = 'sonarr'
);
-- --- END op 2481

-- --- BEGIN op 2482 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '*Team PopHD', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '*Team PopHD'
    AND arr_type = 'radarr'
);
-- --- END op 2482

-- --- BEGIN op 2483 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '*Team PopHD', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '*Team PopHD'
    AND arr_type = 'sonarr'
);
-- --- END op 2483

-- --- BEGIN op 2484 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '*Team SUPPLY', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '*Team SUPPLY'
    AND arr_type = 'radarr'
);
-- --- END op 2484

-- --- BEGIN op 2485 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '*Team SUPPLY', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '*Team SUPPLY'
    AND arr_type = 'sonarr'
);
-- --- END op 2485

-- --- BEGIN op 2486 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '*Team XSHD', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '*Team XSHD'
    AND arr_type = 'radarr'
);
-- --- END op 2486

-- --- BEGIN op 2487 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '*Team XSHD', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '*Team XSHD'
    AND arr_type = 'sonarr'
);
-- --- END op 2487

-- --- BEGIN op 2488 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '*VFF', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '*VFF'
    AND arr_type = 'radarr'
);
-- --- END op 2488

-- --- BEGIN op 2489 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '*VFF', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '*VFF'
    AND arr_type = 'sonarr'
);
-- --- END op 2489

-- --- BEGIN op 2490 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '*VOSTFR', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '*VOSTFR'
    AND arr_type = 'radarr'
);
-- --- END op 2490

-- --- BEGIN op 2491 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '*VOSTFR', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '*VOSTFR'
    AND arr_type = 'sonarr'
);
-- --- END op 2491

-- --- BEGIN op 2492 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'FR HD Bluray Tier 01'
  AND arr_type = 'sonarr'
  AND score = 1800;
-- --- END op 2492

-- --- BEGIN op 2493 ( update quality_profile "Multi.VO - 2160p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'FR Remux Tier 01'
  AND arr_type = 'radarr'
  AND score = 1950;
-- --- END op 2493

-- --- BEGIN op 2494 ( update quality_profile "Multi.VO - 2160p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'FR Remux Tier 02'
  AND arr_type = 'radarr'
  AND score = 1900;
-- --- END op 2494

-- --- BEGIN op 2495 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'FR Scene Groups'
  AND arr_type = 'radarr'
  AND score = 1500;
-- --- END op 2495

-- --- BEGIN op 2496 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'FR Scene Groups'
  AND arr_type = 'sonarr'
  AND score = 1500;
-- --- END op 2496

-- --- BEGIN op 2497 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'FR UHD Bluray Tier 01'
  AND arr_type = 'radarr'
  AND score = 1800;
-- --- END op 2497

-- --- BEGIN op 2498 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'FR UHD Bluray Tier 02'
  AND arr_type = 'radarr'
  AND score = 1750;
-- --- END op 2498

-- --- BEGIN op 2499 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'FR WEB Tier 01'
  AND arr_type = 'radarr'
  AND score = 1700;
-- --- END op 2499

-- --- BEGIN op 2500 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'FR WEB Tier 01'
  AND arr_type = 'sonarr'
  AND score = 1700;
-- --- END op 2500

-- --- BEGIN op 2501 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'FR WEB Tier 02'
  AND arr_type = 'radarr'
  AND score = 1650;
-- --- END op 2501

-- --- BEGIN op 2502 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'FR WEB Tier 02'
  AND arr_type = 'sonarr'
  AND score = 1650;
-- --- END op 2502

-- --- BEGIN op 2503 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'FR WEB Tier 03'
  AND arr_type = 'sonarr'
  AND score = 1600;
-- --- END op 2503

-- --- BEGIN op 2504 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'HD Bluray Tier 01'
  AND arr_type = 'sonarr'
  AND score = 1800;
-- --- END op 2504

-- --- BEGIN op 2505 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'HD Bluray Tier 02'
  AND arr_type = 'sonarr'
  AND score = 1750;
-- --- END op 2505

-- --- BEGIN op 2506 ( update quality_profile "Multi.VO - 2160p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'Remux Tier 01'
  AND arr_type = 'radarr'
  AND score = 1950;
-- --- END op 2506

-- --- BEGIN op 2507 ( update quality_profile "Multi.VO - 2160p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'Remux Tier 02'
  AND arr_type = 'radarr'
  AND score = 1900;
-- --- END op 2507

-- --- BEGIN op 2508 ( update quality_profile "Multi.VO - 2160p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'Remux Tier 03'
  AND arr_type = 'radarr'
  AND score = 1850;
-- --- END op 2508

-- --- BEGIN op 2509 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'UHD Bluray Tier 01'
  AND arr_type = 'radarr'
  AND score = 1800;
-- --- END op 2509

-- --- BEGIN op 2510 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'UHD Bluray Tier 02'
  AND arr_type = 'radarr'
  AND score = 1750;
-- --- END op 2510

-- --- BEGIN op 2511 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'UHD Bluray Tier 03'
  AND arr_type = 'radarr'
  AND score = 1700;
-- --- END op 2511

-- --- BEGIN op 2512 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'WEB Scene'
  AND arr_type = 'sonarr'
  AND score = 1600;
-- --- END op 2512

-- --- BEGIN op 2513 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'WEB Tier 01'
  AND arr_type = 'radarr'
  AND score = 1700;
-- --- END op 2513

-- --- BEGIN op 2514 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'WEB Tier 01'
  AND arr_type = 'sonarr'
  AND score = 1700;
-- --- END op 2514

-- --- BEGIN op 2515 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'WEB Tier 02'
  AND arr_type = 'radarr'
  AND score = 1650;
-- --- END op 2515

-- --- BEGIN op 2516 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'WEB Tier 02'
  AND arr_type = 'sonarr'
  AND score = 1650;
-- --- END op 2516

-- --- BEGIN op 2517 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'WEB Tier 03'
  AND arr_type = 'radarr'
  AND score = 1600;
-- --- END op 2517

-- --- BEGIN op 2518 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'WEB Tier 03'
  AND arr_type = 'sonarr'
  AND score = 1600;
-- --- END op 2518

-- --- BEGIN op 2519 ( update quality_profile "Multi.VO - 2160p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = '*AZAZE LQ'
  AND arr_type = 'radarr'
  AND score = 0;
-- --- END op 2519

-- --- BEGIN op 2520 ( update quality_profile "Multi.VO - 2160p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = '*AZAZE LQ'
  AND arr_type = 'sonarr'
  AND score = 0;
-- --- END op 2520

-- --- BEGIN op 2521 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 1020
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = '*Language FR EN (no MULTi) (Radarr)'
  AND arr_type = 'radarr'
  AND score = 0;
-- --- END op 2521

-- --- BEGIN op 2522 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = -601
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = '*LQ & FR LQ'
  AND arr_type = 'radarr'
  AND score = 0;
-- --- END op 2522

-- --- BEGIN op 2523 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = -601
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = '*LQ & FR LQ'
  AND arr_type = 'sonarr'
  AND score = 0;
-- --- END op 2523

-- --- BEGIN op 2524 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 3
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = '*No tag - Audio'
  AND arr_type = 'radarr'
  AND score = 0;
-- --- END op 2524

-- --- BEGIN op 2525 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 3
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = '*No tag - Audio'
  AND arr_type = 'sonarr'
  AND score = 0;
-- --- END op 2525

-- --- BEGIN op 2526 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 403
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = '*No tag - VOSTFR'
  AND arr_type = 'radarr'
  AND score = 0;
-- --- END op 2526

-- --- BEGIN op 2527 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 403
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = '*No tag - VOSTFR'
  AND arr_type = 'sonarr'
  AND score = 0;
-- --- END op 2527

-- --- BEGIN op 2528 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 1400
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = '*No tag - x264 x265'
  AND arr_type = 'radarr'
  AND score = 0;
-- --- END op 2528

-- --- BEGIN op 2529 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 1400
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = '*No tag - x264 x265'
  AND arr_type = 'sonarr'
  AND score = 0;
-- --- END op 2529

-- --- BEGIN op 2530 ( update quality_profile "Multi.VO - 2160p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = '*Team mHDgz'
  AND arr_type = 'radarr'
  AND score = 0;
-- --- END op 2530

-- --- BEGIN op 2531 ( update quality_profile "Multi.VO - 2160p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = '*Team mHDgz'
  AND arr_type = 'sonarr'
  AND score = 0;
-- --- END op 2531

-- --- BEGIN op 2532 ( update quality_profile "Multi.VO - 2160p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = '*Team PopHD'
  AND arr_type = 'radarr'
  AND score = 0;
-- --- END op 2532

-- --- BEGIN op 2533 ( update quality_profile "Multi.VO - 2160p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = '*Team PopHD'
  AND arr_type = 'sonarr'
  AND score = 0;
-- --- END op 2533

-- --- BEGIN op 2534 ( update quality_profile "Multi.VO - 2160p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = '*Team XSHD'
  AND arr_type = 'radarr'
  AND score = 0;
-- --- END op 2534

-- --- BEGIN op 2535 ( update quality_profile "Multi.VO - 2160p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = '*Team XSHD'
  AND arr_type = 'sonarr'
  AND score = 0;
-- --- END op 2535

-- --- BEGIN op 2536 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 403
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = '*VOSTFR'
  AND arr_type = 'radarr'
  AND score = 0;
-- --- END op 2536

-- --- BEGIN op 2537 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 403
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = '*VOSTFR'
  AND arr_type = 'sonarr'
  AND score = 0;
-- --- END op 2537

-- --- BEGIN op 2538 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 3
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'AAC'
  AND arr_type = 'radarr'
  AND score = 1000;
-- --- END op 2538

-- --- BEGIN op 2539 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'AMZN'
  AND arr_type = 'sonarr'
  AND score = 75;
-- --- END op 2539

-- --- BEGIN op 2540 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'ATMOS (undefined)'
  AND arr_type = 'radarr'
  AND score = 3000;
-- --- END op 2540

-- --- BEGIN op 2541 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'ATV'
  AND arr_type = 'sonarr'
  AND score = 75;
-- --- END op 2541

-- --- BEGIN op 2542 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'ATVP'
  AND arr_type = 'sonarr'
  AND score = 75;
-- --- END op 2542

-- --- BEGIN op 2543 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'BCORE'
  AND arr_type = 'radarr'
  AND score = 15;
-- --- END op 2543

-- --- BEGIN op 2544 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'CC'
  AND arr_type = 'sonarr'
  AND score = 75;
-- --- END op 2544

-- --- BEGIN op 2545 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'CRiT'
  AND arr_type = 'radarr'
  AND score = 20;
-- --- END op 2545

-- --- BEGIN op 2546 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'DCU'
  AND arr_type = 'sonarr'
  AND score = 75;
-- --- END op 2546

-- --- BEGIN op 2547 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 1
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'DD'
  AND arr_type = 'radarr'
  AND score = 750;
-- --- END op 2547

-- --- BEGIN op 2548 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 1
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'DD+'
  AND arr_type = 'radarr'
  AND score = 1750;
-- --- END op 2548

-- --- BEGIN op 2549 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'DD+ ATMOS'
  AND arr_type = 'radarr'
  AND score = 3000;
-- --- END op 2549

-- --- BEGIN op 2550 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'DSNP'
  AND arr_type = 'sonarr'
  AND score = 75;
-- --- END op 2550

-- --- BEGIN op 2551 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'DTS'
  AND arr_type = 'radarr'
  AND score = 1250;
-- --- END op 2551

-- --- BEGIN op 2552 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'DTS X'
  AND arr_type = 'radarr'
  AND score = 4500;
-- --- END op 2552

-- --- BEGIN op 2553 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'DTS-ES'
  AND arr_type = 'radarr'
  AND score = 1500;
-- --- END op 2553

-- --- BEGIN op 2554 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'DTS-HD HRA'
  AND arr_type = 'radarr'
  AND score = 2000;
-- --- END op 2554

-- --- BEGIN op 2555 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = -1
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'DTS-HD MA'
  AND arr_type = 'radarr'
  AND score = 2500;
-- --- END op 2555

-- --- BEGIN op 2556 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'FLAC'
  AND arr_type = 'radarr'
  AND score = 2250;
-- --- END op 2556

-- --- BEGIN op 2557 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'HBO'
  AND arr_type = 'sonarr'
  AND score = 75;
-- --- END op 2557

-- --- BEGIN op 2558 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'HD Streaming Boost'
  AND arr_type = 'sonarr'
  AND score = 75;
-- --- END op 2558

-- --- BEGIN op 2559 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'HMAX'
  AND arr_type = 'sonarr'
  AND score = 75;
-- --- END op 2559

-- --- BEGIN op 2560 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'Hulu'
  AND arr_type = 'sonarr'
  AND score = 75;
-- --- END op 2560

-- --- BEGIN op 2561 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'iT'
  AND arr_type = 'sonarr'
  AND score = 75;
-- --- END op 2561

-- --- BEGIN op 2562 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 1020
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'Language: Original + French'
  AND arr_type = 'radarr'
  AND score = 500;
-- --- END op 2562

-- --- BEGIN op 2563 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 1020
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'Language: Original + French'
  AND arr_type = 'sonarr'
  AND score = 500;
-- --- END op 2563

-- --- BEGIN op 2564 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'MA'
  AND arr_type = 'radarr'
  AND score = 20;
-- --- END op 2564

-- --- BEGIN op 2565 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'MAX'
  AND arr_type = 'sonarr'
  AND score = 75;
-- --- END op 2565

-- --- BEGIN op 2566 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'NF'
  AND arr_type = 'sonarr'
  AND score = 75;
-- --- END op 2566

-- --- BEGIN op 2567 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'PCM'
  AND arr_type = 'radarr'
  AND score = 2250;
-- --- END op 2567

-- --- BEGIN op 2568 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'PCOK'
  AND arr_type = 'sonarr'
  AND score = 75;
-- --- END op 2568

-- --- BEGIN op 2569 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'PLAY'
  AND arr_type = 'sonarr'
  AND score = 75;
-- --- END op 2569

-- --- BEGIN op 2570 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'PMTP'
  AND arr_type = 'sonarr'
  AND score = 75;
-- --- END op 2570

-- --- BEGIN op 2571 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 100
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'Repack/Proper'
  AND arr_type = 'radarr'
  AND score = 5;
-- --- END op 2571

-- --- BEGIN op 2572 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 100
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'Repack/Proper'
  AND arr_type = 'sonarr'
  AND score = 5;
-- --- END op 2572

-- --- BEGIN op 2573 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 200
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'Repack2'
  AND arr_type = 'radarr'
  AND score = 6;
-- --- END op 2573

-- --- BEGIN op 2574 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 200
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'Repack2'
  AND arr_type = 'sonarr'
  AND score = 6;
-- --- END op 2574

-- --- BEGIN op 2575 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 300
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'Repack3'
  AND arr_type = 'radarr'
  AND score = 7;
-- --- END op 2575

-- --- BEGIN op 2576 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 300
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'Repack3'
  AND arr_type = 'sonarr'
  AND score = 7;
-- --- END op 2576

-- --- BEGIN op 2577 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'ROKU'
  AND arr_type = 'sonarr'
  AND score = 75;
-- --- END op 2577

-- --- BEGIN op 2578 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'SHO'
  AND arr_type = 'sonarr'
  AND score = 75;
-- --- END op 2578

-- --- BEGIN op 2579 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'STAN'
  AND arr_type = 'sonarr'
  AND score = 75;
-- --- END op 2579

-- --- BEGIN op 2580 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'SYFY'
  AND arr_type = 'sonarr'
  AND score = 75;
-- --- END op 2580

-- --- BEGIN op 2581 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'TrueHD'
  AND arr_type = 'radarr'
  AND score = 2750;
-- --- END op 2581

-- --- BEGIN op 2582 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'TrueHD ATMOS'
  AND arr_type = 'radarr'
  AND score = 5000;
-- --- END op 2582

-- --- BEGIN op 2583 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'UHD Streaming Boost'
  AND arr_type = 'sonarr'
  AND score = 75;
-- --- END op 2583

-- --- BEGIN op 2584 ( update quality_profile "Multi.VO - 2160p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'VFB'
  AND arr_type = 'radarr'
  AND score = 0;
-- --- END op 2584

-- --- BEGIN op 2585 ( update quality_profile "Multi.VO - 2160p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'VFB'
  AND arr_type = 'sonarr'
  AND score = 0;
-- --- END op 2585

-- --- BEGIN op 2586 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = -101
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'VFQ'
  AND arr_type = 'radarr'
  AND score = 0;
-- --- END op 2586

-- --- BEGIN op 2587 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = -101
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'VFQ'
  AND arr_type = 'sonarr'
  AND score = 0;
-- --- END op 2587

-- --- BEGIN op 2588 ( update quality_profile "Multi.VO - 2160p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'VOQ'
  AND arr_type = 'radarr'
  AND score = 0;
-- --- END op 2588

-- --- BEGIN op 2589 ( update quality_profile "Multi.VO - 2160p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'VOQ'
  AND arr_type = 'sonarr'
  AND score = 0;
-- --- END op 2589

-- --- BEGIN op 2590 ( update quality_profile "Multi.VO - 2160p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'VQ'
  AND arr_type = 'radarr'
  AND score = 0;
-- --- END op 2590

-- --- BEGIN op 2591 ( update quality_profile "Multi.VO - 2160p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'VQ'
  AND arr_type = 'sonarr'
  AND score = 0;
-- --- END op 2591

-- --- BEGIN op 2592 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'DV (w/o HDR fallback)', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'DV (w/o HDR fallback)'
    AND arr_type = 'radarr'
);
-- --- END op 2592

-- --- BEGIN op 2593 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'DV (w/o HDR fallback)', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'DV (w/o HDR fallback)'
    AND arr_type = 'sonarr'
);
-- --- END op 2593

-- --- BEGIN op 2594 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'x265 (Codec)', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'x265 (Codec)'
    AND arr_type = 'radarr'
);
-- --- END op 2594

-- --- BEGIN op 2595 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'x265 (Codec)', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'x265 (Codec)'
    AND arr_type = 'sonarr'
);
-- --- END op 2595

-- --- BEGIN op 2596 ( update quality_profile "Multi.VO - 2160p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'x265 (no HDR/DV)'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 2596

-- --- BEGIN op 2597 ( update quality_profile "Multi.VO - 2160p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'x265 (no HDR/DV)'
  AND arr_type = 'sonarr'
  AND score = -10000;
-- --- END op 2597

-- --- BEGIN op 2598 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 1020
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = '*Language FR EN (no MULTi) (Sonarr)'
  AND arr_type = 'sonarr'
  AND score = 0;
-- --- END op 2598

-- --- BEGIN op 2599 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'DV Boost', 'radarr', 605
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'DV Boost'
    AND arr_type = 'radarr'
);
-- --- END op 2599

-- --- BEGIN op 2600 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'x265 (no HDR/DV)', 'radarr', -15000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'x265 (no HDR/DV)'
    AND arr_type = 'radarr'
);
-- --- END op 2600

-- --- BEGIN op 2601 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'DV Boost', 'sonarr', 605
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'DV Boost'
    AND arr_type = 'sonarr'
);
-- --- END op 2601

-- --- BEGIN op 2602 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'x265 (no HDR/DV)', 'sonarr', -15000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'x265 (no HDR/DV)'
    AND arr_type = 'sonarr'
);
-- --- END op 2602

-- --- BEGIN op 2603 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 601
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = '*Team CHiLL'
  AND arr_type = 'radarr'
  AND score = 0;
-- --- END op 2603

-- --- BEGIN op 2604 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 601
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = '*Team CHiLL'
  AND arr_type = 'sonarr'
  AND score = 0;
-- --- END op 2604

-- --- BEGIN op 2605 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 601
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = '*Team FW'
  AND arr_type = 'radarr'
  AND score = 0;
-- --- END op 2605

-- --- BEGIN op 2606 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 601
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = '*Team FW'
  AND arr_type = 'sonarr'
  AND score = 0;
-- --- END op 2606

-- --- BEGIN op 2607 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 602
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = '*Team SUPPLY'
  AND arr_type = 'radarr'
  AND score = 0;
-- --- END op 2607

-- --- BEGIN op 2608 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 602
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = '*Team SUPPLY'
  AND arr_type = 'sonarr'
  AND score = 0;
-- --- END op 2608

-- --- BEGIN op 2609 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 305
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'DV Boost'
  AND arr_type = 'radarr'
  AND score = 605;
-- --- END op 2609

-- --- BEGIN op 2610 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 305
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'DV Boost'
  AND arr_type = 'sonarr'
  AND score = 605;
-- --- END op 2610

-- --- BEGIN op 2611 ( update quality_profile "Multi.VO - 2160p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'FR LQ'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 2611

-- --- BEGIN op 2612 ( update quality_profile "Multi.VO - 2160p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'FR LQ'
  AND arr_type = 'sonarr'
  AND score = -10000;
-- --- END op 2612

-- --- BEGIN op 2613 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 300
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'HDR10'
  AND arr_type = 'radarr'
  AND score = 500;
-- --- END op 2613

-- --- BEGIN op 2614 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 300
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'HDR10'
  AND arr_type = 'sonarr'
  AND score = 500;
-- --- END op 2614

-- --- BEGIN op 2615 ( update quality_profile "Multi.VO - 2160p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'LQ'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 2615

-- --- BEGIN op 2616 ( update quality_profile "Multi.VO - 2160p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'LQ'
  AND arr_type = 'sonarr'
  AND score = -10000;
-- --- END op 2616

-- --- BEGIN op 2617 ( create regular_expression "*Team -QTZ" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('*Team -QTZ', '^(XSHD)$', 'Matches the release group exactly `XSHD`', NULL);

insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*Team -QTZ', 'Sseh');

insert into "tags" ("name") values ('Team') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*Team -QTZ', 'Team');
-- --- END op 2617

-- --- BEGIN op 2618 ( update regular_expression "*Team -QTZ" )
update "regular_expressions" set "description" = 'Matches the release group exactly `QTZ`' where "name" = '*Team -QTZ' and "description" = 'Matches the release group exactly `XSHD`';
-- --- END op 2618

-- --- BEGIN op 2619 ( update regular_expression "*Team -QTZ" )
update "regular_expressions" set "pattern" = '^(QTZ)$' where "name" = '*Team -QTZ' and "pattern" = '^(XSHD)$';
-- --- END op 2619

-- --- BEGIN op 2620 ( create regular_expression "*Team -T4KT" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('*Team -T4KT', '^(QTZ)$', 'Matches the release group exactly `QTZ`', NULL);

insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*Team -T4KT', 'Sseh');

insert into "tags" ("name") values ('Team') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*Team -T4KT', 'Team');
-- --- END op 2620

-- --- BEGIN op 2621 ( update regular_expression "*Team -T4KT" )
update "regular_expressions" set "description" = 'Matches the release group exactly `T4KT`' where "name" = '*Team -T4KT' and "description" = 'Matches the release group exactly `QTZ`';
-- --- END op 2621

-- --- BEGIN op 2622 ( update regular_expression "*Team -T4KT" )
update "regular_expressions" set "pattern" = '^(T4KT)$' where "name" = '*Team -T4KT' and "pattern" = '^(QTZ)$';
-- --- END op 2622

-- --- BEGIN op 2623 ( create custom_format "*Team T4KT" )
insert into "custom_formats" ("name", "description") values ('*Team T4KT', '');
-- --- END op 2623

-- --- BEGIN op 2624 ( update custom_format "*Team T4KT" )
update "custom_formats" set "description" = 'Bonus attribué à la team CHiLL, envers laquelle une confiance particulière a été établie. Le score dépasse l''écart de 600 points séparant x264 et x265, ce qui permet à une release CHiLL en x264 de passer devant une x265 d''origine inconnue.

La détection porte sur le champ Release Group avec une regex ancrée, un boost de cette ampleur ne tolérant pas le faux positif.

Cette team n''est présente dans aucun CF de la biblio Trash, la regex est donc entièrement custom.' where "name" = '*Team T4KT' and "description" = '';
-- --- END op 2624

-- --- BEGIN op 2625 ( update custom_format "*Team T4KT" )
insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('*Team T4KT', 'Sseh');

insert into "tags" ("name") values ('Teams') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('*Team T4KT', 'Teams');
-- --- END op 2625

-- --- BEGIN op 2626 ( update custom_format "*Team T4KT" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Team T4KT', 'CHiLL tag', 'release_group', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Team T4KT', 'CHiLL tag', '*Team -CHiLL');
-- --- END op 2626

-- --- BEGIN op 2627 ( create custom_format "*Team T4KT" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Team T4KT', 'CHiLL.2021.MULTi.1080p.WEB.x264-GROUP', 'movie', 0, NULL);
-- --- END op 2627

-- --- BEGIN op 2628 ( create custom_format "*Team T4KT" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Team T4KT', 'Film.2021.MULTi.1080p.WEB.x264-CHiLL', 'movie', 1, NULL);
-- --- END op 2628

-- --- BEGIN op 2629 ( create custom_format "*Team T4KT" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Team T4KT', 'Film.2021.MULTi.1080p.WEB.x264-CHiLLTeam', 'movie', 0, NULL);
-- --- END op 2629

-- --- BEGIN op 2630 ( update custom_format "*Team T4KT" )
update "custom_formats" set "description" = 'Bonus attribué à la team T4KT, envers laquelle une confiance particulière a été établie. Le score dépasse l''écart de 600 points séparant x264 et x265, ce qui permet à une release T4KT en x264 de passer devant une x265 d''origine inconnue.

La détection porte sur le champ Release Group avec une regex ancrée, un boost de cette ampleur ne tolérant pas le faux positif.

Cette team n''est présente dans aucun CF de la biblio Trash, la regex est donc entièrement custom.' where "name" = '*Team T4KT' and "description" = 'Bonus attribué à la team CHiLL, envers laquelle une confiance particulière a été établie. Le score dépasse l''écart de 600 points séparant x264 et x265, ce qui permet à une release CHiLL en x264 de passer devant une x265 d''origine inconnue.

La détection porte sur le champ Release Group avec une regex ancrée, un boost de cette ampleur ne tolérant pas le faux positif.

Cette team n''est présente dans aucun CF de la biblio Trash, la regex est donc entièrement custom.';
-- --- END op 2630

-- --- BEGIN op 2631 ( update custom_format "*Team T4KT" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '*Team T4KT'
	  AND name = 'CHiLL tag'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 2631

-- --- BEGIN op 2632 ( update custom_format "*Team T4KT" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Team T4KT', 'T4KT tag', 'release_group', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Team T4KT', 'T4KT tag', '*Team -T4KT');
-- --- END op 2632

-- --- BEGIN op 2633 ( update custom_format "*Team T4KT" )
UPDATE custom_format_tests SET title = 'T4KT.2021.MULTi.1080p.WEB.x264-GROUP' WHERE custom_format_name = '*Team T4KT' AND title = 'CHiLL.2021.MULTi.1080p.WEB.x264-GROUP' AND type = 'movie';
-- --- END op 2633

-- --- BEGIN op 2634 ( update custom_format "*Team T4KT" )
UPDATE custom_format_tests SET title = 'Film.2021.MULTi.1080p.WEB.x264-T4KT' WHERE custom_format_name = '*Team T4KT' AND title = 'Film.2021.MULTi.1080p.WEB.x264-CHiLL' AND type = 'movie';
-- --- END op 2634

-- --- BEGIN op 2635 ( update custom_format "*Team T4KT" )
UPDATE custom_format_tests SET title = 'Film.2021.MULTi.1080p.WEB.x264-T4KTTeam' WHERE custom_format_name = '*Team T4KT' AND title = 'Film.2021.MULTi.1080p.WEB.x264-CHiLLTeam' AND type = 'movie';
-- --- END op 2635

-- --- BEGIN op 2636 ( create custom_format "*Team QTZ" )
insert into "custom_formats" ("name", "description") values ('*Team QTZ', '');
-- --- END op 2636

-- --- BEGIN op 2637 ( update custom_format "*Team QTZ" )
update "custom_formats" set "description" = 'Bonus attribué à la team T4KT, envers laquelle une confiance particulière a été établie. Le score dépasse l''écart de 600 points séparant x264 et x265, ce qui permet à une release T4KT en x264 de passer devant une x265 d''origine inconnue.

La détection porte sur le champ Release Group avec une regex ancrée, un boost de cette ampleur ne tolérant pas le faux positif.

Cette team n''est présente dans aucun CF de la biblio Trash, la regex est donc entièrement custom.' where "name" = '*Team QTZ' and "description" = '';
-- --- END op 2637

-- --- BEGIN op 2638 ( update custom_format "*Team QTZ" )
insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('*Team QTZ', 'Sseh');

insert into "tags" ("name") values ('Teams') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('*Team QTZ', 'Teams');
-- --- END op 2638

-- --- BEGIN op 2639 ( update custom_format "*Team QTZ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Team QTZ', 'T4KT tag', 'release_group', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Team QTZ', 'T4KT tag', '*Team -T4KT');
-- --- END op 2639

-- --- BEGIN op 2640 ( create custom_format "*Team QTZ" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Team QTZ', 'Film.2021.MULTi.1080p.WEB.x264-T4KT', 'movie', 1, NULL);
-- --- END op 2640

-- --- BEGIN op 2641 ( create custom_format "*Team QTZ" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Team QTZ', 'Film.2021.MULTi.1080p.WEB.x264-T4KTTeam', 'movie', 0, NULL);
-- --- END op 2641

-- --- BEGIN op 2642 ( create custom_format "*Team QTZ" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Team QTZ', 'T4KT.2021.MULTi.1080p.WEB.x264-GROUP', 'movie', 0, NULL);
-- --- END op 2642

-- --- BEGIN op 2643 ( update custom_format "*Team QTZ" )
update "custom_formats" set "description" = 'Bonus attribué à la team QTZ, envers laquelle une confiance particulière a été établie. Le score dépasse l''écart de 600 points séparant x264 et x265, ce qui permet à une release QTZ en x264 de passer devant une x265 d''origine inconnue.

La détection porte sur le champ Release Group avec une regex ancrée, un boost de cette ampleur ne tolérant pas le faux positif.

Cette team n''est présente dans aucun CF de la biblio Trash, la regex est donc entièrement custom.' where "name" = '*Team QTZ' and "description" = 'Bonus attribué à la team T4KT, envers laquelle une confiance particulière a été établie. Le score dépasse l''écart de 600 points séparant x264 et x265, ce qui permet à une release T4KT en x264 de passer devant une x265 d''origine inconnue.

La détection porte sur le champ Release Group avec une regex ancrée, un boost de cette ampleur ne tolérant pas le faux positif.

Cette team n''est présente dans aucun CF de la biblio Trash, la regex est donc entièrement custom.';
-- --- END op 2643

-- --- BEGIN op 2644 ( update custom_format "*Team QTZ" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '*Team QTZ'
	  AND name = 'T4KT tag'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 2644

-- --- BEGIN op 2645 ( update custom_format "*Team QTZ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Team QTZ', 'QTZ tag', 'release_group', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Team QTZ', 'QTZ tag', '*Team -QTZ');
-- --- END op 2645

-- --- BEGIN op 2646 ( update custom_format "*Team QTZ" )
UPDATE custom_format_tests SET title = 'Film.2021.MULTi.1080p.WEB.x264-QTZ' WHERE custom_format_name = '*Team QTZ' AND title = 'Film.2021.MULTi.1080p.WEB.x264-T4KT' AND type = 'movie';
-- --- END op 2646

-- --- BEGIN op 2647 ( update custom_format "*Team QTZ" )
UPDATE custom_format_tests SET title = 'Film.2021.MULTi.1080p.WEB.x264-QTZTeam' WHERE custom_format_name = '*Team QTZ' AND title = 'Film.2021.MULTi.1080p.WEB.x264-T4KTTeam' AND type = 'movie';
-- --- END op 2647

-- --- BEGIN op 2648 ( update custom_format "*Team QTZ" )
UPDATE custom_format_tests SET title = 'QTZ.2021.MULTi.1080p.WEB.x264-GROUP' WHERE custom_format_name = '*Team QTZ' AND title = 'T4KT.2021.MULTi.1080p.WEB.x264-GROUP' AND type = 'movie';
-- --- END op 2648

-- --- BEGIN op 2649 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '*Team QTZ', 'radarr', 605
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '*Team QTZ'
    AND arr_type = 'radarr'
);
-- --- END op 2649

-- --- BEGIN op 2650 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '*Team QTZ', 'sonarr', 605
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '*Team QTZ'
    AND arr_type = 'sonarr'
);
-- --- END op 2650

-- --- BEGIN op 2651 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '*Team T4KT', 'radarr', 605
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '*Team T4KT'
    AND arr_type = 'radarr'
);
-- --- END op 2651

-- --- BEGIN op 2652 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '*Team T4KT', 'sonarr', 605
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '*Team T4KT'
    AND arr_type = 'sonarr'
);
-- --- END op 2652

-- --- BEGIN op 2653 ( update quality_profile "Multi.VO - 2160p - YGG" )
update "quality_profiles" set "upgrade_score_increment" = 100 where "name" = 'Multi.VO - 2160p - YGG' and "upgrade_score_increment" = 1;
-- --- END op 2653

-- --- BEGIN op 2654 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = -601
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'LQ (Release Title)'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 2654

-- --- BEGIN op 2655 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = -601
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'LQ (Release Title)'
  AND arr_type = 'sonarr'
  AND score = -10000;
-- --- END op 2655

-- --- BEGIN op 2656 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'x264 (Codec)', 'radarr', 1400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'x264 (Codec)'
    AND arr_type = 'radarr'
);
-- --- END op 2656

-- --- BEGIN op 2657 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'x264 (Codec)', 'sonarr', 1400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'x264 (Codec)'
    AND arr_type = 'sonarr'
);
-- --- END op 2657

-- --- BEGIN op 2658 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'AAC', 'sonarr', 3
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'AAC'
    AND arr_type = 'sonarr'
);
-- --- END op 2658

-- --- BEGIN op 2659 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 2
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'DD'
  AND arr_type = 'radarr'
  AND score = 1;
-- --- END op 2659

-- --- BEGIN op 2660 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'DD', 'sonarr', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'DD'
    AND arr_type = 'sonarr'
);
-- --- END op 2660

-- --- BEGIN op 2661 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'DD+', 'sonarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'DD+'
    AND arr_type = 'sonarr'
);
-- --- END op 2661

-- --- BEGIN op 2662 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'DTS-HD MA', 'sonarr', -1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'DTS-HD MA'
    AND arr_type = 'sonarr'
);
-- --- END op 2662

-- --- BEGIN op 2663 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'SDR (2160p)', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'SDR (2160p)'
    AND arr_type = 'radarr'
);
-- --- END op 2663

-- --- BEGIN op 2664 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'SDR (2160p)', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'SDR (2160p)'
    AND arr_type = 'sonarr'
);
-- --- END op 2664

-- --- BEGIN op 2665 ( update quality_profile "Multi.VO - 2160p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'x265 (no HDR/DV)'
  AND arr_type = 'radarr'
  AND score = -15000;
-- --- END op 2665

-- --- BEGIN op 2666 ( update quality_profile "Multi.VO - 2160p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'x265 (no HDR/DV)'
  AND arr_type = 'sonarr'
  AND score = -15000;
-- --- END op 2666

-- --- BEGIN op 2667 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 605
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = '*Criterion Collection'
  AND arr_type = 'radarr'
  AND score = 0;
-- --- END op 2667

-- --- BEGIN op 2668 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 605
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = '*Criterion Collection'
  AND arr_type = 'sonarr'
  AND score = 0;
-- --- END op 2668

-- --- BEGIN op 2669 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 605
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = '*Remaster'
  AND arr_type = 'radarr'
  AND score = 0;
-- --- END op 2669

-- --- BEGIN op 2670 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 605
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = '*Remaster'
  AND arr_type = 'sonarr'
  AND score = 0;
-- --- END op 2670

-- --- BEGIN op 2671 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 605
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = '*Special Edition'
  AND arr_type = 'radarr'
  AND score = 0;
-- --- END op 2671

-- --- BEGIN op 2672 ( update quality_profile "Multi.VO - 2160p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 605
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = '*Special Edition'
  AND arr_type = 'sonarr'
  AND score = 0;
-- --- END op 2672

-- --- BEGIN op 2673 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '4K Remaster', 'radarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '4K Remaster'
    AND arr_type = 'radarr'
);
-- --- END op 2673

-- --- BEGIN op 2674 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '4K Remaster', 'sonarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '4K Remaster'
    AND arr_type = 'sonarr'
);
-- --- END op 2674

-- --- BEGIN op 2675 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'Bad Dual Groups', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'Bad Dual Groups'
    AND arr_type = 'radarr'
);
-- --- END op 2675

-- --- BEGIN op 2676 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'Bad Dual Groups', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'Bad Dual Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 2676

-- --- BEGIN op 2677 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'IMAX', 'radarr', 800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'IMAX'
    AND arr_type = 'radarr'
);
-- --- END op 2677

-- --- BEGIN op 2678 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'IMAX', 'sonarr', 800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'IMAX'
    AND arr_type = 'sonarr'
);
-- --- END op 2678

-- --- BEGIN op 2679 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'IMAX Enhanced', 'radarr', 800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'IMAX Enhanced'
    AND arr_type = 'radarr'
);
-- --- END op 2679

-- --- BEGIN op 2680 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'IMAX Enhanced', 'sonarr', 800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'IMAX Enhanced'
    AND arr_type = 'sonarr'
);
-- --- END op 2680

-- --- BEGIN op 2681 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'Obfuscated', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'Obfuscated'
    AND arr_type = 'radarr'
);
-- --- END op 2681

-- --- BEGIN op 2682 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', 'Obfuscated', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = 'Obfuscated'
    AND arr_type = 'sonarr'
);
-- --- END op 2682

-- --- BEGIN op 2683 ( update quality_profile "Multi.VO - 2160p - YGG" )
update "quality_profiles" set "description" = 'Profil personnalisé 2160p destiné à Radarr et Sonarr, conçu principalement pour une utilisation avec des trackers francophones.

Les scores privilégient d’abord la langue et les caractéristiques vidéo : les releases `Original + French` et leurs équivalents sans tag `MULTi` sont fortement favorisés, ainsi que le x265. Le x264 reste accepté comme solution de repli. Les teams de confiance et les éditions préférées peuvent ensuite départager ou dépasser une release d’origine inconnue, avec une priorité renforcée pour les versions IMAX et IMAX Enhanced.

Les qualités `Bluray-2160p`, `WEBDL-2160p` et `WEBRip-2160p` sont considérées comme équivalentes dans le groupe principal.

Les releases SDR en 2160p ainsi que les releases Dolby Vision sans fallback HDR sont rejetées. Les formats HDR10 et Dolby Vision avec fallback sont privilégiés.

Les upgrades par score utilisent un incrément minimal de 100 points afin que les préférences secondaires à faible score ne provoquent pas, seules, un nouveau téléchargement.' where "name" = 'Multi.VO - 2160p - YGG' and "description" is null;
-- --- END op 2683

-- --- BEGIN op 2684 ( update quality_profile "Multi.VO - 2160p - YGG" )
insert into "tags" ("name") values ('2160p') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Multi.VO - 2160p - YGG', '2160p');

insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Multi.VO - 2160p - YGG', 'Sseh');

insert into "tags" ("name") values ('fallback: x264') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Multi.VO - 2160p - YGG', 'fallback: x264');

insert into "tags" ("name") values ('x265') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Multi.VO - 2160p - YGG', 'x265');
-- --- END op 2684

-- --- BEGIN op 2685 ( update quality_profile "Multi.VO - 1080p - YGG" )
insert into "tags" ("name") values ('French') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Multi.VO - 1080p - YGG', 'French');
-- --- END op 2685
