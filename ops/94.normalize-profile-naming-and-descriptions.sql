-- @operation: export
-- @entity: batch
-- @name: Normalize profile naming and descriptions
-- @exportedAt: 2026-08-11T13:45:17.335Z
-- @opIds: 2307, 2308, 2309, 2310, 2311, 2312

-- --- BEGIN op 2307 ( update quality_profile "Multi.VO - 1080p - YGG" )
update "quality_profiles" set "description" = 'Profil personnalisé 1080p destiné à Radarr et Sonarr, conçu principalement pour une utilisation avec des trackers francophones.
Les scores privilégient d’abord la langue et les caractéristiques vidéo : les releases `Original + French` et leurs équivalents sans tag `MULTi` sont fortement favorisés, ainsi que le `x265`. 
Les teams de confiance peuvent ensuite départager ou dépasser une release d’origine inconnue selon leur niveau de bonus.
Les qualités `Bluray-1080p`, `WEBDL-1080p` et `WEBRip-1080p` sont considérées comme équivalentes dans le groupe principal, tandis que `HDTV-1080p` est placé au niveau inférieur.
Les upgrades par score utilisent un incrément minimal de 100 points afin que les préférences secondaires à faible score ne provoquent pas, seules, un nouveau téléchargement.' where "name" = 'Multi.VO - 1080p - YGG' and "description" is null;
-- --- END op 2307

-- --- BEGIN op 2308 ( update quality_profile "Multi.VO - 1080p - YGG" )
update "quality_profiles" set "description" = 'Profil personnalisé 1080p destiné à Radarr et Sonarr, conçu principalement pour une utilisation avec des trackers francophones.

Les scores privilégient d’abord la langue et les caractéristiques vidéo : les releases `Original + French` et leurs équivalents sans tag `MULTi` sont fortement favorisés, ainsi que le x265. Les teams de confiance peuvent ensuite départager ou dépasser une release d’origine inconnue selon leur niveau de bonus.

Les qualités `Bluray-1080p`, `WEBDL-1080p` et `WEBRip-1080p` sont considérées comme équivalentes dans le groupe principal, tandis que `HDTV-1080p` est placé au niveau inférieur.

Les upgrades par score utilisent un incrément minimal de 100 points afin que les préférences secondaires à faible score ne provoquent pas, seules, un nouveau téléchargement.' where "name" = 'Multi.VO - 1080p - YGG' and "description" = 'Profil personnalisé 1080p destiné à Radarr et Sonarr, conçu principalement pour une utilisation avec des trackers francophones.
Les scores privilégient d’abord la langue et les caractéristiques vidéo : les releases `Original + French` et leurs équivalents sans tag `MULTi` sont fortement favorisés, ainsi que le `x265`. 
Les teams de confiance peuvent ensuite départager ou dépasser une release d’origine inconnue selon leur niveau de bonus.
Les qualités `Bluray-1080p`, `WEBDL-1080p` et `WEBRip-1080p` sont considérées comme équivalentes dans le groupe principal, tandis que `HDTV-1080p` est placé au niveau inférieur.
Les upgrades par score utilisent un incrément minimal de 100 points afin que les préférences secondaires à faible score ne provoquent pas, seules, un nouveau téléchargement.';
-- --- END op 2308

-- --- BEGIN op 2309 ( update custom_format "*No tag - x264 x265" )
update "custom_formats" set "name" = '*No tag - x264 x265' where "name" = '*Notag - x264 x265';
-- --- END op 2309

-- --- BEGIN op 2310 ( update quality_profile "Multi.VO - 1080p - YGG" )
update "quality_profile_custom_formats" set "custom_format_name" = '*No tag - x264 x265' where "quality_profile_name" = 'Multi.VO - 1080p - YGG' and "custom_format_name" = '*Notag - x264 x265' and "arr_type" = 'radarr' and "score" = 1400;

update "quality_profile_custom_formats" set "custom_format_name" = '*No tag - x264 x265' where "quality_profile_name" = 'Multi.VO - 1080p - YGG' and "custom_format_name" = '*Notag - x264 x265' and "arr_type" = 'sonarr' and "score" = 1400;
-- --- END op 2310

-- --- BEGIN op 2311 ( update regular_expression "*FR Tracker Extra Groups - YGG" )
update "regular_expressions" set "description" = 'Détecte des teams internes à YGG' where "name" = '*FR Tracker Extra Groups - YGG' and "description" = 'Détecte teams interne YGG (RIP)';
-- --- END op 2311

-- --- BEGIN op 2312 ( update regular_expression "*FR Tracker Extra Groups - Sharewood" )
update "regular_expressions" set "description" = 'Détecte des teams internes à Sharewood' where "name" = '*FR Tracker Extra Groups - Sharewood' and "description" = 'Détecte teams interne Sharewood (RIP)';
-- --- END op 2312
