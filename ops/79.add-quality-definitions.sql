-- @operation: export
-- @entity: batch
-- @name: Add Quality Definitions
-- @exportedAt: 2026-08-10T21:37:18.670Z
-- @opIds: 1849, 1850, 1851, 1852, 1853, 1854, 1855, 1856, 1857, 1858, 1859, 1860, 1861, 1862, 1863, 1864, 1865

-- --- BEGIN op 1849 ( create radarr_quality_definitions "*Default-Sseh" )
insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('*Default-Sseh', 'Bluray-1080p', 0, 128, 60);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('*Default-Sseh', 'Bluray-2160p', 0, 300, 120);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('*Default-Sseh', 'Bluray-480p', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('*Default-Sseh', 'Bluray-576p', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('*Default-Sseh', 'Bluray-720p', 0, 65, 40);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('*Default-Sseh', 'BR-DISK', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('*Default-Sseh', 'CAM', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('*Default-Sseh', 'DVD', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('*Default-Sseh', 'DVD-R', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('*Default-Sseh', 'DVDSCR', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('*Default-Sseh', 'HDTV-1080p', 0, 128, 60);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('*Default-Sseh', 'HDTV-2160p', 0, 300, 120);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('*Default-Sseh', 'HDTV-720p', 0, 65, 40);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('*Default-Sseh', 'Raw-HD', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('*Default-Sseh', 'REGIONAL', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('*Default-Sseh', 'Remux-1080p', 0, 0, 250);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('*Default-Sseh', 'Remux-2160p', 0, 0, 500);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('*Default-Sseh', 'SDTV', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('*Default-Sseh', 'TELECINE', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('*Default-Sseh', 'TELESYNC', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('*Default-Sseh', 'Unknown', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('*Default-Sseh', 'WEBDL-1080p', 0, 128, 60);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('*Default-Sseh', 'WEBDL-2160p', 0, 300, 120);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('*Default-Sseh', 'WEBDL-480p', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('*Default-Sseh', 'WEBDL-720p', 0, 65, 40);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('*Default-Sseh', 'WEBRip-1080p', 0, 128, 60);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('*Default-Sseh', 'WEBRip-2160p', 0, 300, 120);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('*Default-Sseh', 'WEBRip-480p', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('*Default-Sseh', 'WEBRip-720p', 0, 65, 40);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('*Default-Sseh', 'WORKPRINT', 0, 0, 0);
-- --- END op 1849

-- --- BEGIN op 1850 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 0, "preferred_size" = 200 where "name" = '*Default-Sseh' and "quality_name" = 'BR-DISK' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 0;
-- --- END op 1850

-- --- BEGIN op 1851 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 70, "preferred_size" = 30 where "name" = '*Default-Sseh' and "quality_name" = 'Bluray-480p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 0;
-- --- END op 1851

-- --- BEGIN op 1852 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 80, "preferred_size" = 35 where "name" = '*Default-Sseh' and "quality_name" = 'Bluray-576p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 0;
-- --- END op 1852

-- --- BEGIN op 1853 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 30, "preferred_size" = 10 where "name" = '*Default-Sseh' and "quality_name" = 'CAM' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 0;
-- --- END op 1853

-- --- BEGIN op 1854 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 70, "preferred_size" = 30 where "name" = '*Default-Sseh' and "quality_name" = 'DVD' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 0;
-- --- END op 1854

-- --- BEGIN op 1855 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 100, "preferred_size" = 40 where "name" = '*Default-Sseh' and "quality_name" = 'DVD-R' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 0;
-- --- END op 1855

-- --- BEGIN op 1856 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 70, "preferred_size" = 30 where "name" = '*Default-Sseh' and "quality_name" = 'DVDSCR' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 0;
-- --- END op 1856

-- --- BEGIN op 1857 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 80, "preferred_size" = 35 where "name" = '*Default-Sseh' and "quality_name" = 'REGIONAL' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 0;
-- --- END op 1857

-- --- BEGIN op 1858 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 0, "preferred_size" = 150 where "name" = '*Default-Sseh' and "quality_name" = 'Raw-HD' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 0;
-- --- END op 1858

-- --- BEGIN op 1859 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 50, "preferred_size" = 20 where "name" = '*Default-Sseh' and "quality_name" = 'SDTV' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 0;
-- --- END op 1859

-- --- BEGIN op 1860 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 50, "preferred_size" = 20 where "name" = '*Default-Sseh' and "quality_name" = 'TELECINE' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 0;
-- --- END op 1860

-- --- BEGIN op 1861 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 40, "preferred_size" = 15 where "name" = '*Default-Sseh' and "quality_name" = 'TELESYNC' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 0;
-- --- END op 1861

-- --- BEGIN op 1862 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 0, "preferred_size" = 100 where "name" = '*Default-Sseh' and "quality_name" = 'Unknown' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 0;
-- --- END op 1862

-- --- BEGIN op 1863 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 60, "preferred_size" = 25 where "name" = '*Default-Sseh' and "quality_name" = 'WEBDL-480p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 0;
-- --- END op 1863

-- --- BEGIN op 1864 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 60, "preferred_size" = 25 where "name" = '*Default-Sseh' and "quality_name" = 'WEBRip-480p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 0;
-- --- END op 1864

-- --- BEGIN op 1865 ( update radarr_quality_definitions "*Default-Sseh" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 60, "preferred_size" = 20 where "name" = '*Default-Sseh' and "quality_name" = 'WORKPRINT' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 0;
-- --- END op 1865
