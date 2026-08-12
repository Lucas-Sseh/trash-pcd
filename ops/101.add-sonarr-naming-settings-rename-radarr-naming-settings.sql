-- @operation: export
-- @entity: batch
-- @name: Add Sonarr naming settings | Rename Radarr naming settings
-- @exportedAt: 2026-08-12T14:13:44.021Z
-- @opIds: 2729, 2730, 2731

-- --- BEGIN op 2729 ( create sonarr_naming "*Default-Sseh (Sonarr)" )
insert into "sonarr_naming" ("name", "rename", "standard_episode_format", "daily_episode_format", "anime_episode_format", "series_folder_format", "season_folder_format", "replace_illegal_characters", "colon_replacement_format", "custom_colon_replacement_format", "multi_episode_style") values ('*Default-Sseh (Sonarr)', 1, '{Series CleanTitleWithoutYear} {(Series Year)} - S{season:00}E{episode:00} - {Episode CleanTitle:90} {[Custom Formats]}{[Quality Full]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{[MediaInfo VideoDynamicRangeType]}{[Mediainfo VideoCodec]}{-Release Group}', '{Series CleanTitleWithoutYear} {(Series Year)} - {Air-Date} - {Episode CleanTitle:90} {[Custom Formats]}{[Quality Full]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{[MediaInfo VideoDynamicRangeType]}{[Mediainfo VideoCodec]}{-Release Group}', '{Series CleanTitleWithoutYear} {(Series Year)} - S{season:00}E{episode:00} - {absolute:000} - {Episode CleanTitle:90} {[Custom Formats]}{[Quality Full]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{MediaInfo AudioLanguages}{[MediaInfo VideoDynamicRangeType]}[{Mediainfo VideoCodec }{MediaInfo VideoBitDepth}bit]{-Release Group}', '{Series CleanTitleWithoutYear} {(Series Year)}', 'Season {season:00}', 0, 4, NULL, 5);
-- --- END op 2729

-- --- BEGIN op 2730 ( update sonarr_naming "*Default-Sseh (Sonarr)" )
update "sonarr_naming" set "replace_illegal_characters" = 1 where "name" = '*Default-Sseh (Sonarr)' and "replace_illegal_characters" = 0;
-- --- END op 2730

-- --- BEGIN op 2731 ( update radarr_naming "*Default-Sseh (Radarr)" )
update "radarr_naming" set "name" = '*Default-Sseh (Radarr)' where "name" = '*Default-Sseh';
-- --- END op 2731
