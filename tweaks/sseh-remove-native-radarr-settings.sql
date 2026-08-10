-- Remove upstream Radarr media and naming presets from the compiled PCD.
-- The upstream presets remain untouched in Base and can continue receiving updates.
-- Personal replacements are provided by *Default-Sseh.

DELETE FROM radarr_media_settings
WHERE name = 'Default';

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
