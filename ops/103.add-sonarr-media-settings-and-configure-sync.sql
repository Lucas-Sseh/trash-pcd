-- @operation: export
-- @entity: batch
-- @name: Add Sonarr media settings and configure sync
-- @exportedAt: 2026-08-12T14:57:50.417Z
-- @opIds: 2754, 2755

-- --- BEGIN op 2754 ( update radarr_media_settings "*Default-Sseh (Radarr)" )
update "radarr_media_settings" set "name" = '*Default-Sseh (Radarr)' where "name" = '*Default-Sseh';
-- --- END op 2754

-- --- BEGIN op 2755 ( create sonarr_media_settings "*Default-Sseh (Sonarr)" )
insert into "sonarr_media_settings" ("name", "propers_repacks", "enable_media_info") values ('*Default-Sseh (Sonarr)', 'doNotPrefer', 1);
-- --- END op 2755
