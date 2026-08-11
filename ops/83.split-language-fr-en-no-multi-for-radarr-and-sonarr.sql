-- @operation: export
-- @entity: batch
-- @name: Split *Language FR EN (no MULTi) for Radarr and Sonarr
-- @exportedAt: 2026-08-11T07:17:39.323Z
-- @opIds: 2101, 2102, 2103, 2104, 2105, 2106, 2107, 2108, 2109, 2110, 2111, 2112, 2113, 2114, 2115, 2116, 2117, 2118, 2119, 2120, 2121, 2122, 2123, 2124, 2125, 2126, 2127, 2128, 2129, 2130, 2131, 2132, 2133, 2134, 2135, 2136, 2137, 2138, 2139, 2140, 2141, 2142, 2143, 2144, 2145, 2146, 2147, 2148, 2149, 2150, 2151, 2152, 2153, 2154, 2155, 2156, 2157, 2158, 2159, 2160, 2161, 2162, 2163, 2164, 2165, 2166, 2167, 2168, 2169, 2170, 2171

-- --- BEGIN op 2101 ( create regular_expression "*Tag FR in title (Sonarr)" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('*Tag FR in title (Sonarr)', '(?i)(?:\bS\d{1,2}(?:E\d{1,3}(?:[-E]\d{1,3})?)?\b|\b\d{1,2}x\d{1,3}\b).*\bFR\b', 'Détecte le tag `FR` uniquement après un marqueur de série ou d’épisode (`S01`, `S01E01`, `1x01`, etc.), afin d’éviter les faux positifs provenant du titre de la série.

Destinée à Sonarr et utilisée par le CF `*Language FR EN (no MULTi)` pour identifier les releases bilingues FR/EN dont les langues sont indiquées explicitement sans tag `MULTi`.', NULL);

insert into "tags" ("name") values ('Language') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*Tag FR in title (Sonarr)', 'Language');

insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*Tag FR in title (Sonarr)', 'Sseh');
-- --- END op 2101

-- --- BEGIN op 2102 ( create regular_expression "*Tag EN in title (Sonarr)" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('*Tag EN in title (Sonarr)', '(?i)(?:\bS\d{1,2}(?:E\d{1,3}(?:[-E]\d{1,3})?)?\b|\b\d{1,2}x\d{1,3}\b).*\bEN\b', 'Détecte le tag `EN` uniquement après un marqueur de série ou d’épisode (`S01`, `S01E01`, `1x01`, etc.), afin d’éviter que le mot ou la préposition « en » présent dans le titre de la série soit interprété comme un tag de langue.

Destinée à Sonarr et utilisée par le CF `*Language FR EN (no MULTi)` pour identifier les releases bilingues FR/EN dont les langues sont indiquées explicitement sans tag `MULTi`.', NULL);
-- --- END op 2102

-- --- BEGIN op 2103 ( update custom_format "*Language FR EN (no MULTi)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Language FR EN (no MULTi)', 'Tag EN in title (Sonarr)', 'release_title', 'sonarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Language FR EN (no MULTi)', 'Tag EN in title (Sonarr)', '*Tag EN in title (Sonarr)');
-- --- END op 2103

-- --- BEGIN op 2104 ( update custom_format "*Language FR EN (no MULTi)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Language FR EN (no MULTi)', 'Tag FR in title (Sonarr)', 'release_title', 'sonarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Language FR EN (no MULTi)', 'Tag FR in title (Sonarr)', '*Tag FR in title (Sonarr)');
-- --- END op 2104

-- --- BEGIN op 2105 ( update custom_format "*Language FR EN (no MULTi)" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = '*Language FR EN (no MULTi)'
  AND name = 'Tag EN in title'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 1;
-- --- END op 2105

-- --- BEGIN op 2106 ( update custom_format "*Language FR EN (no MULTi)" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = '*Language FR EN (no MULTi)'
  AND name = 'Tag FR in title'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 1;
-- --- END op 2106

-- --- BEGIN op 2107 ( update custom_format "*Language FR EN (no MULTi)" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '*Language FR EN (no MULTi)'
	  AND name = 'Tag EN in title (Sonarr)'
	  AND type = 'release_title'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 1;
-- --- END op 2107

-- --- BEGIN op 2108 ( update custom_format "*Language FR EN (no MULTi)" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '*Language FR EN (no MULTi)'
	  AND name = 'Tag FR in title (Sonarr)'
	  AND type = 'release_title'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 1;
-- --- END op 2108

-- --- BEGIN op 2109 ( update custom_format "*Language FR EN (no MULTi)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Language FR EN (no MULTi)', 'Tag EN in title (Sonarr)', 'release_title', 'sonarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Language FR EN (no MULTi)', 'Tag EN in title (Sonarr)', '*Tag EN in title (Sonarr)');
-- --- END op 2109

-- --- BEGIN op 2110 ( update custom_format "*Language FR EN (no MULTi)" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '*Language FR EN (no MULTi)'
	  AND name = 'Tag EN in title (Sonarr)'
	  AND type = 'release_title'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 1;
-- --- END op 2110

-- --- BEGIN op 2111 ( update custom_format "*Language FR EN (no MULTi) (Radarr)" )
update "custom_formats" set "name" = '*Language FR EN (no MULTi) (Radarr)' where "name" = '*Language FR EN (no MULTi)';
-- --- END op 2111

-- --- BEGIN op 2112 ( update quality_profile "Multi.VO - 1080p - YGG" )
update "quality_profile_custom_formats" set "custom_format_name" = '*Language FR EN (no MULTi) (Radarr)' where "quality_profile_name" = 'Multi.VO - 1080p - YGG' and "custom_format_name" = '*Language FR EN (no MULTi)' and "arr_type" = 'radarr' and "score" = 1004;

update "quality_profile_custom_formats" set "custom_format_name" = '*Language FR EN (no MULTi) (Radarr)' where "quality_profile_name" = 'Multi.VO - 1080p - YGG' and "custom_format_name" = '*Language FR EN (no MULTi)' and "arr_type" = 'sonarr' and "score" = 1004;
-- --- END op 2112

-- --- BEGIN op 2113 ( create custom_format "*Language FR EN (no MULTi) (Sonarr)" )
insert into "custom_formats" ("name", "description") values ('*Language FR EN (no MULTi) (Sonarr)', '');
-- --- END op 2113

-- --- BEGIN op 2114 ( update custom_format "*Language FR EN (no MULTi) (Sonarr)" )
update "custom_formats" set "description" = 'Détecte une release bilingue française et anglaise lorsque le tag `MULTi` est absent du nom mais que les tags `FR` et `EN` y figurent tous les deux. Comble une lacune fréquente sur les trackers FR, où les conventions de nommage sont rarement respectées.

Équivalent fonctionnel de `*MULTi`, à noter au même score. Les deux CF sont rendus mutuellement exclusifs par la condition négative `No MULTi`, qui pointe sur la regex `*MULTi` elle-même afin que toute évolution de celle-ci soit répercutée automatiquement. La condition `No MULTISUB` écarte les releases où `FR` et `EN` désignent des pistes de sous-titres et non des pistes audio.

Les deux tags sont recherchés après l''année uniquement, faute de quoi la préposition française « en » présente dans de nombreux titres déclencherait le CF sur des releases purement VF.' where "name" = '*Language FR EN (no MULTi) (Sonarr)' and "description" = '';
-- --- END op 2114

-- --- BEGIN op 2115 ( update custom_format "*Language FR EN (no MULTi) (Sonarr)" )
insert into "tags" ("name") values ('Language') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('*Language FR EN (no MULTi) (Sonarr)', 'Language');

insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('*Language FR EN (no MULTi) (Sonarr)', 'Sseh');
-- --- END op 2115

-- --- BEGIN op 2116 ( update custom_format "*Language FR EN (no MULTi) (Sonarr)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Language FR EN (no MULTi) (Sonarr)', 'No MULTISUB', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Language FR EN (no MULTi) (Sonarr)', 'No MULTISUB', '*MULTISUB');
-- --- END op 2116

-- --- BEGIN op 2117 ( update custom_format "*Language FR EN (no MULTi) (Sonarr)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Language FR EN (no MULTi) (Sonarr)', 'No MULTi', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Language FR EN (no MULTi) (Sonarr)', 'No MULTi', '*MULTi');
-- --- END op 2117

-- --- BEGIN op 2118 ( update custom_format "*Language FR EN (no MULTi) (Sonarr)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Language FR EN (no MULTi) (Sonarr)', 'Tag EN in title', 'release_title', 'radarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Language FR EN (no MULTi) (Sonarr)', 'Tag EN in title', '*Tag EN in title');
-- --- END op 2118

-- --- BEGIN op 2119 ( update custom_format "*Language FR EN (no MULTi) (Sonarr)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Language FR EN (no MULTi) (Sonarr)', 'Tag FR in title', 'release_title', 'radarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Language FR EN (no MULTi) (Sonarr)', 'Tag FR in title', '*Tag FR in title');
-- --- END op 2119

-- --- BEGIN op 2120 ( create custom_format "*Language FR EN (no MULTi) (Sonarr)" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Language FR EN (no MULTi) (Sonarr)', 'En.Guerre.2018.FR.1080p.WEB.x264-GROUP', 'movie', 0, NULL);
-- --- END op 2120

-- --- BEGIN op 2121 ( create custom_format "*Language FR EN (no MULTi) (Sonarr)" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Language FR EN (no MULTi) (Sonarr)', 'Film.2021.EN.1080p.WEB.x264-GROUP', 'movie', 0, NULL);
-- --- END op 2121

-- --- BEGIN op 2122 ( create custom_format "*Language FR EN (no MULTi) (Sonarr)" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Language FR EN (no MULTi) (Sonarr)', 'Film.2021.FR.1080p.WEB.x264-GROUP', 'movie', 0, NULL);
-- --- END op 2122

-- --- BEGIN op 2123 ( create custom_format "*Language FR EN (no MULTi) (Sonarr)" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Language FR EN (no MULTi) (Sonarr)', 'Film.2021.FR.EN.1080p.WEB.x264-GROUP', 'movie', 1, NULL);
-- --- END op 2123

-- --- BEGIN op 2124 ( create custom_format "*Language FR EN (no MULTi) (Sonarr)" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Language FR EN (no MULTi) (Sonarr)', 'Film.2021.MULTI.SUBFR.FR.EN.1080p.WEB.x264-GROUP', 'movie', 0, NULL);
-- --- END op 2124

-- --- BEGIN op 2125 ( create custom_format "*Language FR EN (no MULTi) (Sonarr)" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Language FR EN (no MULTi) (Sonarr)', 'Film.2021.MULTIVF.FR.EN.1080p.WEB.x264-GROUP', 'movie', 0, NULL);
-- --- END op 2125

-- --- BEGIN op 2126 ( create custom_format "*Language FR EN (no MULTi) (Sonarr)" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Language FR EN (no MULTi) (Sonarr)', 'Film.2021.MULTi.FR.EN.1080p.WEB.x264-GROUP', 'movie', 0, NULL);
-- --- END op 2126

-- --- BEGIN op 2127 ( update custom_format "*Language FR EN (no MULTi) (Sonarr)" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '*Language FR EN (no MULTi) (Sonarr)'
	  AND name = 'Tag EN in title'
	  AND type = 'release_title'
	  AND arr_type = 'radarr'
	  AND negate = 0
	  AND required = 1;
-- --- END op 2127

-- --- BEGIN op 2128 ( update custom_format "*Language FR EN (no MULTi) (Sonarr)" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '*Language FR EN (no MULTi) (Sonarr)'
	  AND name = 'Tag FR in title'
	  AND type = 'release_title'
	  AND arr_type = 'radarr'
	  AND negate = 0
	  AND required = 1;
-- --- END op 2128

-- --- BEGIN op 2129 ( update custom_format "*Language FR EN (no MULTi) (Sonarr)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Language FR EN (no MULTi) (Sonarr)', 'Tag EN in title (Sonarr)', 'release_title', 'sonarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Language FR EN (no MULTi) (Sonarr)', 'Tag EN in title (Sonarr)', '*Tag EN in title (Sonarr)');
-- --- END op 2129

-- --- BEGIN op 2130 ( update custom_format "*Language FR EN (no MULTi) (Sonarr)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Language FR EN (no MULTi) (Sonarr)', 'Tag FR in title (Sonarr)', 'release_title', 'sonarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Language FR EN (no MULTi) (Sonarr)', 'Tag FR in title (Sonarr)', '*Tag FR in title (Sonarr)');
-- --- END op 2130

-- --- BEGIN op 2131 ( delete custom_format "*Language FR EN (no MULTi) (Sonarr)" )
DELETE FROM custom_format_tests
WHERE custom_format_name = '*Language FR EN (no MULTi) (Sonarr)'
  AND title = 'En.Guerre.2018.FR.1080p.WEB.x264-GROUP'
  AND type = 'movie'
  AND should_match = 0
  AND description IS NULL;
-- --- END op 2131

-- --- BEGIN op 2132 ( delete custom_format "*Language FR EN (no MULTi) (Sonarr)" )
DELETE FROM custom_format_tests
WHERE custom_format_name = '*Language FR EN (no MULTi) (Sonarr)'
  AND title = 'Film.2021.EN.1080p.WEB.x264-GROUP'
  AND type = 'movie'
  AND should_match = 0
  AND description IS NULL;
-- --- END op 2132

-- --- BEGIN op 2133 ( delete custom_format "*Language FR EN (no MULTi) (Sonarr)" )
DELETE FROM custom_format_tests
WHERE custom_format_name = '*Language FR EN (no MULTi) (Sonarr)'
  AND title = 'Film.2021.FR.1080p.WEB.x264-GROUP'
  AND type = 'movie'
  AND should_match = 0
  AND description IS NULL;
-- --- END op 2133

-- --- BEGIN op 2134 ( delete custom_format "*Language FR EN (no MULTi) (Sonarr)" )
DELETE FROM custom_format_tests
WHERE custom_format_name = '*Language FR EN (no MULTi) (Sonarr)'
  AND title = 'Film.2021.FR.EN.1080p.WEB.x264-GROUP'
  AND type = 'movie'
  AND should_match = 1
  AND description IS NULL;
-- --- END op 2134

-- --- BEGIN op 2135 ( delete custom_format "*Language FR EN (no MULTi) (Sonarr)" )
DELETE FROM custom_format_tests
WHERE custom_format_name = '*Language FR EN (no MULTi) (Sonarr)'
  AND title = 'Film.2021.MULTI.SUBFR.FR.EN.1080p.WEB.x264-GROUP'
  AND type = 'movie'
  AND should_match = 0
  AND description IS NULL;
-- --- END op 2135

-- --- BEGIN op 2136 ( delete custom_format "*Language FR EN (no MULTi) (Sonarr)" )
DELETE FROM custom_format_tests
WHERE custom_format_name = '*Language FR EN (no MULTi) (Sonarr)'
  AND title = 'Film.2021.MULTIVF.FR.EN.1080p.WEB.x264-GROUP'
  AND type = 'movie'
  AND should_match = 0
  AND description IS NULL;
-- --- END op 2136

-- --- BEGIN op 2137 ( delete custom_format "*Language FR EN (no MULTi) (Sonarr)" )
DELETE FROM custom_format_tests
WHERE custom_format_name = '*Language FR EN (no MULTi) (Sonarr)'
  AND title = 'Film.2021.MULTi.FR.EN.1080p.WEB.x264-GROUP'
  AND type = 'movie'
  AND should_match = 0
  AND description IS NULL;
-- --- END op 2137

-- --- BEGIN op 2138 ( update custom_format "*Language FR EN (no MULTi) (Sonarr)" )
update "custom_formats" set "description" = 'Détecte une release de série bilingue française et anglaise lorsque le tag `MULTi` est absent du nom mais que les tags `FR` et `EN` y figurent tous les deux. Comble une lacune fréquente sur les trackers FR, où les conventions de nommage sont parfois incomplètes ou non standardisées.

Équivalent fonctionnel de `*MULTi`, à noter au même score. Les deux CF sont rendus mutuellement exclusifs par la condition négative `No MULTi`, qui pointe sur la regex `*MULTi` afin que toute évolution de celle-ci soit répercutée automatiquement. La condition `No MULTISUB` écarte les releases où `FR` et `EN` désignent des pistes de sous-titres et non des pistes audio.

Version destinée à Sonarr. Les tags `FR` et `EN` sont recherchés uniquement après un marqueur de série ou d’épisode (`S01`, `S01E01`, `1x01`, etc.), afin d’éviter que des mots présents dans le titre de la série soient interprétés comme des tags de langue.' where "name" = '*Language FR EN (no MULTi) (Sonarr)' and "description" = 'Détecte une release bilingue française et anglaise lorsque le tag `MULTi` est absent du nom mais que les tags `FR` et `EN` y figurent tous les deux. Comble une lacune fréquente sur les trackers FR, où les conventions de nommage sont rarement respectées.

Équivalent fonctionnel de `*MULTi`, à noter au même score. Les deux CF sont rendus mutuellement exclusifs par la condition négative `No MULTi`, qui pointe sur la regex `*MULTi` elle-même afin que toute évolution de celle-ci soit répercutée automatiquement. La condition `No MULTISUB` écarte les releases où `FR` et `EN` désignent des pistes de sous-titres et non des pistes audio.

Les deux tags sont recherchés après l''année uniquement, faute de quoi la préposition française « en » présente dans de nombreux titres déclencherait le CF sur des releases purement VF.';
-- --- END op 2138

-- --- BEGIN op 2139 ( create custom_format "*Language FR EN (no MULTi) (Sonarr)" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Language FR EN (no MULTi) (Sonarr)', 'Show.Name.S01E01.FR.EN.1080p.WEB-DL-GROUP', 'movie', 1, NULL);
-- --- END op 2139

-- --- BEGIN op 2140 ( create custom_format "*Language FR EN (no MULTi) (Sonarr)" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Language FR EN (no MULTi) (Sonarr)', 'Show.Name.S01.FR.EN.1080p.WEB-DL-GROUP', 'movie', 1, NULL);
-- --- END op 2140

-- --- BEGIN op 2141 ( create custom_format "*Language FR EN (no MULTi) (Sonarr)" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Language FR EN (no MULTi) (Sonarr)', 'Show.Name.1x01.FR.EN.1080p.WEB-DL-GROUP', 'movie', 1, NULL);
-- --- END op 2141

-- --- BEGIN op 2142 ( create custom_format "*Language FR EN (no MULTi) (Sonarr)" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Language FR EN (no MULTi) (Sonarr)', 'En.Therapie.S01E01.FR.1080p.WEB-DL-GROUP', 'series', 0, NULL);
-- --- END op 2142

-- --- BEGIN op 2143 ( update custom_format "*Language FR EN (no MULTi) (Sonarr)" )
UPDATE custom_format_tests SET type = 'series' WHERE custom_format_name = '*Language FR EN (no MULTi) (Sonarr)' AND title = 'Show.Name.1x01.FR.EN.1080p.WEB-DL-GROUP' AND type = 'movie';
-- --- END op 2143

-- --- BEGIN op 2144 ( update custom_format "*Language FR EN (no MULTi) (Sonarr)" )
UPDATE custom_format_tests SET type = 'series' WHERE custom_format_name = '*Language FR EN (no MULTi) (Sonarr)' AND title = 'Show.Name.S01.FR.EN.1080p.WEB-DL-GROUP' AND type = 'movie';
-- --- END op 2144

-- --- BEGIN op 2145 ( update custom_format "*Language FR EN (no MULTi) (Sonarr)" )
UPDATE custom_format_tests SET type = 'series' WHERE custom_format_name = '*Language FR EN (no MULTi) (Sonarr)' AND title = 'Show.Name.S01E01.FR.EN.1080p.WEB-DL-GROUP' AND type = 'movie';
-- --- END op 2145

-- --- BEGIN op 2146 ( create custom_format "*Language FR EN (no MULTi) (Sonarr)" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Language FR EN (no MULTi) (Sonarr)', 'Show.Name.S01E01.EN.1080p.WEB-DL-GROUP', 'series', 0, NULL);
-- --- END op 2146

-- --- BEGIN op 2147 ( create custom_format "*Language FR EN (no MULTi) (Sonarr)" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Language FR EN (no MULTi) (Sonarr)', 'Show.Name.S01E01.FR.1080p.WEB-DL-GROUP', 'series', 0, NULL);
-- --- END op 2147

-- --- BEGIN op 2148 ( create custom_format "*Language FR EN (no MULTi) (Sonarr)" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Language FR EN (no MULTi) (Sonarr)', 'Show.Name.S01E01.MULTi.FR.EN.1080p.WEB-DL-GROUP', 'series', 0, NULL);
-- --- END op 2148

-- --- BEGIN op 2149 ( create custom_format "*Language FR EN (no MULTi) (Sonarr)" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Language FR EN (no MULTi) (Sonarr)', 'Show.Name.S01E01.MULTI.SUBFR.FR.EN.1080p.WEB-DL', 'series', 0, NULL);
-- --- END op 2149

-- --- BEGIN op 2150 ( update custom_format "*Language FR EN (no MULTi) (Radarr)" )
update "custom_formats" set "description" = 'Détecte une release de film bilingue française et anglaise lorsque le tag `MULTi` est absent du nom mais que les tags `FR` et `EN` y figurent tous les deux. Comble une lacune fréquente sur les trackers FR, où les conventions de nommage sont parfois incomplètes ou non standardisées.

Équivalent fonctionnel de `*MULTi`, à noter au même score. Les deux CF sont rendus mutuellement exclusifs par la condition négative `No MULTi`, qui pointe sur la regex `*MULTi` afin que toute évolution de celle-ci soit répercutée automatiquement. La condition `No MULTISUB` écarte les releases où `FR` et `EN` désignent des pistes de sous-titres et non des pistes audio.

Version destinée à Radarr. Les tags `FR` et `EN` sont recherchés uniquement après l’année du film, afin d’éviter les faux positifs liés aux mots présents dans le titre, notamment la préposition française « en ».' where "name" = '*Language FR EN (no MULTi) (Radarr)' and "description" = 'Détecte une release bilingue française et anglaise lorsque le tag `MULTi` est absent du nom mais que les tags `FR` et `EN` y figurent tous les deux. Comble une lacune fréquente sur les trackers FR, où les conventions de nommage sont rarement respectées.

Équivalent fonctionnel de `*MULTi`, à noter au même score. Les deux CF sont rendus mutuellement exclusifs par la condition négative `No MULTi`, qui pointe sur la regex `*MULTi` elle-même afin que toute évolution de celle-ci soit répercutée automatiquement. La condition `No MULTISUB` écarte les releases où `FR` et `EN` désignent des pistes de sous-titres et non des pistes audio.

Les deux tags sont recherchés après l''année uniquement, faute de quoi la préposition française « en » présente dans de nombreux titres déclencherait le CF sur des releases purement VF.';
-- --- END op 2150

-- --- BEGIN op 2151 ( update quality_profile "Multi.VO - 1080p - YGG" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND custom_format_name = '*Language FR EN (no MULTi) (Radarr)'
  AND arr_type = 'sonarr'
  AND score = 1004;
-- --- END op 2151

-- --- BEGIN op 2152 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '*Language FR EN (no MULTi) (Sonarr)', 'sonarr', 1004
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '*Language FR EN (no MULTi) (Sonarr)'
    AND arr_type = 'sonarr'
);
-- --- END op 2152

-- --- BEGIN op 2153 ( update regular_expression "*Tag FR in title" )
update "regular_expressions" set "description" = 'Détecte le tag FR uniquement après l''année (version Radarr)' where "name" = '*Tag FR in title' and "description" = 'Détecte le tag FR uniquement après l''année';
-- --- END op 2153

-- --- BEGIN op 2154 ( update regular_expression "*Tag FR in title (radarr)" )
update "regular_expressions" set "name" = '*Tag FR in title (radarr)' where "name" = '*Tag FR in title';
-- --- END op 2154

-- --- BEGIN op 2155 ( update custom_format "*Language FR EN (no MULTi) (Radarr)" )
update "condition_patterns" set "regular_expression_name" = '*Tag FR in title (radarr)' where "custom_format_name" = '*Language FR EN (no MULTi) (Radarr)' and "condition_name" = 'Tag FR in title' and "regular_expression_name" in ('*Tag FR in title', '*Tag FR in title (radarr)');
-- --- END op 2155

-- --- BEGIN op 2156 ( update regular_expression "*Tag EN in title" )
update "regular_expressions" set "description" = 'Détecte le tag EN uniquement après l''année, pour éviter la préposition française "en" présente dans les titres (version Radarr)' where "name" = '*Tag EN in title' and "description" = 'Détecte le tag EN uniquement après l''année, pour éviter la préposition française "en" présente dans les titres';
-- --- END op 2156

-- --- BEGIN op 2157 ( update regular_expression "*Tag EN in title (Radarr)" )
update "regular_expressions" set "name" = '*Tag EN in title (Radarr)' where "name" = '*Tag EN in title';
-- --- END op 2157

-- --- BEGIN op 2158 ( update custom_format "*Language FR EN (no MULTi) (Radarr)" )
update "condition_patterns" set "regular_expression_name" = '*Tag EN in title (Radarr)' where "custom_format_name" = '*Language FR EN (no MULTi) (Radarr)' and "condition_name" = 'Tag EN in title' and "regular_expression_name" in ('*Tag EN in title', '*Tag EN in title (Radarr)');
-- --- END op 2158

-- --- BEGIN op 2159 ( update regular_expression "*Tag EN in title (Sonarr)" )
insert into "tags" ("name") values ('Language') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*Tag EN in title (Sonarr)', 'Language');

insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*Tag EN in title (Sonarr)', 'Sseh');
-- --- END op 2159

-- --- BEGIN op 2160 ( update regular_expression "*Tag EN in title (Radarr)" )
update "regular_expressions" set "description" = 'Détecte le tag `EN` uniquement après l’année du film, afin d’éviter que le mot ou la préposition « en » présent dans le titre soit interprété comme un tag de langue.

Destinée à Radarr et utilisée par le CF `*Language FR EN (no MULTi) (Radarr)` pour identifier les releases bilingues FR/EN dont les langues sont indiquées explicitement sans tag `MULTi`.' where "name" = '*Tag EN in title (Radarr)' and "description" = 'Détecte le tag EN uniquement après l''année, pour éviter la préposition française "en" présente dans les titres (version Radarr)';
-- --- END op 2160

-- --- BEGIN op 2161 ( update regular_expression "*Tag FR in title (radarr)" )
update "regular_expressions" set "description" = 'Détecte le tag `FR` uniquement après l’année du film, afin d’éviter les faux positifs provenant du titre.

Destinée à Radarr et utilisée par le CF `*Language FR EN (no MULTi) (Radarr)` pour identifier les releases bilingues FR/EN dont les langues sont indiquées explicitement sans tag `MULTi`.' where "name" = '*Tag FR in title (radarr)' and "description" = 'Détecte le tag FR uniquement après l''année (version Radarr)';
-- --- END op 2161

-- --- BEGIN op 2162 ( update regular_expression "*Tag EN in title (Sonarr)" )
update "regular_expressions" set "description" = 'Détecte le tag `EN` uniquement après un marqueur de série ou d’épisode (`S01`, `S01E01`, `1x01`, etc.), afin d’éviter que le mot ou la préposition « en » présent dans le titre de la série soit interprété comme un tag de langue.

Destinée à Sonarr et utilisée par le CF `*Language FR EN (no MULTi) (Sonarr)` pour identifier les releases bilingues FR/EN dont les langues sont indiquées explicitement sans tag `MULTi`.' where "name" = '*Tag EN in title (Sonarr)' and "description" = 'Détecte le tag `EN` uniquement après un marqueur de série ou d’épisode (`S01`, `S01E01`, `1x01`, etc.), afin d’éviter que le mot ou la préposition « en » présent dans le titre de la série soit interprété comme un tag de langue.

Destinée à Sonarr et utilisée par le CF `*Language FR EN (no MULTi)` pour identifier les releases bilingues FR/EN dont les langues sont indiquées explicitement sans tag `MULTi`.';
-- --- END op 2162

-- --- BEGIN op 2163 ( update regular_expression "*Tag FR in title (Sonarr)" )
update "regular_expressions" set "description" = 'Détecte le tag `FR` uniquement après un marqueur de série ou d’épisode (`S01`, `S01E01`, `1x01`, etc.), afin d’éviter les faux positifs provenant du titre de la série.

Destinée à Sonarr et utilisée par le CF `*Language FR EN (no MULTi) (Sonarr)` pour identifier les releases bilingues FR/EN dont les langues sont indiquées explicitement sans tag `MULTi`.' where "name" = '*Tag FR in title (Sonarr)' and "description" = 'Détecte le tag `FR` uniquement après un marqueur de série ou d’épisode (`S01`, `S01E01`, `1x01`, etc.), afin d’éviter les faux positifs provenant du titre de la série.

Destinée à Sonarr et utilisée par le CF `*Language FR EN (no MULTi)` pour identifier les releases bilingues FR/EN dont les langues sont indiquées explicitement sans tag `MULTi`.';
-- --- END op 2163

-- --- BEGIN op 2164 ( update custom_format "*Language FR EN (no MULTi) (Radarr)" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = '*Language FR EN (no MULTi) (Radarr)'
  AND name = 'No MULTISUB'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 1
  AND required = 1;
-- --- END op 2164

-- --- BEGIN op 2165 ( update custom_format "*Language FR EN (no MULTi) (Radarr)" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = '*Language FR EN (no MULTi) (Radarr)'
  AND name = 'No MULTi'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 1
  AND required = 1;
-- --- END op 2165

-- --- BEGIN op 2166 ( update custom_format "*Language FR EN (no MULTi) (Sonarr)" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = '*Language FR EN (no MULTi) (Sonarr)'
  AND name = 'No MULTISUB'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 1
  AND required = 1;
-- --- END op 2166

-- --- BEGIN op 2167 ( update custom_format "*Language FR EN (no MULTi) (Sonarr)" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = '*Language FR EN (no MULTi) (Sonarr)'
  AND name = 'No MULTi'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 1
  AND required = 1;
-- --- END op 2167

-- --- BEGIN op 2168 ( update regular_expression "*Tag FR in title" )
update "regular_expressions" set "name" = '*Tag FR in title' where "name" = '*Tag FR in title (radarr)';
-- --- END op 2168

-- --- BEGIN op 2169 ( update custom_format "*Language FR EN (no MULTi) (Radarr)" )
update "condition_patterns" set "regular_expression_name" = '*Tag FR in title' where "custom_format_name" = '*Language FR EN (no MULTi) (Radarr)' and "condition_name" = 'Tag FR in title' and "regular_expression_name" in ('*Tag FR in title (radarr)', '*Tag FR in title');
-- --- END op 2169

-- --- BEGIN op 2170 ( update regular_expression "*Tag FR in title (Radarr)" )
update "regular_expressions" set "name" = '*Tag FR in title (Radarr)' where "name" = '*Tag FR in title';
-- --- END op 2170

-- --- BEGIN op 2171 ( update custom_format "*Language FR EN (no MULTi) (Radarr)" )
update "condition_patterns" set "regular_expression_name" = '*Tag FR in title (Radarr)' where "custom_format_name" = '*Language FR EN (no MULTi) (Radarr)' and "condition_name" = 'Tag FR in title' and "regular_expression_name" in ('*Tag FR in title', '*Tag FR in title (Radarr)');
-- --- END op 2171
