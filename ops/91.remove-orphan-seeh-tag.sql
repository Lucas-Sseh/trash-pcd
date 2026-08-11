-- Remove orphan typo tag "Seeh".
-- The incorrect *MULTISUB association was already removed and
-- replaced by the correct "Sseh" tag in an earlier Base operation.

DELETE FROM tags
WHERE name = 'Seeh'
  AND NOT EXISTS (
    SELECT 1
    FROM regular_expression_tags
    WHERE tag_name = 'Seeh'
  )
  AND NOT EXISTS (
    SELECT 1
    FROM custom_format_tags
    WHERE tag_name = 'Seeh'
  )
  AND NOT EXISTS (
    SELECT 1
    FROM quality_profile_tags
    WHERE tag_name = 'Seeh'
  );
