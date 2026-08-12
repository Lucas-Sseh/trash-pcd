-- @operation: export
-- @entity: batch
-- @name: Add 720p resolution penalty to 2160p profile
-- @exportedAt: 2026-08-12T11:56:43.488Z
-- @opIds: 2696, 2697

-- --- BEGIN op 2696 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '720p', 'radarr', -20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '720p'
    AND arr_type = 'radarr'
);
-- --- END op 2696

-- --- BEGIN op 2697 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '720p', 'sonarr', -20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '720p'
    AND arr_type = 'sonarr'
);
-- --- END op 2697
