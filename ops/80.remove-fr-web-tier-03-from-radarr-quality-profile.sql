-- @operation: export
-- @entity: batch
-- @name: Remove FR WEB Tier 03 from Radarr quality profile
-- @exportedAt: 2026-08-10T22:41:09.007Z
-- @opIds: 1867

-- --- BEGIN op 1867 ( update quality_profile "Multi.VO - 1080p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND custom_format_name = 'FR WEB Tier 03'
  AND arr_type = 'radarr'
  AND score = 0;
-- --- END op 1867
