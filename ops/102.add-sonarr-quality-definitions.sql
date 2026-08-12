-- @operation: export
-- @entity: batch
-- @name: Add Sonarr Quality Definitions
-- @exportedAt: 2026-08-12T14:48:53.157Z
-- @opIds: 2733, 2734, 2735, 2736, 2737, 2738, 2739, 2740, 2741, 2742, 2743, 2744, 2745, 2746, 2747, 2748, 2749, 2750, 2751, 2752

-- --- BEGIN op 2733 ( create sonarr_quality_definitions "*Series-Sseh" )
insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('*Series-Sseh', 'Bluray-1080p', 50.4, 0, 995);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('*Series-Sseh', 'Bluray-2160p', 94.6, 0, 995);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('*Series-Sseh', 'Bluray-720p', 17.1, 0, 995);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('*Series-Sseh', 'HDTV-1080p', 15, 0, 995);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('*Series-Sseh', 'HDTV-2160p', 25, 0, 995);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('*Series-Sseh', 'HDTV-720p', 10, 0, 995);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('*Series-Sseh', 'Remux-1080p', 69.1, 0, 995);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('*Series-Sseh', 'Remux-2160p', 187.4, 0, 995);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('*Series-Sseh', 'WEBDL-1080p', 15, 0, 995);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('*Series-Sseh', 'WEBDL-2160p', 25, 0, 995);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('*Series-Sseh', 'WEBDL-720p', 10, 0, 995);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('*Series-Sseh', 'WEBRip-1080p', 15, 0, 995);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('*Series-Sseh', 'WEBRip-2160p', 25, 0, 995);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('*Series-Sseh', 'WEBRip-720p', 10, 0, 995);
-- --- END op 2733

-- --- BEGIN op 2734 ( update sonarr_quality_definitions "*Series-Sseh" )
update "sonarr_quality_definitions" set "min_size" = 8, "max_size" = 128, "preferred_size" = 60 where "name" = '*Series-Sseh' and "quality_name" = 'Bluray-1080p' and "min_size" = 50.4 and "max_size" = 0 and "preferred_size" = 995;
-- --- END op 2734

-- --- BEGIN op 2735 ( update sonarr_quality_definitions "*Series-Sseh" )
update "sonarr_quality_definitions" set "min_size" = 20, "max_size" = 300, "preferred_size" = 120 where "name" = '*Series-Sseh' and "quality_name" = 'Bluray-2160p' and "min_size" = 94.6 and "max_size" = 0 and "preferred_size" = 995;
-- --- END op 2735

-- --- BEGIN op 2736 ( update sonarr_quality_definitions "*Series-Sseh" )
update "sonarr_quality_definitions" set "min_size" = 4, "max_size" = 60, "preferred_size" = 25 where "name" = '*Series-Sseh' and "quality_name" = 'Bluray-720p' and "min_size" = 17.1 and "max_size" = 0 and "preferred_size" = 995;
-- --- END op 2736

-- --- BEGIN op 2737 ( update sonarr_quality_definitions "*Series-Sseh" )
update "sonarr_quality_definitions" set "min_size" = 8, "max_size" = 128, "preferred_size" = 60 where "name" = '*Series-Sseh' and "quality_name" = 'HDTV-1080p' and "min_size" = 15 and "max_size" = 0 and "preferred_size" = 995;
-- --- END op 2737

-- --- BEGIN op 2738 ( update sonarr_quality_definitions "*Series-Sseh" )
update "sonarr_quality_definitions" set "min_size" = 20, "max_size" = 300, "preferred_size" = 120 where "name" = '*Series-Sseh' and "quality_name" = 'HDTV-2160p' and "min_size" = 25 and "max_size" = 0 and "preferred_size" = 995;
-- --- END op 2738

-- --- BEGIN op 2739 ( update sonarr_quality_definitions "*Series-Sseh" )
update "sonarr_quality_definitions" set "min_size" = 4, "max_size" = 60, "preferred_size" = 25 where "name" = '*Series-Sseh' and "quality_name" = 'HDTV-720p' and "min_size" = 10 and "max_size" = 0 and "preferred_size" = 995;
-- --- END op 2739

-- --- BEGIN op 2740 ( update sonarr_quality_definitions "*Series-Sseh" )
update "sonarr_quality_definitions" set "min_size" = 100, "max_size" = 0, "preferred_size" = 250 where "name" = '*Series-Sseh' and "quality_name" = 'Remux-1080p' and "min_size" = 69.1 and "max_size" = 0 and "preferred_size" = 995;
-- --- END op 2740

-- --- BEGIN op 2741 ( update sonarr_quality_definitions "*Series-Sseh" )
update "sonarr_quality_definitions" set "min_size" = 185, "max_size" = 0, "preferred_size" = 500 where "name" = '*Series-Sseh' and "quality_name" = 'Remux-2160p' and "min_size" = 187.4 and "max_size" = 0 and "preferred_size" = 995;
-- --- END op 2741

-- --- BEGIN op 2742 ( update sonarr_quality_definitions "*Series-Sseh" )
update "sonarr_quality_definitions" set "min_size" = 8, "max_size" = 128, "preferred_size" = 60 where "name" = '*Series-Sseh' and "quality_name" = 'WEBDL-1080p' and "min_size" = 15 and "max_size" = 0 and "preferred_size" = 995;
-- --- END op 2742

-- --- BEGIN op 2743 ( update sonarr_quality_definitions "*Series-Sseh" )
update "sonarr_quality_definitions" set "min_size" = 20, "max_size" = 300, "preferred_size" = 120 where "name" = '*Series-Sseh' and "quality_name" = 'WEBDL-2160p' and "min_size" = 25 and "max_size" = 0 and "preferred_size" = 995;
-- --- END op 2743

-- --- BEGIN op 2744 ( update sonarr_quality_definitions "*Series-Sseh" )
update "sonarr_quality_definitions" set "min_size" = 4, "max_size" = 60, "preferred_size" = 25 where "name" = '*Series-Sseh' and "quality_name" = 'WEBDL-720p' and "min_size" = 10 and "max_size" = 0 and "preferred_size" = 995;
-- --- END op 2744

-- --- BEGIN op 2745 ( update sonarr_quality_definitions "*Series-Sseh" )
update "sonarr_quality_definitions" set "min_size" = 8, "max_size" = 128, "preferred_size" = 60 where "name" = '*Series-Sseh' and "quality_name" = 'WEBRip-1080p' and "min_size" = 15 and "max_size" = 0 and "preferred_size" = 995;
-- --- END op 2745

-- --- BEGIN op 2746 ( update sonarr_quality_definitions "*Series-Sseh" )
update "sonarr_quality_definitions" set "min_size" = 20, "max_size" = 300, "preferred_size" = 120 where "name" = '*Series-Sseh' and "quality_name" = 'WEBRip-2160p' and "min_size" = 25 and "max_size" = 0 and "preferred_size" = 995;
-- --- END op 2746

-- --- BEGIN op 2747 ( update sonarr_quality_definitions "*Series-Sseh" )
update "sonarr_quality_definitions" set "min_size" = 4, "max_size" = 60, "preferred_size" = 25 where "name" = '*Series-Sseh' and "quality_name" = 'WEBRip-720p' and "min_size" = 10 and "max_size" = 0 and "preferred_size" = 995;
-- --- END op 2747

-- --- BEGIN op 2748 ( update radarr_quality_definitions "*Movie-Sseh" )
update "radarr_quality_definitions" set "name" = '*Movie-Sseh' where "name" = '*Default-Sseh';
-- --- END op 2748

-- --- BEGIN op 2749 ( update sonarr_quality_definitions "*Series-Sseh" )
update "sonarr_quality_definitions" set "min_size" = 4, "max_size" = 65, "preferred_size" = 40 where "name" = '*Series-Sseh' and "quality_name" = 'Bluray-720p' and "min_size" = 4 and "max_size" = 60 and "preferred_size" = 25;
-- --- END op 2749

-- --- BEGIN op 2750 ( update sonarr_quality_definitions "*Series-Sseh" )
update "sonarr_quality_definitions" set "min_size" = 4, "max_size" = 65, "preferred_size" = 40 where "name" = '*Series-Sseh' and "quality_name" = 'HDTV-720p' and "min_size" = 4 and "max_size" = 60 and "preferred_size" = 25;
-- --- END op 2750

-- --- BEGIN op 2751 ( update sonarr_quality_definitions "*Series-Sseh" )
update "sonarr_quality_definitions" set "min_size" = 4, "max_size" = 65, "preferred_size" = 40 where "name" = '*Series-Sseh' and "quality_name" = 'WEBDL-720p' and "min_size" = 4 and "max_size" = 60 and "preferred_size" = 25;
-- --- END op 2751

-- --- BEGIN op 2752 ( update sonarr_quality_definitions "*Series-Sseh" )
update "sonarr_quality_definitions" set "min_size" = 4, "max_size" = 65, "preferred_size" = 40 where "name" = '*Series-Sseh' and "quality_name" = 'WEBRip-720p' and "min_size" = 4 and "max_size" = 60 and "preferred_size" = 25;
-- --- END op 2752
