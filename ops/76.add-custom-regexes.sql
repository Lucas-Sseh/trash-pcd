-- @operation: export
-- @entity: batch
-- @name: Add custom regexes
-- @exportedAt: 2026-08-10T14:50:27.087Z
-- @opIds: 1166, 1167, 1168, 1169, 1170, 1171, 1172, 1173, 1174, 1175, 1176, 1177, 1178, 1179, 1180, 1181, 1182, 1183, 1184, 1185, 1186, 1187

-- --- BEGIN op 1166 ( create regular_expression "*AZAZE in Title" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('*AZAZE in Title', '(?i)(^|[^A-Za-z0-9])AZAZE([^A-Za-z0-9]|$)', 'Détecte `AZAZE` comme tag isolé, quel que soit le séparateur utilisé, sans le faire matcher à l’intérieur d’un autre mot.', NULL);

insert into "tags" ("name") values ('Team') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*AZAZE in Title', 'Team');

insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*AZAZE in Title', 'Sseh');
-- --- END op 1166

-- --- BEGIN op 1167 ( create regular_expression "*Canadian French" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('*Canadian French', '\b(VFQ|\d{3,4}p[ .](?:CAN|CA)|(?<=MULTi[ .])(?:FR(?:A|CAN?)|CAN|CA))\b', 'Détecte les marqueurs de français québécois `VFQ`, ainsi que les variantes canadiennes `CAN` / `CA` lorsqu’elles suivent une résolution (`720p`, `1080p`, `2160p`) ou directement le tag `MULTi`.', NULL);

insert into "tags" ("name") values ('Language') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*Canadian French', 'Language');

insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*Canadian French', 'Sseh');
-- --- END op 1167

-- --- BEGIN op 1168 ( create regular_expression "*FR Tracker Extra Groups - Sharewood" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('*FR Tracker Extra Groups - Sharewood', '^(AW|D3L0P@tte|GHT|h4x0r|HLX|PATOMiEL|PiXEL|PopHD|QTZ|RiFiFi|SANTACRUZ|SCiPIO|Xantar)$', 'Détecte teams interne Sharewood (RIP)', NULL);

insert into "tags" ("name") values ('Team') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*FR Tracker Extra Groups - Sharewood', 'Team');

insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*FR Tracker Extra Groups - Sharewood', 'Sseh');
-- --- END op 1168

-- --- BEGIN op 1169 ( create regular_expression "*FR Tracker Extra Groups - YGG" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('*FR Tracker Extra Groups - YGG', '^(T3KASHi|Blap|Tsundere-Raws|ZiT|bouba|BtRs|THESYNDiCATE|Amen|BULITT)$', 'Détecte teams interne YGG (RIP)', NULL);

insert into "tags" ("name") values ('Team') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*FR Tracker Extra Groups - YGG', 'Team');

insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*FR Tracker Extra Groups - YGG', 'Sseh');
-- --- END op 1169

-- --- BEGIN op 1170 ( create regular_expression "*FRENCH | VF | FR" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('*FRENCH | VF | FR', '(?i)\b(FRENCH|VF|FR)\b', 'Détecte les marqueurs génériques de français `FRENCH`, `VF` ou `FR`, sans tenir compte des majuscules/minuscules.', NULL);

insert into "tags" ("name") values ('Language') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*FRENCH | VF | FR', 'Language');

insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*FRENCH | VF | FR', 'Sseh');
-- --- END op 1170

-- --- BEGIN op 1171 ( create regular_expression "*MULTi" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('*MULTi', '(?i)\bMULTI(?![ ._-]?SUB)(?=\b|\d|VF(?:F|Q|I|B|2)?\b)', 'Détecte le tag `MULTI` de façon tolérante aux conventions de nommage imparfaites, y compris `MULTIVF/VFF/VFQ/VFI/VFB/VF2`, tout en excluant les variantes de sous-titres comme `MULTISUB`, `MULTI-SUBS` ou `MULTI.SUBFR`.', NULL);

insert into "tags" ("name") values ('Language') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*MULTi', 'Language');

insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*MULTi', 'Sseh');
-- --- END op 1171

-- --- BEGIN op 1172 ( create regular_expression "*Release Group is AZAZE" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('*Release Group is AZAZE', '(?i)\bAZAZE\b', 'Détecte `AZAZE` uniquement si le nom correspond exactement à `AZAZE`, sans aucun caractère avant ou après.', NULL);

insert into "tags" ("name") values ('Team') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*Release Group is AZAZE', 'Team');

insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*Release Group is AZAZE', 'Sseh');
-- --- END op 1172

-- --- BEGIN op 1173 ( create regular_expression "*Special Edition" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('*Special Edition', '(?i)\bAZAZE\b', 'Détecte `AZAZE` uniquement si le nom correspond exactement à `AZAZE`, sans aucun caractère avant ou après.', NULL);

insert into "tags" ("name") values ('Edition') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*Special Edition', 'Edition');

insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*Special Edition', 'Sseh');
-- --- END op 1173

-- --- BEGIN op 1174 ( update regular_expression "*Special Edition" )
update "regular_expressions" set "description" = 'Détecte les marqueurs d’édition spéciale comme `EXTENDED`, `UNCUT`, `DIRECTORS`, `SPECIAL`, `UNRATED`, `UNCENSORED`, `CUT`, `VERSION`, `EDITION`, `RESTORED` ainsi que les variantes françaises `RESTAURE`, `RESTAUREE`, `RESTAURÉ`, `RESTAURÉE`.' where "name" = '*Special Edition' and "description" = 'Détecte `AZAZE` uniquement si le nom correspond exactement à `AZAZE`, sans aucun caractère avant ou après.';
-- --- END op 1174

-- --- BEGIN op 1175 ( update regular_expression "*Special Edition" )
update "regular_expressions" set "pattern" = '(?i)(?<!^)\b(extended|uncut|directors|special|unrated|uncensored|cut|version|(?<!{)edition|restored|restaur(?:ation|ée|ee|é|e))(\b|\d)' where "name" = '*Special Edition' and "pattern" = '(?i)\bAZAZE\b';
-- --- END op 1175

-- --- BEGIN op 1176 ( create regular_expression "*Tag EN in title" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('*Tag EN in title', '(?i)(?<=\b[12]\d{3}\b).*\bEN\b', 'Détecte le tag `EN` isolé dans le nom de la release.', NULL);

insert into "tags" ("name") values ('Language') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*Tag EN in title', 'Language');

insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*Tag EN in title', 'Sseh');
-- --- END op 1176

-- --- BEGIN op 1177 ( create regular_expression "*Tag FR in title" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('*Tag FR in title', '(?i)(?<=\b[12]\d{3}\b).*\bFR\b', 'Détecte le tag `FR` isolé dans le nom de la release.', NULL);

insert into "tags" ("name") values ('Language') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*Tag FR in title', 'Language');

insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*Tag FR in title', 'Sseh');
-- --- END op 1177

-- --- BEGIN op 1178 ( create regular_expression "*Team -PopHD" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('*Team -PopHD', '^(PopHD)$', 'Matches `PopHD` when preceded by whitespace, a hyphen or dot', NULL);

insert into "tags" ("name") values ('Team') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*Team -PopHD', 'Team');

insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*Team -PopHD', 'Sseh');
-- --- END op 1178

-- --- BEGIN op 1179 ( create regular_expression "*Team -XSHD" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('*Team -XSHD', '^(XSHD)$', 'Matches `XSHD` when preceded by whitespace, a hyphen or dot', NULL);

insert into "tags" ("name") values ('Team') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*Team -XSHD', 'Team');

insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*Team -XSHD', 'Sseh');
-- --- END op 1179

-- --- BEGIN op 1180 ( create regular_expression "*VOSTFR" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('*VOSTFR', '(?i)\bVOST(?:[ ._-]*FR(?:E|A)?|F)\b', 'Détecte les tags `VOSTFR` / `VOSTF`, y compris avec séparateurs ou variantes `FRE` / `FRA`, tout en limitant les faux positifs.', NULL);

insert into "tags" ("name") values ('Language') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*VOSTFR', 'Language');

insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*VOSTFR', 'Sseh');
-- --- END op 1180

-- --- BEGIN op 1181 ( update regular_expression "*Team -PopHD" )
update "regular_expressions" set "description" = 'Matches the release group exactly `PopHD`' where "name" = '*Team -PopHD' and "description" = 'Matches `PopHD` when preceded by whitespace, a hyphen or dot';
-- --- END op 1181

-- --- BEGIN op 1182 ( update regular_expression "*Team -XSHD" )
update "regular_expressions" set "description" = 'Matches the release group exactly `XSHD`' where "name" = '*Team -XSHD' and "description" = 'Matches `XSHD` when preceded by whitespace, a hyphen or dot';
-- --- END op 1182

-- --- BEGIN op 1183 ( update regular_expression "*Release Group is AZAZE" )
update "regular_expressions" set "description" = 'Détecte le tag `AZAZE` comme terme isolé, sans tenir compte de la casse.' where "name" = '*Release Group is AZAZE' and "description" = 'Détecte `AZAZE` uniquement si le nom correspond exactement à `AZAZE`, sans aucun caractère avant ou après.';
-- --- END op 1183

-- --- BEGIN op 1184 ( update regular_expression "*Tag EN in title" )
update "regular_expressions" set "description" = 'Détecte le tag EN uniquement après l''année, pour éviter la préposition française "en" présente dans les titres' where "name" = '*Tag EN in title' and "description" = 'Détecte le tag `EN` isolé dans le nom de la release.';
-- --- END op 1184

-- --- BEGIN op 1185 ( update regular_expression "*Tag FR in title" )
update "regular_expressions" set "description" = 'Détecte le tag FR uniquement après l''année' where "name" = '*Tag FR in title' and "description" = 'Détecte le tag `FR` isolé dans le nom de la release.';
-- --- END op 1185

-- --- BEGIN op 1186 ( update regular_expression "*Release Group is AZAZE" )
update "regular_expressions" set "description" = 'Détecte `AZAZE` avec `\b` en condition Release Group. Miroir volontaire de la regex Trash `Bad/False releases` du CF `FR LQ`, qui contient `AZAZE` entre limites de mot. Utilisée en négation dans le CF `*AZAZE LQ` pour éviter le double scoring avec `*LQ & FR LQ`. NE PAS élargir vers `[^A-Za-z0-9]` : un groupe du type `AZAZE_FR` échapperait alors à toute pénalité, `\b` ne franchissant pas l''underscore.' where "name" = '*Release Group is AZAZE' and "description" = 'Détecte le tag `AZAZE` comme terme isolé, sans tenir compte de la casse.';
-- --- END op 1186

-- --- BEGIN op 1187 ( update regular_expression "*Special Edition" )
update "regular_expressions" set "description" = 'Détecte les marqueurs d’édition spéciale comme `EXTENDED`, `UNCUT`, `DIRECTORS`, `SPECIAL`, `UNRATED`, `UNCENSORED`, `CUT`, `VERSION`, `EDITION`, `RESTORED` ainsi que les variantes françaises `RESTAURE`, `RESTAUREE`, `RESTAURÉ`, `RESTAURÉE`, `RESTAURATION`' where "name" = '*Special Edition' and "description" = 'Détecte les marqueurs d’édition spéciale comme `EXTENDED`, `UNCUT`, `DIRECTORS`, `SPECIAL`, `UNRATED`, `UNCENSORED`, `CUT`, `VERSION`, `EDITION`, `RESTORED` ainsi que les variantes françaises `RESTAURE`, `RESTAUREE`, `RESTAURÉ`, `RESTAURÉE`.';
-- --- END op 1187
