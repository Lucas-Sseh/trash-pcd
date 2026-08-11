-- ============================================================================
-- Dynamically rebuild *LQ & FR LQ from the current upstream LQ and FR LQ CFs.
--
-- This tweak runs after all Base operations, so any conditions added or
-- modified upstream are inherited automatically on every compile.
--
-- Conditions are prefixed with their source CF name to avoid collisions
-- between LQ and FR LQ.
-- ============================================================================


-- Remove the previous snapshot of conditions.
-- Child rows in condition_* tables are removed automatically through FK
-- ON DELETE CASCADE.

DELETE FROM custom_format_conditions
WHERE custom_format_name = '*LQ & FR LQ';


-- ============================================================================
-- Parent conditions
-- ============================================================================

INSERT INTO custom_format_conditions (
    custom_format_name,
    name,
    type,
    arr_type,
    negate,
    required
)
SELECT
    '*LQ & FR LQ',
    'LQ :: ' || name,
    type,
    arr_type,
    negate,
    required
FROM custom_format_conditions
WHERE custom_format_name = 'LQ';


INSERT INTO custom_format_conditions (
    custom_format_name,
    name,
    type,
    arr_type,
    negate,
    required
)
SELECT
    '*LQ & FR LQ',
    'FR LQ :: ' || name,
    type,
    arr_type,
    negate,
    required
FROM custom_format_conditions
WHERE custom_format_name = 'FR LQ';


-- ============================================================================
-- Pattern conditions
-- release_title / release_group / edition
-- ============================================================================

INSERT INTO condition_patterns (
    custom_format_name,
    condition_name,
    regular_expression_name
)
SELECT
    '*LQ & FR LQ',
    'LQ :: ' || condition_name,
    regular_expression_name
FROM condition_patterns
WHERE custom_format_name = 'LQ';


INSERT INTO condition_patterns (
    custom_format_name,
    condition_name,
    regular_expression_name
)
SELECT
    '*LQ & FR LQ',
    'FR LQ :: ' || condition_name,
    regular_expression_name
FROM condition_patterns
WHERE custom_format_name = 'FR LQ';


-- ============================================================================
-- Language conditions
-- ============================================================================

INSERT INTO condition_languages (
    custom_format_name,
    condition_name,
    language_name,
    except_language
)
SELECT
    '*LQ & FR LQ',
    'LQ :: ' || condition_name,
    language_name,
    except_language
FROM condition_languages
WHERE custom_format_name = 'LQ';


INSERT INTO condition_languages (
    custom_format_name,
    condition_name,
    language_name,
    except_language
)
SELECT
    '*LQ & FR LQ',
    'FR LQ :: ' || condition_name,
    language_name,
    except_language
FROM condition_languages
WHERE custom_format_name = 'FR LQ';


-- ============================================================================
-- Indexer flag conditions
-- ============================================================================

INSERT INTO condition_indexer_flags (
    custom_format_name,
    condition_name,
    flag
)
SELECT
    '*LQ & FR LQ',
    'LQ :: ' || condition_name,
    flag
FROM condition_indexer_flags
WHERE custom_format_name = 'LQ';


INSERT INTO condition_indexer_flags (
    custom_format_name,
    condition_name,
    flag
)
SELECT
    '*LQ & FR LQ',
    'FR LQ :: ' || condition_name,
    flag
FROM condition_indexer_flags
WHERE custom_format_name = 'FR LQ';


-- ============================================================================
-- Source conditions
-- ============================================================================

INSERT INTO condition_sources (
    custom_format_name,
    condition_name,
    source
)
SELECT
    '*LQ & FR LQ',
    'LQ :: ' || condition_name,
    source
FROM condition_sources
WHERE custom_format_name = 'LQ';


INSERT INTO condition_sources (
    custom_format_name,
    condition_name,
    source
)
SELECT
    '*LQ & FR LQ',
    'FR LQ :: ' || condition_name,
    source
FROM condition_sources
WHERE custom_format_name = 'FR LQ';


-- ============================================================================
-- Resolution conditions
-- ============================================================================

INSERT INTO condition_resolutions (
    custom_format_name,
    condition_name,
    resolution
)
SELECT
    '*LQ & FR LQ',
    'LQ :: ' || condition_name,
    resolution
FROM condition_resolutions
WHERE custom_format_name = 'LQ';


INSERT INTO condition_resolutions (
    custom_format_name,
    condition_name,
    resolution
)
SELECT
    '*LQ & FR LQ',
    'FR LQ :: ' || condition_name,
    resolution
FROM condition_resolutions
WHERE custom_format_name = 'FR LQ';


-- ============================================================================
-- Quality modifier conditions
-- ============================================================================

INSERT INTO condition_quality_modifiers (
    custom_format_name,
    condition_name,
    quality_modifier
)
SELECT
    '*LQ & FR LQ',
    'LQ :: ' || condition_name,
    quality_modifier
FROM condition_quality_modifiers
WHERE custom_format_name = 'LQ';


INSERT INTO condition_quality_modifiers (
    custom_format_name,
    condition_name,
    quality_modifier
)
SELECT
    '*LQ & FR LQ',
    'FR LQ :: ' || condition_name,
    quality_modifier
FROM condition_quality_modifiers
WHERE custom_format_name = 'FR LQ';


-- ============================================================================
-- Size conditions
-- ============================================================================

INSERT INTO condition_sizes (
    custom_format_name,
    condition_name,
    min_bytes,
    max_bytes
)
SELECT
    '*LQ & FR LQ',
    'LQ :: ' || condition_name,
    min_bytes,
    max_bytes
FROM condition_sizes
WHERE custom_format_name = 'LQ';


INSERT INTO condition_sizes (
    custom_format_name,
    condition_name,
    min_bytes,
    max_bytes
)
SELECT
    '*LQ & FR LQ',
    'FR LQ :: ' || condition_name,
    min_bytes,
    max_bytes
FROM condition_sizes
WHERE custom_format_name = 'FR LQ';


-- ============================================================================
-- Release type conditions
-- ============================================================================

INSERT INTO condition_release_types (
    custom_format_name,
    condition_name,
    release_type
)
SELECT
    '*LQ & FR LQ',
    'LQ :: ' || condition_name,
    release_type
FROM condition_release_types
WHERE custom_format_name = 'LQ';


INSERT INTO condition_release_types (
    custom_format_name,
    condition_name,
    release_type
)
SELECT
    '*LQ & FR LQ',
    'FR LQ :: ' || condition_name,
    release_type
FROM condition_release_types
WHERE custom_format_name = 'FR LQ';


-- ============================================================================
-- Year conditions
-- ============================================================================

INSERT INTO condition_years (
    custom_format_name,
    condition_name,
    min_year,
    max_year
)
SELECT
    '*LQ & FR LQ',
    'LQ :: ' || condition_name,
    min_year,
    max_year
FROM condition_years
WHERE custom_format_name = 'LQ';


INSERT INTO condition_years (
    custom_format_name,
    condition_name,
    min_year,
    max_year
)
SELECT
    '*LQ & FR LQ',
    'FR LQ :: ' || condition_name,
    min_year,
    max_year
FROM condition_years
WHERE custom_format_name = 'FR LQ';
