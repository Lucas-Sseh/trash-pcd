-- @operation: export
-- @entity: batch
-- @name: Disable Sonarr for Radarr-only CF in 1080p QP
-- @exportedAt: 2026-08-11T06:22:12.278Z
-- @opIds: 2081, 2082, 2083, 2084, 2085, 2086, 2087, 2088, 2089, 2090, 2091, 2092, 2093, 2094, 2095, 2096

-- --- BEGIN op 2081 ( update quality_profile "Multi.VO - 1080p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND custom_format_name = '3D'
  AND arr_type = 'sonarr'
  AND score = -10000;
-- --- END op 2081

-- --- BEGIN op 2082 ( update quality_profile "Multi.VO - 1080p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND custom_format_name = '4K Remaster'
  AND arr_type = 'sonarr'
  AND score = 25;
-- --- END op 2082

-- --- BEGIN op 2083 ( update quality_profile "Multi.VO - 1080p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND custom_format_name = 'CRiT'
  AND arr_type = 'sonarr'
  AND score = 0;
-- --- END op 2083

-- --- BEGIN op 2084 ( update quality_profile "Multi.VO - 1080p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND custom_format_name = 'FR HD Bluray Tier 02'
  AND arr_type = 'sonarr'
  AND score = 0;
-- --- END op 2084

-- --- BEGIN op 2085 ( update quality_profile "Multi.VO - 1080p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND custom_format_name = 'FR Remux Tier 02'
  AND arr_type = 'sonarr'
  AND score = 0;
-- --- END op 2085

-- --- BEGIN op 2086 ( update quality_profile "Multi.VO - 1080p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND custom_format_name = 'FR UHD Bluray Tier 01'
  AND arr_type = 'sonarr'
  AND score = 0;
-- --- END op 2086

-- --- BEGIN op 2087 ( update quality_profile "Multi.VO - 1080p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND custom_format_name = 'FR UHD Bluray Tier 02'
  AND arr_type = 'sonarr'
  AND score = 0;
-- --- END op 2087

-- --- BEGIN op 2088 ( update quality_profile "Multi.VO - 1080p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND custom_format_name = 'HD Bluray Tier 03'
  AND arr_type = 'sonarr'
  AND score = 0;
-- --- END op 2088

-- --- BEGIN op 2089 ( update quality_profile "Multi.VO - 1080p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND custom_format_name = 'IMAX'
  AND arr_type = 'sonarr'
  AND score = 150;
-- --- END op 2089

-- --- BEGIN op 2090 ( update quality_profile "Multi.VO - 1080p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND custom_format_name = 'IMAX Enhanced'
  AND arr_type = 'sonarr'
  AND score = 150;
-- --- END op 2090

-- --- BEGIN op 2091 ( update quality_profile "Multi.VO - 1080p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND custom_format_name = 'MA'
  AND arr_type = 'sonarr'
  AND score = 0;
-- --- END op 2091

-- --- BEGIN op 2092 ( update quality_profile "Multi.VO - 1080p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND custom_format_name = 'Masters of Cinema'
  AND arr_type = 'sonarr'
  AND score = 0;
-- --- END op 2092

-- --- BEGIN op 2093 ( update quality_profile "Multi.VO - 1080p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND custom_format_name = 'Remux Tier 03'
  AND arr_type = 'sonarr'
  AND score = 0;
-- --- END op 2093

-- --- BEGIN op 2094 ( update quality_profile "Multi.VO - 1080p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND custom_format_name = 'UHD Bluray Tier 01'
  AND arr_type = 'sonarr'
  AND score = 0;
-- --- END op 2094

-- --- BEGIN op 2095 ( update quality_profile "Multi.VO - 1080p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND custom_format_name = 'UHD Bluray Tier 02'
  AND arr_type = 'sonarr'
  AND score = 0;
-- --- END op 2095

-- --- BEGIN op 2096 ( update quality_profile "Multi.VO - 1080p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND custom_format_name = 'UHD Bluray Tier 03'
  AND arr_type = 'sonarr'
  AND score = 0;
-- --- END op 2096
