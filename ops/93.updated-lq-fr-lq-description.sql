-- @operation: export
-- @entity: batch
-- @name: Updated *LQ & FR LQ description
-- @exportedAt: 2026-08-11T13:24:23.678Z
-- @opIds: 2305

-- --- BEGIN op 2305 ( update custom_format "*LQ & FR LQ" )
update "custom_formats" set "description" = 'Fusion des CF TRaSH `LQ` et `FR LQ`. Ces deux CF partagent plusieurs groupes, notamment `AZAZE`, présent à la fois dans la condition `AZAZE` de `LQ` et dans la regex `Bad/False releases` de `FR LQ`. Les conserver séparément appliquerait la pénalité deux fois sur certaines releases.

La fusion reste nécessaire car les deux périmètres sont complémentaires : `LQ` couvre principalement les groupes de faible qualité internationaux, tandis que `FR LQ` couvre les spécificités des trackers et releases francophones. Un environnement utilisant à la fois des trackers FR et internationaux est donc exposé aux deux.

Les conditions de `*LQ & FR LQ` ne sont plus maintenues manuellement : elles sont reconstruites automatiquement à chaque compilation à partir de l’état courant des CF upstream `LQ` et `FR LQ`. Les ajouts, suppressions et modifications upstream sont ainsi hérités automatiquement, tout en conservant pour chaque condition son `arr_type`, son état `Required`, sa négation et son paramétrage d’origine.

Les conditions héritées sont préfixées par `LQ ::` ou `FR LQ ::` afin d’éviter toute collision de nom entre les deux CF sources.

À l’heure actuelle, toutes les conditions upstream concernées sont en `Required = OFF`, donc en logique OU : le CF se déclenche dès qu’au moins une condition applicable de `LQ` ou `FR LQ` est reconnue.' where "name" = '*LQ & FR LQ' and "description" = 'Fusion des CF Trash `LQ` et `FR LQ`. Ces deux CF partagent plusieurs groupes, notamment `AZAZE`, présent à la fois dans la condition `AZAZE` de `LQ` et dans la regex `Bad/False releases` de `FR LQ`. Les conserver séparément appliquerait la pénalité deux fois sur les mêmes releases.

La fusion est nécessaire parce que les deux périmètres restent utiles : `LQ` couvre les groupes de faible qualité internationaux, `FR LQ` couvre les spécificités des trackers français. Un compte sur des trackers FR et EN expose aux deux.

Toutes les conditions sont en `Required = OFF`, donc en OU. Le CF se déclenche dès qu''un seul groupe de la liste est reconnu.';
-- --- END op 2305
