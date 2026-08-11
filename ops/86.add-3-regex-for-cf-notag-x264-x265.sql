-- @operation: export
-- @entity: batch
-- @name: Add 3 regex for CF *Notag - x264 x265
-- @exportedAt: 2026-08-11T09:00:38.432Z
-- @opIds: 2186, 2187, 2188, 2189, 2190, 2191, 2192, 2193, 2194, 2195, 2196, 2197, 2198, 2199, 2200

-- --- BEGIN op 2186 ( create regular_expression "*XviD" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('*XviD', '(?i)\bXviD\b', 'Détecte le codec vidéo `XviD` lorsqu’il est explicitement indiqué dans le nom de la release. Utilisée notamment par le CF `*Notag - x264 x265` afin qu’une release XviD ne soit pas assimilée à du x264 en l’absence de tag AVC/x264.', NULL);

insert into "tags" ("name") values ('Video Codec') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*XviD', 'Video Codec');

insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*XviD', 'Sseh');
-- --- END op 2186

-- --- BEGIN op 2187 ( create regular_expression "*DivX" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('*DivX', '(?i)\bDivX\b', 'Détecte le codec vidéo `DivX` lorsqu’il est explicitement indiqué dans le nom de la release. Utilisée notamment par le CF `*Notag - x264 x265` afin qu’une release DivX ne soit pas assimilée à du x264 en l’absence de tag AVC/x264.', NULL);

insert into "tags" ("name") values ('Video Codec') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*DivX', 'Video Codec');

insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*DivX', 'Sseh');
-- --- END op 2187

-- --- BEGIN op 2188 ( create regular_expression "*VP8" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('*VP8', '(?i)\bVP8\b', 'Détecte le codec vidéo `VP8` lorsqu’il est explicitement indiqué dans le nom de la release. Utilisée notamment par le CF `*Notag - x264 x265` afin qu’une release VP8 ne soit pas assimilée à du x264 en l’absence de tag AVC/x264.', NULL);

insert into "tags" ("name") values ('Video Codec') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*VP8', 'Video Codec');

insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('*VP8', 'Sseh');
-- --- END op 2188

-- --- BEGIN op 2189 ( update custom_format "*Notag - x264 x265" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Notag - x264 x265', 'Not Xvid', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Notag - x264 x265', 'Not Xvid', '*XviD');
-- --- END op 2189

-- --- BEGIN op 2190 ( update custom_format "*Notag - x264 x265" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Notag - x264 x265', 'Not DivX', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Notag - x264 x265', 'Not DivX', '*DivX');
-- --- END op 2190

-- --- BEGIN op 2191 ( update custom_format "*Notag - x264 x265" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Notag - x264 x265', 'Not VP8', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Notag - x264 x265', 'Not VP8', '*VP8');
-- --- END op 2191

-- --- BEGIN op 2192 ( update custom_format "*Notag - x264 x265" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Notag - x264 x265', 'Not VP9', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Notag - x264 x265', 'Not VP9', 'VP9');
-- --- END op 2192

-- --- BEGIN op 2193 ( update custom_format "*Notag - x264 x265" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '*Notag - x264 x265'
	  AND name = 'Not Xvid'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 1;
-- --- END op 2193

-- --- BEGIN op 2194 ( update custom_format "*Notag - x264 x265" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('*Notag - x264 x265', 'Not XviD', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('*Notag - x264 x265', 'Not XviD', '*XviD');
-- --- END op 2194

-- --- BEGIN op 2195 ( update custom_format "*Notag - x264 x265" )
update "custom_formats" set "description" = 'Se déclenche lorsque aucun codec vidéo connu n’est identifiable dans le nom de la release. Attribue alors le score du CF `x264`, hypothèse par défaut pour les releases mal nommées sur les trackers français.
Répond au non-respect fréquent des conventions de nommage, où l’absence de tag codec ne signifie pas nécessairement l’absence de codec.
Les conditions de titre excluent explicitement `AVC/x264`, `HEVC/x265`, `VVC/x266`, `AV1`, `VC-1,` `MPEG-2`, `XviD`, `DivX`, `VP8` et `VP9`. Une release indiquant explicitement l’un de ces codecs ne peut donc pas être assimilée à du `x264`.
Les conditions `Not Remux` empêchent également les Remux de recevoir artificiellement le score x264 lorsque leur nom ne précise pas le codec vidéo.' where "name" = '*Notag - x264 x265' and "description" = 'Se déclenche lorsque aucun codec vidéo n''est identifiable dans le nom de la release. Attribue alors le score du CF `x264`, hypothèse la plus prudente puisque le x264 reste le codec par défaut des releases mal nommées.

Répond au non-respect fréquent des conventions de nommage sur les trackers français, où l''absence de tag codec ne signifie pas l''absence de codec.

Les six conditions de titre couvrent AVC, HEVC, VVC, AV1, VC-1 et MPEG2, ce qui rend le CF exclusif de `x264`, `x265` et du CF Trash `AV1`. La condition `Not Remux` reprend celle des CF `x264` et `x265` de Trash, afin qu''un remux ne reçoive jamais de points de codec, qu''il déclare ou non son codec dans son nom.

Les codecs anciens comme XviD et DivX ne sont pas couverts et seront traités comme du x264.';
-- --- END op 2195

-- --- BEGIN op 2196 ( create custom_format "*Notag - x264 x265" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Notag - x264 x265', 'Film.2021.1080p.BluRay.XviD-GROUP', 'movie', 0, NULL);
-- --- END op 2196

-- --- BEGIN op 2197 ( create custom_format "*Notag - x264 x265" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Notag - x264 x265', 'Film.2021.1080p.BluRay.DivX-GROUP', 'movie', 0, NULL);
-- --- END op 2197

-- --- BEGIN op 2198 ( create custom_format "*Notag - x264 x265" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Notag - x264 x265', 'Film.2021.1080p.BluRay.VP8-GROUP', 'movie', 0, NULL);
-- --- END op 2198

-- --- BEGIN op 2199 ( create custom_format "*Notag - x264 x265" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('*Notag - x264 x265', 'Film.2021.1080p.BluRay.VP9-GROUP', 'movie', 0, NULL);
-- --- END op 2199

-- --- BEGIN op 2200 ( update custom_format "*Notag - x264 x265" )
update "custom_formats" set "description" = 'Se déclenche lorsque aucun codec vidéo connu n’est identifiable dans le nom de la release. Attribue alors le score du CF `x264`, hypothèse par défaut pour les releases mal nommées sur les trackers français.
Répond au non-respect fréquent des conventions de nommage, où l’absence de tag codec ne signifie pas nécessairement l’absence de codec.
Les conditions de titre excluent explicitement `AVC/x264`, `HEVC/x265`, `VVC/x266`, `AV1`, `VC-1`, `MPEG-2`, `XviD`, `DivX`, `VP8` et `VP9`. Une release indiquant explicitement l’un de ces codecs ne peut donc pas être assimilée à du `x264`.
Les conditions `Not Remux` empêchent également les Remux de recevoir artificiellement le score x264 lorsque leur nom ne précise pas le codec vidéo.' where "name" = '*Notag - x264 x265' and "description" = 'Se déclenche lorsque aucun codec vidéo connu n’est identifiable dans le nom de la release. Attribue alors le score du CF `x264`, hypothèse par défaut pour les releases mal nommées sur les trackers français.
Répond au non-respect fréquent des conventions de nommage, où l’absence de tag codec ne signifie pas nécessairement l’absence de codec.
Les conditions de titre excluent explicitement `AVC/x264`, `HEVC/x265`, `VVC/x266`, `AV1`, `VC-1,` `MPEG-2`, `XviD`, `DivX`, `VP8` et `VP9`. Une release indiquant explicitement l’un de ces codecs ne peut donc pas être assimilée à du `x264`.
Les conditions `Not Remux` empêchent également les Remux de recevoir artificiellement le score x264 lorsque leur nom ne précise pas le codec vidéo.';
-- --- END op 2200
