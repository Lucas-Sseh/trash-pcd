-- @operation: export
-- @entity: batch
-- @name: Add unwanted resolution penalties to 1080p and 2160p profiles
-- @exportedAt: 2026-08-12T11:48:14.830Z
-- @opIds: 2691, 2692, 2693, 2694

-- --- BEGIN op 2691 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '2160p', 'radarr', -20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '2160p'
    AND arr_type = 'radarr'
);
-- --- END op 2691

-- --- BEGIN op 2692 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '2160p', 'sonarr', -20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '2160p'
    AND arr_type = 'sonarr'
);
-- --- END op 2692

-- --- BEGIN op 2693 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '1080p', 'radarr', -20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '1080p'
    AND arr_type = 'radarr'
);
-- --- END op 2693

-- --- BEGIN op 2694 ( update quality_profile "Multi.VO - 2160p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 2160p - YGG', '1080p', 'sonarr', -20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
    AND custom_format_name = '1080p'
    AND arr_type = 'sonarr'
);
-- --- END op 2694
