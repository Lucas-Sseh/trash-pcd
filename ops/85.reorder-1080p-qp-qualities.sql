-- @operation: export
-- @entity: batch
-- @name: Reorder 1080p QP Qualities
-- @exportedAt: 2026-08-11T08:27:00.783Z
-- @opIds: 2184

-- --- BEGIN op 2184 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Multi.VO - 1080p - YGG', 'HDTV-1080p', NULL, 1, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND quality_name = 'HDTV-1080p'
    AND quality_group_name IS NULL
);

UPDATE quality_profile_qualities
SET position = 2
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND quality_name = 'Bluray-720p'
  AND quality_group_name IS NULL
  AND position = 1
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 3
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND quality_group_name = 'WEBDL | Rip 720p'
  AND quality_name IS NULL
  AND position = 2
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 4
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND quality_name = 'HDTV-720p'
  AND quality_group_name IS NULL
  AND position = 3
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 5
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND quality_name = 'Remux-2160p'
  AND quality_group_name IS NULL
  AND position = 4
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 6
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND quality_name = 'Bluray-2160p'
  AND quality_group_name IS NULL
  AND position = 5
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 7
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND quality_name = 'WEBDL-2160p'
  AND quality_group_name IS NULL
  AND position = 6
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 8
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND quality_name = 'WEBRip-2160p'
  AND quality_group_name IS NULL
  AND position = 7
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 9
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND quality_name = 'HDTV-2160p'
  AND quality_group_name IS NULL
  AND position = 8
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 10
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND quality_name = 'Remux-1080p'
  AND quality_group_name IS NULL
  AND position = 9
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 11
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND quality_name = 'Bluray-576p'
  AND quality_group_name IS NULL
  AND position = 10
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 12
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND quality_name = 'Bluray-480p'
  AND quality_group_name IS NULL
  AND position = 11
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 13
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND quality_name = 'WEBDL-480p'
  AND quality_group_name IS NULL
  AND position = 12
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 14
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND quality_name = 'WEBRip-480p'
  AND quality_group_name IS NULL
  AND position = 13
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 15
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND quality_name = 'HDTV-480p'
  AND quality_group_name IS NULL
  AND position = 14
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 16
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND quality_name = 'DVD-R'
  AND quality_group_name IS NULL
  AND position = 15
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 17
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND quality_name = 'DVD'
  AND quality_group_name IS NULL
  AND position = 16
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 18
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND quality_name = 'SDTV'
  AND quality_group_name IS NULL
  AND position = 17
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 19
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND quality_group_name = 'Pre-releases'
  AND quality_name IS NULL
  AND position = 18
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 20
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND quality_group_name = 'Unwanted'
  AND quality_name IS NULL
  AND position = 19
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND quality_group_name = 'Bluray|WEB 1080p'
  AND (SELECT COUNT(*)
FROM quality_group_members
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND quality_group_name = 'Bluray|WEB 1080p') = 4
  AND NOT EXISTS (
    SELECT 1
    FROM quality_group_members
    WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND quality_group_name = 'Bluray|WEB 1080p'
      AND quality_name NOT IN ('WEBDL-1080p', 'WEBRip-1080p', 'Bluray-1080p', 'HDTV-1080p')
  )
  AND (
    NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND quality_group_name = 'Bluray|WEB 1080p'
        AND NOT (
          (quality_name = 'WEBDL-1080p'
        AND position = 0)
      OR (quality_name = 'WEBRip-1080p'
        AND position = 1)
      OR (quality_name = 'Bluray-1080p'
        AND position = 2)
      OR (quality_name = 'HDTV-1080p'
        AND position = 3)
        )
    )
    OR NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND quality_group_name = 'Bluray|WEB 1080p'
        AND position != 0
    )
  );

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
WITH can_insert AS (
  SELECT (
    SELECT COUNT(*)
    FROM quality_group_members
    WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
      AND quality_group_name = 'Bluray|WEB 1080p'
  ) = 0 AS ok
),
new_rows AS (
SELECT 'Multi.VO - 1080p - YGG' AS quality_profile_name, 'Bluray|WEB 1080p' AS quality_group_name, 'WEBDL-1080p' AS quality_name, 0 AS position
UNION ALL
SELECT 'Multi.VO - 1080p - YGG' AS quality_profile_name, 'Bluray|WEB 1080p' AS quality_group_name, 'WEBRip-1080p' AS quality_name, 1 AS position
UNION ALL
SELECT 'Multi.VO - 1080p - YGG' AS quality_profile_name, 'Bluray|WEB 1080p' AS quality_group_name, 'Bluray-1080p' AS quality_name, 2 AS position
)
SELECT
  new_rows.quality_profile_name,
  new_rows.quality_group_name,
  new_rows.quality_name,
  new_rows.position
FROM new_rows
CROSS JOIN can_insert
WHERE ok;
-- --- END op 2184
