-- @operation: export
-- @entity: batch
-- @name: Add CF Saison pack for Sonarr
-- @exportedAt: 2026-08-12T15:47:37.070Z
-- @opIds: 2757

-- --- BEGIN op 2757 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'Season Pack', 'sonarr', 150
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'Season Pack'
    AND arr_type = 'sonarr'
);
-- --- END op 2757
