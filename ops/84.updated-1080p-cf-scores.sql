-- @operation: export
-- @entity: batch
-- @name: Updated 1080p CF scores
-- @exportedAt: 2026-08-11T08:00:58.449Z
-- @opIds: 2173, 2174, 2175, 2176, 2177, 2178, 2179, 2180, 2181, 2182

-- --- BEGIN op 2173 ( update quality_profile "Multi.VO - 1080p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 1020
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND custom_format_name = '*Language FR EN (no MULTi) (Radarr)'
  AND arr_type = 'radarr'
  AND score = 1004;
-- --- END op 2173

-- --- BEGIN op 2174 ( update quality_profile "Multi.VO - 1080p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 1020
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND custom_format_name = '*Language FR EN (no MULTi) (Sonarr)'
  AND arr_type = 'sonarr'
  AND score = 1004;
-- --- END op 2174

-- --- BEGIN op 2175 ( update quality_profile "Multi.VO - 1080p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 1020
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND custom_format_name = 'Language: Original + French'
  AND arr_type = 'radarr'
  AND score = 1004;
-- --- END op 2175

-- --- BEGIN op 2176 ( update quality_profile "Multi.VO - 1080p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 1020
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND custom_format_name = 'Language: Original + French'
  AND arr_type = 'sonarr'
  AND score = 1004;
-- --- END op 2176

-- --- BEGIN op 2177 ( update quality_profile "Multi.VO - 1080p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 100
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND custom_format_name = 'Repack/Proper'
  AND arr_type = 'radarr'
  AND score = 5;
-- --- END op 2177

-- --- BEGIN op 2178 ( update quality_profile "Multi.VO - 1080p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 100
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND custom_format_name = 'Repack/Proper'
  AND arr_type = 'sonarr'
  AND score = 5;
-- --- END op 2178

-- --- BEGIN op 2179 ( update quality_profile "Multi.VO - 1080p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 200
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND custom_format_name = 'Repack2'
  AND arr_type = 'radarr'
  AND score = 6;
-- --- END op 2179

-- --- BEGIN op 2180 ( update quality_profile "Multi.VO - 1080p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 200
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND custom_format_name = 'Repack2'
  AND arr_type = 'sonarr'
  AND score = 6;
-- --- END op 2180

-- --- BEGIN op 2181 ( update quality_profile "Multi.VO - 1080p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 300
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND custom_format_name = 'Repack3'
  AND arr_type = 'radarr'
  AND score = 7;
-- --- END op 2181

-- --- BEGIN op 2182 ( update quality_profile "Multi.VO - 1080p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 300
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND custom_format_name = 'Repack3'
  AND arr_type = 'sonarr'
  AND score = 7;
-- --- END op 2182
