-- @operation: export
-- @entity: batch
-- @name: Add Team -CHiLL regex and CF | Add CF *Team -CHiLL in 108Op QP
-- @exportedAt: 2026-08-11T10:20:19.666Z
-- @opIds: 2244, 2245, 2246, 2247, 2248, 2249, 2250, 2251, 2252, 2253, 2254, 2255, 2256, 2257, 2258

-- --- BEGIN op 2244 ( create regular_expression "*Team -CHiLL" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('*Team -CHiLL', '^(XSHD)$', 'Matches the release group exactly `XSHD`', NULL);

insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*Team -CHiLL', 'Sseh');

insert into "tags" ("name") values ('Team') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*Team -CHiLL', 'Team');
-- --- END op 2244

-- --- BEGIN op 2245 ( update regular_expression "*Team -CHiLL" )
update "regular_expressions" set "description" = 'Matches the release group exactly `CHiLL`' where "name" = '*Team -CHiLL' and "description" = 'Matches the release group exactly `XSHD`';
-- --- END op 2245

-- --- BEGIN op 2246 ( update regular_expression "*Team -CHiLL" )
update "regular_expressions" set "pattern" = '^(CHiLL)$' where "name" = '*Team -CHiLL' and "pattern" = '^(XSHD)$';
-- --- END op 2246

-- --- BEGIN op 2247 ( create custom_format "*Team CHiLL" )
insert into "custom_formats" ("name", "description") values ('*Team CHiLL', '');
-- --- END op 2247

-- --- BEGIN op 2248 ( update custom_format "*Team CHiLL" )
update "custom_formats" set "description" = 'Bonus attribué à la team XSHD, envers laquelle une confiance particulière a été établie. Le score dépasse l''écart de 600 points séparant x264 et x265, ce qui permet à une release XSHD en x264 de passer devant une x265 d''origine inconnue.

La détection porte sur le champ Release Group avec une regex ancrée, un boost de cette ampleur ne tolérant pas le faux positif.

Cette team n''est présente dans aucun CF de la biblio Trash, la regex est donc entièrement custom.' where "name" = '*Team CHiLL' and "description" = '';
-- --- END op 2248

-- --- BEGIN op 2249 ( update custom_format "*Team CHiLL" )
insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('*Team CHiLL', 'Sseh');

insert into "tags" ("name") values ('Teams') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('*Team CHiLL', 'Teams');
-- --- END op 2249

-- --- BEGIN op 2250 ( update custom_format "*Team CHiLL" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Team CHiLL', 'XSHD tag', 'release_group', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Team CHiLL', 'XSHD tag', '*Team -XSHD');
-- --- END op 2250

-- --- BEGIN op 2251 ( create custom_format "*Team CHiLL" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Team CHiLL', 'Film.2021.MULTi.1080p.WEB.x264-GROUP', 'movie', 0, NULL);
-- --- END op 2251

-- --- BEGIN op 2252 ( create custom_format "*Team CHiLL" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Team CHiLL', 'Film.2021.MULTi.1080p.WEB.x264-XSHD', 'movie', 1, NULL);
-- --- END op 2252

-- --- BEGIN op 2253 ( create custom_format "*Team CHiLL" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Team CHiLL', 'Film.2021.MULTi.1080p.WEB.x264-XSHDTeam', 'movie', 0, NULL);
-- --- END op 2253

-- --- BEGIN op 2254 ( update custom_format "*Team CHiLL" )
update "custom_formats" set "description" = 'Bonus attribué à la team CHiLL, envers laquelle une confiance particulière a été établie. Le score dépasse l''écart de 600 points séparant x264 et x265, ce qui permet à une release CHiLL en x264 de passer devant une x265 d''origine inconnue.

La détection porte sur le champ Release Group avec une regex ancrée, un boost de cette ampleur ne tolérant pas le faux positif.

Cette team n''est présente dans aucun CF de la biblio Trash, la regex est donc entièrement custom.' where "name" = '*Team CHiLL' and "description" = 'Bonus attribué à la team XSHD, envers laquelle une confiance particulière a été établie. Le score dépasse l''écart de 600 points séparant x264 et x265, ce qui permet à une release XSHD en x264 de passer devant une x265 d''origine inconnue.

La détection porte sur le champ Release Group avec une regex ancrée, un boost de cette ampleur ne tolérant pas le faux positif.

Cette team n''est présente dans aucun CF de la biblio Trash, la regex est donc entièrement custom.';
-- --- END op 2254

-- --- BEGIN op 2255 ( update custom_format "*Team CHiLL" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '*Team CHiLL'
	  AND name = 'XSHD tag'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 2255

-- --- BEGIN op 2256 ( update custom_format "*Team CHiLL" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Team CHiLL', 'CHiLL tag', 'release_group', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Team CHiLL', 'CHiLL tag', '*Team -CHiLL');
-- --- END op 2256

-- --- BEGIN op 2257 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '*Team CHiLL', 'radarr', 603
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '*Team CHiLL'
    AND arr_type = 'radarr'
);
-- --- END op 2257

-- --- BEGIN op 2258 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '*Team CHiLL', 'sonarr', 603
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '*Team CHiLL'
    AND arr_type = 'sonarr'
);
-- --- END op 2258
