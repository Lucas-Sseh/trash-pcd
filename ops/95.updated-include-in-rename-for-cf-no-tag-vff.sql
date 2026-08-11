-- @operation: export
-- @entity: batch
-- @name: Updated include in rename for CF *No tag - VFF
-- @exportedAt: 2026-08-11T14:33:35.269Z
-- @opIds: 2314

-- --- BEGIN op 2314 ( update custom_format "*No tag - VFF" )
update "custom_formats" set "include_in_rename" = 0 where "name" = '*No tag - VFF' and "include_in_rename" = 1;
-- --- END op 2314
