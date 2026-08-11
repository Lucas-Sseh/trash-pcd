-- @operation: export
-- @entity: batch
-- @name: Updated tested for CF *Team CHiLL
-- @exportedAt: 2026-08-11T10:23:39.654Z
-- @opIds: 2260, 2261, 2262

-- --- BEGIN op 2260 ( update custom_format "*Team CHiLL" )
UPDATE custom_format_tests SET title = 'Film.2021.MULTi.1080p.WEB.x264-CHiLL' WHERE custom_format_name = '*Team CHiLL' AND title = 'Film.2021.MULTi.1080p.WEB.x264-XSHD' AND type = 'movie';
-- --- END op 2260

-- --- BEGIN op 2261 ( update custom_format "*Team CHiLL" )
UPDATE custom_format_tests SET title = 'Film.2021.MULTi.1080p.WEB.x264-CHiLLTeam' WHERE custom_format_name = '*Team CHiLL' AND title = 'Film.2021.MULTi.1080p.WEB.x264-XSHDTeam' AND type = 'movie';
-- --- END op 2261

-- --- BEGIN op 2262 ( update custom_format "*Team CHiLL" )
UPDATE custom_format_tests SET title = 'CHiLL.2021.MULTi.1080p.WEB.x264-GROUP' WHERE custom_format_name = '*Team CHiLL' AND title = 'Film.2021.MULTi.1080p.WEB.x264-GROUP' AND type = 'movie';
-- --- END op 2262
