-- Remove selected upstream Radarr and Sonarr media management presets
-- from the compiled personal PCD.
--
-- The upstream presets remain untouched in Base.
-- To make a preset visible again, comment its corresponding line below.
--
-- Quality Profiles are intentionally not modified here.

-- Media Settings

DELETE FROM radarr_media_settings
WHERE name IN (
    'Default',
    '__sseh_no_match__'
);

DELETE FROM sonarr_media_settings
WHERE name IN (
    'Default',
    '__sseh_no_match__'
);

-- Naming Settings

DELETE FROM radarr_naming
WHERE name IN (
    'Default',
    'Emby Anime IMDB',
    'Emby Anime TMDB',
    'Emby IMDB',
    'Emby TMDB',
    'Jellyfin Anime IMDB',
    'Jellyfin Anime TMDB',
    'Jellyfin IMDB',
    'Jellyfin TMDB',
    'Original',
    'P2P Scene',
    'Plex Anime IMDB',
    'Plex Anime TMDB',
    'Plex IMDB',
    'Plex TMDB',
    '__sseh_no_match__'
);

DELETE FROM sonarr_naming
WHERE name IN (
    'Default',
    'Emby IMDB',
    'Emby TVDB',
    'Jellyfin TVDB',
    'Original',
    'P2P Scene',
    'Plex IMDB',
    'Plex TVDB',
    '__sseh_no_match__'
);

-- Quality Definitions

DELETE FROM radarr_quality_definitions
WHERE name IN (
    'Anime',
    'Movie',
    '__sseh_no_match__'
);

DELETE FROM sonarr_quality_definitions
WHERE name IN (
    'Anime',
    'Series',
    '__sseh_no_match__'
);
