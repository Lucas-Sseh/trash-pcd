-- Remove upstream Radarr media management presets from the compiled PCD.
-- The upstream presets remain untouched in Base and can continue receiving updates.
-- Personal replacements are provided by *Default-Sseh where applicable.

-- Media Settings
DELETE FROM radarr_media_settings
WHERE name = 'Default';

-- Naming
-- Anime-specific naming presets are intentionally kept.
DELETE FROM radarr_naming
WHERE name IN (
    'Default',
    'Emby IMDB',
    'Emby TMDB',
    'Jellyfin IMDB',
    'Jellyfin TMDB',
    'Original',
    'P2P Scene',
    'Plex IMDB',
    'Plex TMDB'
);

-- Quality Definitions
DELETE FROM radarr_quality_definitions
WHERE name IN (
    'Anime',
    'Movie'
);
