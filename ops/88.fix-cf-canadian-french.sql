-- @operation: export
-- @entity: batch
-- @name: Fix CF *Canadian French
-- @exportedAt: 2026-08-11T09:59:17.250Z
-- @opIds: 2240, 2241, 2242

-- --- BEGIN op 2240 ( update regular_expression "*Canadian French" )
update "regular_expressions" set "pattern" = '\b(VFQ|\d{3,4}p[ ._-](?:CAN|CA)|(?<=MULTi[ ._-])(?:FR(?:A|CAN?)|CAN|CA))\b' where "name" = '*Canadian French' and "pattern" = '\b(VFQ|\d{3,4}p[ .](?:CAN|CA)|(?<=MULTi[ .])(?:FR(?:A|CAN?)|CAN|CA))\b';
-- --- END op 2240

-- --- BEGIN op 2241 ( update regular_expression "*Canadian French" )
update "regular_expressions" set "pattern" = '\b(VFQ|\d{3,4}p[ .](?:CAN|CA)|(?<=MULTi[ .])(?:FR(?:A|CAN?)|CAN|CA))\b' where "name" = '*Canadian French' and "pattern" = '\b(VFQ|\d{3,4}p[ ._-](?:CAN|CA)|(?<=MULTi[ ._-])(?:FR(?:A|CAN?)|CAN|CA))\b';
-- --- END op 2241

-- --- BEGIN op 2242 ( update regular_expression "*Canadian French" )
update "regular_expressions" set "pattern" = '\b(VFQ|\d{3,4}p[ ._-](?:CAN|CA)|(?<=MULTi[ ._-])(?:FR(?:A|CAN?)|CAN|CA))\b' where "name" = '*Canadian French' and "pattern" = '\b(VFQ|\d{3,4}p[ .](?:CAN|CA)|(?<=MULTi[ .])(?:FR(?:A|CAN?)|CAN|CA))\b';
-- --- END op 2242
