-- @operation: export
-- @entity: batch
-- @name: Add Sonarr Remux exclusion to *Notag - x264 x265
-- @exportedAt: 2026-08-11T06:34:05.042Z
-- @opIds: 2098, 2099

-- --- BEGIN op 2098 ( update custom_format "*Notag - x264 x265" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Notag - x264 x265', 'Not Remux (Sonarr)', 'source', 'sonarr', 1, 1);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('*Notag - x264 x265', 'Not Remux (Sonarr)', 'bluray_raw');
-- --- END op 2098

-- --- BEGIN op 2099 ( update custom_format "*Notag - x264 x265" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = '*Notag - x264 x265'
  AND name = 'Not Remux'
  AND type = 'quality_modifier'
  AND arr_type = 'all'
  AND negate = 1
  AND required = 1;
-- --- END op 2099
