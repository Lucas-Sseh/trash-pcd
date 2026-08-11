-- @operation: export
-- @entity: batch
-- @name: Disable Sonarr for Radarr-only CFs in 2160p QP
-- @exportedAt: 2026-08-11T21:08:53.528Z
-- @opIds: 2687, 2688, 2689

-- --- BEGIN op 2687 ( update quality_profile "Multi.VO - 2160p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = '4K Remaster'
  AND arr_type = 'sonarr'
  AND score = 25;
-- --- END op 2687

-- --- BEGIN op 2688 ( update quality_profile "Multi.VO - 2160p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'IMAX'
  AND arr_type = 'sonarr'
  AND score = 800;
-- --- END op 2688

-- --- BEGIN op 2689 ( update quality_profile "Multi.VO - 2160p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'IMAX Enhanced'
  AND arr_type = 'sonarr'
  AND score = 800;
-- --- END op 2689
