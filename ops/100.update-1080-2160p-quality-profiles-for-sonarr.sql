-- @operation: export
-- @entity: batch
-- @name: Update 1080|2160p quality profiles for Sonarr
-- @exportedAt: 2026-08-12T13:40:24.040Z
-- @opIds: 2699, 2700, 2701, 2702, 2703, 2704, 2705, 2706, 2707, 2708, 2709, 2710, 2711, 2712, 2713, 2714, 2715, 2716, 2717, 2718, 2719, 2720, 2721, 2722, 2723, 2724, 2725, 2726

-- --- BEGIN op 2699 ( update quality_profile "Multi.VO - 1080p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND custom_format_name = '*Criterion Collection'
  AND arr_type = 'sonarr'
  AND score = 605;
-- --- END op 2699

-- --- BEGIN op 2700 ( update quality_profile "Multi.VO - 1080p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND custom_format_name = '*Special Edition'
  AND arr_type = 'sonarr'
  AND score = 605;
-- --- END op 2700

-- --- BEGIN op 2701 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'ATV', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'ATV'
    AND arr_type = 'sonarr'
);
-- --- END op 2701

-- --- BEGIN op 2702 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'CC', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'CC'
    AND arr_type = 'sonarr'
);
-- --- END op 2702

-- --- BEGIN op 2703 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'DCU', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'DCU'
    AND arr_type = 'sonarr'
);
-- --- END op 2703

-- --- BEGIN op 2704 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'FastSUB', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'FastSUB'
    AND arr_type = 'sonarr'
);
-- --- END op 2704

-- --- BEGIN op 2705 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'PLAY', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'PLAY'
    AND arr_type = 'sonarr'
);
-- --- END op 2705

-- --- BEGIN op 2706 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'ROKU', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'ROKU'
    AND arr_type = 'sonarr'
);
-- --- END op 2706

-- --- BEGIN op 2707 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'SHO', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'SHO'
    AND arr_type = 'sonarr'
);
-- --- END op 2707

-- --- BEGIN op 2708 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'Upscaled', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'Upscaled'
    AND arr_type = 'radarr'
);
-- --- END op 2708

-- --- BEGIN op 2709 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'Upscaled', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'Upscaled'
    AND arr_type = 'sonarr'
);
-- --- END op 2709

-- --- BEGIN op 2710 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'VF2', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'VF2'
    AND arr_type = 'radarr'
);
-- --- END op 2710

-- --- BEGIN op 2711 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'VF2', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'VF2'
    AND arr_type = 'sonarr'
);
-- --- END op 2711

-- --- BEGIN op 2712 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'VFI', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'VFI'
    AND arr_type = 'radarr'
);
-- --- END op 2712

-- --- BEGIN op 2713 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'VFI', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'VFI'
    AND arr_type = 'sonarr'
);
-- --- END op 2713

-- --- BEGIN op 2714 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'VOF', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'VOF'
    AND arr_type = 'radarr'
);
-- --- END op 2714

-- --- BEGIN op 2715 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'VOF', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'VOF'
    AND arr_type = 'sonarr'
);
-- --- END op 2715

-- --- BEGIN op 2716 ( update quality_profile "Multi.VO - 2160p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = '*Criterion Collection'
  AND arr_type = 'sonarr'
  AND score = 605;
-- --- END op 2716

-- --- BEGIN op 2717 ( update quality_profile "Multi.VO - 2160p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = '*Special Edition'
  AND arr_type = 'sonarr'
  AND score = 605;
-- --- END op 2717

-- --- BEGIN op 2718 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'WEB Scene', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'WEB Scene'
    AND arr_type = 'sonarr'
);
-- --- END op 2718

-- --- BEGIN op 2719 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'WEB Tier 01', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'WEB Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 2719

-- --- BEGIN op 2720 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'WEB Tier 01', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'WEB Tier 01'
    AND arr_type = 'sonarr'
);
-- --- END op 2720

-- --- BEGIN op 2721 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'WEB Tier 02', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'WEB Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 2721

-- --- BEGIN op 2722 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'WEB Tier 02', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'WEB Tier 02'
    AND arr_type = 'sonarr'
);
-- --- END op 2722

-- --- BEGIN op 2723 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'WEB Tier 03', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'WEB Tier 03'
    AND arr_type = 'radarr'
);
-- --- END op 2723

-- --- BEGIN op 2724 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'WEB Tier 03', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'WEB Tier 03'
    AND arr_type = 'sonarr'
);
-- --- END op 2724

-- --- BEGIN op 2725 ( update quality_profile "Multi.VO - 2160p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'HD Streaming Boost'
  AND arr_type = 'sonarr'
  AND score = 0;
-- --- END op 2725

-- --- BEGIN op 2726 ( update quality_profile "Multi.VO - 2160p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 2160p - YGG'
  AND custom_format_name = 'UHD Streaming Boost'
  AND arr_type = 'sonarr'
  AND score = 0;
-- --- END op 2726
