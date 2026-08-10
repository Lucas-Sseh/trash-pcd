-- @operation: export
-- @entity: batch
-- @name: Add custom 1080p profile and Radarr settings
-- @exportedAt: 2026-08-10T20:26:29.687Z
-- @opIds: 1645, 1646, 1647, 1648, 1649, 1650, 1651, 1652, 1653, 1654, 1655, 1656, 1657, 1658, 1659, 1660, 1661, 1662, 1663, 1664, 1665, 1666, 1667, 1668, 1669, 1670, 1671, 1672, 1673, 1674, 1675, 1676, 1677, 1678, 1679, 1680, 1681, 1682, 1683, 1684, 1685, 1686, 1687, 1688, 1689, 1690, 1691, 1692, 1693, 1694, 1695, 1696, 1697, 1698, 1699, 1700, 1701, 1702, 1703, 1704, 1705, 1706, 1707, 1708, 1709, 1710, 1711, 1712, 1713, 1714, 1715, 1716, 1717, 1718, 1719, 1720, 1721, 1722, 1723, 1724, 1725, 1726, 1727, 1728, 1729, 1730, 1731, 1732, 1733, 1734, 1735, 1736, 1737, 1738, 1739, 1740, 1741, 1742, 1743, 1744, 1745, 1746, 1747, 1748, 1749, 1750, 1751, 1752, 1753, 1754, 1755, 1756, 1757, 1758, 1759, 1760, 1761, 1762, 1763, 1764, 1765, 1766, 1767, 1768, 1769, 1770, 1771, 1772, 1773, 1774, 1775, 1776, 1777, 1778, 1779, 1780, 1781, 1782, 1783, 1784, 1785, 1786, 1787, 1788, 1789, 1790, 1791, 1792, 1793, 1794, 1795, 1796, 1797, 1798, 1799, 1800, 1801, 1802, 1803, 1804, 1805, 1806, 1807, 1808, 1809, 1810, 1811, 1812, 1813, 1814, 1815, 1816, 1817, 1818, 1819, 1820, 1821, 1822, 1823, 1824, 1825, 1826, 1827, 1828, 1829, 1830, 1831, 1832, 1833, 1834, 1835, 1836, 1837, 1838, 1839, 1840, 1841, 1842, 1843, 1844, 1845, 1846, 1847

-- --- BEGIN op 1645 ( create quality_profile "Multi.VO - 1080p - YGG" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('Multi.VO - 1080p - YGG', NULL, 1, 0, 0, 1);

insert into "tags" ("name") values ('1080p') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Multi.VO - 1080p - YGG', '1080p');

insert into "tags" ("name") values ('x265') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Multi.VO - 1080p - YGG', 'x265');

insert into "tags" ("name") values ('fallback: x264') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Multi.VO - 1080p - YGG', 'fallback: x264');

insert into "tags" ("name") values ('Sseh') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('Multi.VO - 1080p - YGG', 'Sseh');

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Multi.VO - 1080p - YGG', 'WEB 1080p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Multi.VO - 1080p - YGG', 'WEB 1080p', 'WEBDL-1080p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Multi.VO - 1080p - YGG', 'WEB 1080p', 'WEBRip-1080p', 1);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Multi.VO - 1080p - YGG', 'Pre-releases');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Multi.VO - 1080p - YGG', 'Pre-releases', 'REGIONAL', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Multi.VO - 1080p - YGG', 'Pre-releases', 'DVDSCR', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Multi.VO - 1080p - YGG', 'Pre-releases', 'TELECINE', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Multi.VO - 1080p - YGG', 'Pre-releases', 'TELESYNC', 3);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Multi.VO - 1080p - YGG', 'Pre-releases', 'CAM', 4);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Multi.VO - 1080p - YGG', 'Pre-releases', 'WORKPRINT', 5);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Multi.VO - 1080p - YGG', 'Unwanted');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Multi.VO - 1080p - YGG', 'Unwanted', 'Unknown', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Multi.VO - 1080p - YGG', 'Unwanted', 'Raw-HD', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Multi.VO - 1080p - YGG', 'Unwanted', 'BR-DISK', 2);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Multi.VO - 1080p - YGG', 'Remux-2160p', NULL, 1, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Multi.VO - 1080p - YGG', 'Bluray-2160p', NULL, 2, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Multi.VO - 1080p - YGG', 'WEBDL-2160p', NULL, 3, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Multi.VO - 1080p - YGG', 'WEBRip-2160p', NULL, 4, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Multi.VO - 1080p - YGG', 'HDTV-2160p', NULL, 5, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Multi.VO - 1080p - YGG', 'Remux-1080p', NULL, 6, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Multi.VO - 1080p - YGG', 'Bluray-1080p', NULL, 7, 1, 1);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Multi.VO - 1080p - YGG', NULL, 'WEB 1080p', 8, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Multi.VO - 1080p - YGG', 'HDTV-1080p', NULL, 9, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Multi.VO - 1080p - YGG', 'Bluray-720p', NULL, 10, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Multi.VO - 1080p - YGG', 'WEBDL-720p', NULL, 11, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Multi.VO - 1080p - YGG', 'WEBRip-720p', NULL, 12, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Multi.VO - 1080p - YGG', 'HDTV-720p', NULL, 13, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Multi.VO - 1080p - YGG', 'Bluray-576p', NULL, 14, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Multi.VO - 1080p - YGG', 'Bluray-480p', NULL, 15, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Multi.VO - 1080p - YGG', 'WEBDL-480p', NULL, 16, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Multi.VO - 1080p - YGG', 'WEBRip-480p', NULL, 17, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Multi.VO - 1080p - YGG', 'HDTV-480p', NULL, 18, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Multi.VO - 1080p - YGG', 'DVD-R', NULL, 19, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Multi.VO - 1080p - YGG', 'DVD', NULL, 20, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Multi.VO - 1080p - YGG', 'SDTV', NULL, 21, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Multi.VO - 1080p - YGG', NULL, 'Pre-releases', 22, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Multi.VO - 1080p - YGG', NULL, 'Unwanted', 23, 0, 0);

INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('Multi.VO - 1080p - YGG', 'Original', 'simple');
-- --- END op 1645

-- --- BEGIN op 1646 ( update quality_profile "Multi.VO - 1080p - YGG" )
update "quality_profiles" set "upgrade_until_score" = 10000 where "name" = 'Multi.VO - 1080p - YGG' and "upgrade_until_score" = 0;
-- --- END op 1646

-- --- BEGIN op 1647 ( update quality_profile "Multi.VO - 1080p - YGG" )
update "quality_profiles" set "upgrade_score_increment" = 100 where "name" = 'Multi.VO - 1080p - YGG' and "upgrade_score_increment" = 1;
-- --- END op 1647

-- --- BEGIN op 1648 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'x265 (Codec)', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'x265 (Codec)'
    AND arr_type = 'radarr'
);
-- --- END op 1648

-- --- BEGIN op 1649 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'x265 (Codec)', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'x265 (Codec)'
    AND arr_type = 'sonarr'
);
-- --- END op 1649

-- --- BEGIN op 1650 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '*Notag - x264 x265', 'radarr', 1400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '*Notag - x264 x265'
    AND arr_type = 'radarr'
);
-- --- END op 1650

-- --- BEGIN op 1651 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '*Notag - x264 x265', 'sonarr', 1400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '*Notag - x264 x265'
    AND arr_type = 'sonarr'
);
-- --- END op 1651

-- --- BEGIN op 1652 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'x264 (Codec)', 'radarr', 1400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'x264 (Codec)'
    AND arr_type = 'radarr'
);
-- --- END op 1652

-- --- BEGIN op 1653 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'x264 (Codec)', 'sonarr', 1400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'x264 (Codec)'
    AND arr_type = 'sonarr'
);
-- --- END op 1653

-- --- BEGIN op 1654 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '*MULTi', 'radarr', 1004
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '*MULTi'
    AND arr_type = 'radarr'
);
-- --- END op 1654

-- --- BEGIN op 1655 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '*MULTi', 'sonarr', 1004
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '*MULTi'
    AND arr_type = 'sonarr'
);
-- --- END op 1655

-- --- BEGIN op 1656 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '*Criterion Collection', 'radarr', 605
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '*Criterion Collection'
    AND arr_type = 'radarr'
);
-- --- END op 1656

-- --- BEGIN op 1657 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '*Criterion Collection', 'sonarr', 605
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '*Criterion Collection'
    AND arr_type = 'sonarr'
);
-- --- END op 1657

-- --- BEGIN op 1658 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '*Remaster', 'radarr', 605
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '*Remaster'
    AND arr_type = 'radarr'
);
-- --- END op 1658

-- --- BEGIN op 1659 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '*Remaster', 'sonarr', 605
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '*Remaster'
    AND arr_type = 'sonarr'
);
-- --- END op 1659

-- --- BEGIN op 1660 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '*Special Edition', 'radarr', 605
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '*Special Edition'
    AND arr_type = 'radarr'
);
-- --- END op 1660

-- --- BEGIN op 1661 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '*Special Edition', 'sonarr', 605
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '*Special Edition'
    AND arr_type = 'sonarr'
);
-- --- END op 1661

-- --- BEGIN op 1662 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '*Team FW', 'radarr', 602
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '*Team FW'
    AND arr_type = 'radarr'
);
-- --- END op 1662

-- --- BEGIN op 1663 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '*Team FW', 'sonarr', 602
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '*Team FW'
    AND arr_type = 'sonarr'
);
-- --- END op 1663

-- --- BEGIN op 1664 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '*Team mHDgz', 'radarr', 601
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '*Team mHDgz'
    AND arr_type = 'radarr'
);
-- --- END op 1664

-- --- BEGIN op 1665 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '*Team mHDgz', 'sonarr', 601
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '*Team mHDgz'
    AND arr_type = 'sonarr'
);
-- --- END op 1665

-- --- BEGIN op 1666 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '*Team PopHD', 'radarr', 601
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '*Team PopHD'
    AND arr_type = 'radarr'
);
-- --- END op 1666

-- --- BEGIN op 1667 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '*Team PopHD', 'sonarr', 601
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '*Team PopHD'
    AND arr_type = 'sonarr'
);
-- --- END op 1667

-- --- BEGIN op 1668 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '*Team SUPPLY', 'radarr', 603
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '*Team SUPPLY'
    AND arr_type = 'radarr'
);
-- --- END op 1668

-- --- BEGIN op 1669 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '*Team SUPPLY', 'sonarr', 603
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '*Team SUPPLY'
    AND arr_type = 'sonarr'
);
-- --- END op 1669

-- --- BEGIN op 1670 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '*Team XSHD', 'radarr', 602
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '*Team XSHD'
    AND arr_type = 'radarr'
);
-- --- END op 1670

-- --- BEGIN op 1671 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '*Team XSHD', 'sonarr', 602
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '*Team XSHD'
    AND arr_type = 'sonarr'
);
-- --- END op 1671

-- --- BEGIN op 1672 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '*Language FR EN (no MULTi)', 'radarr', 1004
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '*Language FR EN (no MULTi)'
    AND arr_type = 'radarr'
);
-- --- END op 1672

-- --- BEGIN op 1673 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '*Language FR EN (no MULTi)', 'sonarr', 1004
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '*Language FR EN (no MULTi)'
    AND arr_type = 'sonarr'
);
-- --- END op 1673

-- --- BEGIN op 1674 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '*No tag - VOSTFR', 'radarr', 403
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '*No tag - VOSTFR'
    AND arr_type = 'radarr'
);
-- --- END op 1674

-- --- BEGIN op 1675 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '*No tag - VOSTFR', 'sonarr', 403
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '*No tag - VOSTFR'
    AND arr_type = 'sonarr'
);
-- --- END op 1675

-- --- BEGIN op 1676 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '*VOSTFR', 'radarr', 403
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '*VOSTFR'
    AND arr_type = 'radarr'
);
-- --- END op 1676

-- --- BEGIN op 1677 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '*VOSTFR', 'sonarr', 403
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '*VOSTFR'
    AND arr_type = 'sonarr'
);
-- --- END op 1677

-- --- BEGIN op 1678 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'IMAX', 'radarr', 150
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'IMAX'
    AND arr_type = 'radarr'
);
-- --- END op 1678

-- --- BEGIN op 1679 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'IMAX', 'sonarr', 150
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'IMAX'
    AND arr_type = 'sonarr'
);
-- --- END op 1679

-- --- BEGIN op 1680 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'IMAX Enhanced', 'radarr', 150
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'IMAX Enhanced'
    AND arr_type = 'radarr'
);
-- --- END op 1680

-- --- BEGIN op 1681 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'IMAX Enhanced', 'sonarr', 150
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'IMAX Enhanced'
    AND arr_type = 'sonarr'
);
-- --- END op 1681

-- --- BEGIN op 1682 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '4K Remaster', 'radarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '4K Remaster'
    AND arr_type = 'radarr'
);
-- --- END op 1682

-- --- BEGIN op 1683 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '4K Remaster', 'sonarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '4K Remaster'
    AND arr_type = 'sonarr'
);
-- --- END op 1683

-- --- BEGIN op 1684 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'Repack/Proper', 'radarr', 5
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'Repack/Proper'
    AND arr_type = 'radarr'
);
-- --- END op 1684

-- --- BEGIN op 1685 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'Repack/Proper', 'sonarr', 5
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'Repack/Proper'
    AND arr_type = 'sonarr'
);
-- --- END op 1685

-- --- BEGIN op 1686 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'Repack2', 'radarr', 6
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'Repack2'
    AND arr_type = 'radarr'
);
-- --- END op 1686

-- --- BEGIN op 1687 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'Repack2', 'sonarr', 6
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'Repack2'
    AND arr_type = 'sonarr'
);
-- --- END op 1687

-- --- BEGIN op 1688 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'Repack3', 'radarr', 7
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'Repack3'
    AND arr_type = 'radarr'
);
-- --- END op 1688

-- --- BEGIN op 1689 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'Repack3', 'sonarr', 7
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'Repack3'
    AND arr_type = 'sonarr'
);
-- --- END op 1689

-- --- BEGIN op 1690 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '*No tag - Audio', 'radarr', 3
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '*No tag - Audio'
    AND arr_type = 'radarr'
);
-- --- END op 1690

-- --- BEGIN op 1691 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '*No tag - Audio', 'sonarr', 3
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '*No tag - Audio'
    AND arr_type = 'sonarr'
);
-- --- END op 1691

-- --- BEGIN op 1692 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'AAC', 'radarr', 3
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'AAC'
    AND arr_type = 'radarr'
);
-- --- END op 1692

-- --- BEGIN op 1693 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'AAC', 'sonarr', 3
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'AAC'
    AND arr_type = 'sonarr'
);
-- --- END op 1693

-- --- BEGIN op 1694 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'DD', 'radarr', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'DD'
    AND arr_type = 'radarr'
);
-- --- END op 1694

-- --- BEGIN op 1695 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'DD', 'sonarr', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'DD'
    AND arr_type = 'sonarr'
);
-- --- END op 1695

-- --- BEGIN op 1696 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'DD+', 'radarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'DD+'
    AND arr_type = 'radarr'
);
-- --- END op 1696

-- --- BEGIN op 1697 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'DD+', 'sonarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'DD+'
    AND arr_type = 'sonarr'
);
-- --- END op 1697

-- --- BEGIN op 1698 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '*FR Scene Groups', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '*FR Scene Groups'
    AND arr_type = 'radarr'
);
-- --- END op 1698

-- --- BEGIN op 1699 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '*FR Scene Groups', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '*FR Scene Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 1699

-- --- BEGIN op 1700 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '*No tag - VFF', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '*No tag - VFF'
    AND arr_type = 'radarr'
);
-- --- END op 1700

-- --- BEGIN op 1701 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '*No tag - VFF', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '*No tag - VFF'
    AND arr_type = 'sonarr'
);
-- --- END op 1701

-- --- BEGIN op 1702 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '*VFF', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '*VFF'
    AND arr_type = 'radarr'
);
-- --- END op 1702

-- --- BEGIN op 1703 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '*VFF', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '*VFF'
    AND arr_type = 'sonarr'
);
-- --- END op 1703

-- --- BEGIN op 1704 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '5.1 Surround', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '5.1 Surround'
    AND arr_type = 'radarr'
);
-- --- END op 1704

-- --- BEGIN op 1705 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '5.1 Surround', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '5.1 Surround'
    AND arr_type = 'sonarr'
);
-- --- END op 1705

-- --- BEGIN op 1706 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'AMZN', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'AMZN'
    AND arr_type = 'radarr'
);
-- --- END op 1706

-- --- BEGIN op 1707 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'AMZN', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'AMZN'
    AND arr_type = 'sonarr'
);
-- --- END op 1707

-- --- BEGIN op 1708 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'ATMOS (undefined)', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'ATMOS (undefined)'
    AND arr_type = 'radarr'
);
-- --- END op 1708

-- --- BEGIN op 1709 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'ATMOS (undefined)', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'ATMOS (undefined)'
    AND arr_type = 'sonarr'
);
-- --- END op 1709

-- --- BEGIN op 1710 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'ATVP', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'radarr'
);
-- --- END op 1710

-- --- BEGIN op 1711 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'ATVP', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'sonarr'
);
-- --- END op 1711

-- --- BEGIN op 1712 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'BCORE', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'BCORE'
    AND arr_type = 'radarr'
);
-- --- END op 1712

-- --- BEGIN op 1713 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'BCORE', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'BCORE'
    AND arr_type = 'sonarr'
);
-- --- END op 1713

-- --- BEGIN op 1714 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'CRiT', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'CRiT'
    AND arr_type = 'radarr'
);
-- --- END op 1714

-- --- BEGIN op 1715 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'CRiT', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'CRiT'
    AND arr_type = 'sonarr'
);
-- --- END op 1715

-- --- BEGIN op 1716 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'DD+ ATMOS', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'DD+ ATMOS'
    AND arr_type = 'radarr'
);
-- --- END op 1716

-- --- BEGIN op 1717 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'DD+ ATMOS', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'DD+ ATMOS'
    AND arr_type = 'sonarr'
);
-- --- END op 1717

-- --- BEGIN op 1718 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'DSNP', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'radarr'
);
-- --- END op 1718

-- --- BEGIN op 1719 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'DSNP', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'sonarr'
);
-- --- END op 1719

-- --- BEGIN op 1720 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'DTS', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'DTS'
    AND arr_type = 'radarr'
);
-- --- END op 1720

-- --- BEGIN op 1721 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'DTS', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'DTS'
    AND arr_type = 'sonarr'
);
-- --- END op 1721

-- --- BEGIN op 1722 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'DTS X', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'DTS X'
    AND arr_type = 'radarr'
);
-- --- END op 1722

-- --- BEGIN op 1723 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'DTS X', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'DTS X'
    AND arr_type = 'sonarr'
);
-- --- END op 1723

-- --- BEGIN op 1724 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'DTS-ES', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'DTS-ES'
    AND arr_type = 'radarr'
);
-- --- END op 1724

-- --- BEGIN op 1725 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'DTS-ES', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'DTS-ES'
    AND arr_type = 'sonarr'
);
-- --- END op 1725

-- --- BEGIN op 1726 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'DTS-HD HRA', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'DTS-HD HRA'
    AND arr_type = 'radarr'
);
-- --- END op 1726

-- --- BEGIN op 1727 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'DTS-HD HRA', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'DTS-HD HRA'
    AND arr_type = 'sonarr'
);
-- --- END op 1727

-- --- BEGIN op 1728 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'DTS-HD MA', 'radarr', -1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'DTS-HD MA'
    AND arr_type = 'radarr'
);
-- --- END op 1728

-- --- BEGIN op 1729 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'DTS-HD MA', 'sonarr', -1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'DTS-HD MA'
    AND arr_type = 'sonarr'
);
-- --- END op 1729

-- --- BEGIN op 1730 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'DV (Disk)', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'DV (Disk)'
    AND arr_type = 'radarr'
);
-- --- END op 1730

-- --- BEGIN op 1731 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'DV (Disk)', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'DV (Disk)'
    AND arr_type = 'sonarr'
);
-- --- END op 1731

-- --- BEGIN op 1732 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'DV (w/o HDR fallback)', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'DV (w/o HDR fallback)'
    AND arr_type = 'radarr'
);
-- --- END op 1732

-- --- BEGIN op 1733 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'DV (w/o HDR fallback)', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'DV (w/o HDR fallback)'
    AND arr_type = 'sonarr'
);
-- --- END op 1733

-- --- BEGIN op 1734 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'DV Boost', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'DV Boost'
    AND arr_type = 'radarr'
);
-- --- END op 1734

-- --- BEGIN op 1735 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'DV Boost', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'DV Boost'
    AND arr_type = 'sonarr'
);
-- --- END op 1735

-- --- BEGIN op 1736 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'FLAC', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'FLAC'
    AND arr_type = 'radarr'
);
-- --- END op 1736

-- --- BEGIN op 1737 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'FLAC', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'FLAC'
    AND arr_type = 'sonarr'
);
-- --- END op 1737

-- --- BEGIN op 1738 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'FR HD Bluray Tier 01', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'FR HD Bluray Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 1738

-- --- BEGIN op 1739 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'FR HD Bluray Tier 01', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'FR HD Bluray Tier 01'
    AND arr_type = 'sonarr'
);
-- --- END op 1739

-- --- BEGIN op 1740 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'FR HD Bluray Tier 02', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'FR HD Bluray Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 1740

-- --- BEGIN op 1741 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'FR HD Bluray Tier 02', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'FR HD Bluray Tier 02'
    AND arr_type = 'sonarr'
);
-- --- END op 1741

-- --- BEGIN op 1742 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'FR Remux Tier 01', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'FR Remux Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 1742

-- --- BEGIN op 1743 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'FR Remux Tier 01', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'FR Remux Tier 01'
    AND arr_type = 'sonarr'
);
-- --- END op 1743

-- --- BEGIN op 1744 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'FR Remux Tier 02', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'FR Remux Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 1744

-- --- BEGIN op 1745 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'FR Remux Tier 02', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'FR Remux Tier 02'
    AND arr_type = 'sonarr'
);
-- --- END op 1745

-- --- BEGIN op 1746 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'FR UHD Bluray Tier 01', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'FR UHD Bluray Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 1746

-- --- BEGIN op 1747 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'FR UHD Bluray Tier 01', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'FR UHD Bluray Tier 01'
    AND arr_type = 'sonarr'
);
-- --- END op 1747

-- --- BEGIN op 1748 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'FR UHD Bluray Tier 02', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'FR UHD Bluray Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 1748

-- --- BEGIN op 1749 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'FR UHD Bluray Tier 02', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'FR UHD Bluray Tier 02'
    AND arr_type = 'sonarr'
);
-- --- END op 1749

-- --- BEGIN op 1750 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'FR WEB Tier 01', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'FR WEB Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 1750

-- --- BEGIN op 1751 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'FR WEB Tier 01', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'FR WEB Tier 01'
    AND arr_type = 'sonarr'
);
-- --- END op 1751

-- --- BEGIN op 1752 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'FR WEB Tier 02', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'FR WEB Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 1752

-- --- BEGIN op 1753 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'FR WEB Tier 02', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'FR WEB Tier 02'
    AND arr_type = 'sonarr'
);
-- --- END op 1753

-- --- BEGIN op 1754 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'FR WEB Tier 03', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'FR WEB Tier 03'
    AND arr_type = 'radarr'
);
-- --- END op 1754

-- --- BEGIN op 1755 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'FR WEB Tier 03', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'FR WEB Tier 03'
    AND arr_type = 'sonarr'
);
-- --- END op 1755

-- --- BEGIN op 1756 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'HBO', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'HBO'
    AND arr_type = 'radarr'
);
-- --- END op 1756

-- --- BEGIN op 1757 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'HBO', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'HBO'
    AND arr_type = 'sonarr'
);
-- --- END op 1757

-- --- BEGIN op 1758 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'HD Bluray Tier 01', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'HD Bluray Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 1758

-- --- BEGIN op 1759 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'HD Bluray Tier 01', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'HD Bluray Tier 01'
    AND arr_type = 'sonarr'
);
-- --- END op 1759

-- --- BEGIN op 1760 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'HD Bluray Tier 02', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'HD Bluray Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 1760

-- --- BEGIN op 1761 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'HD Bluray Tier 02', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'HD Bluray Tier 02'
    AND arr_type = 'sonarr'
);
-- --- END op 1761

-- --- BEGIN op 1762 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'HD Bluray Tier 03', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'HD Bluray Tier 03'
    AND arr_type = 'radarr'
);
-- --- END op 1762

-- --- BEGIN op 1763 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'HD Bluray Tier 03', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'HD Bluray Tier 03'
    AND arr_type = 'sonarr'
);
-- --- END op 1763

-- --- BEGIN op 1764 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'HDR10', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'HDR10'
    AND arr_type = 'radarr'
);
-- --- END op 1764

-- --- BEGIN op 1765 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'HDR10', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'HDR10'
    AND arr_type = 'sonarr'
);
-- --- END op 1765

-- --- BEGIN op 1766 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'HDR10Plus Boost', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'HDR10Plus Boost'
    AND arr_type = 'radarr'
);
-- --- END op 1766

-- --- BEGIN op 1767 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'HDR10Plus Boost', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'HDR10Plus Boost'
    AND arr_type = 'sonarr'
);
-- --- END op 1767

-- --- BEGIN op 1768 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'HMAX', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'HMAX'
    AND arr_type = 'radarr'
);
-- --- END op 1768

-- --- BEGIN op 1769 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'HMAX', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'HMAX'
    AND arr_type = 'sonarr'
);
-- --- END op 1769

-- --- BEGIN op 1770 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'Hulu', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'Hulu'
    AND arr_type = 'radarr'
);
-- --- END op 1770

-- --- BEGIN op 1771 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'Hulu', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'Hulu'
    AND arr_type = 'sonarr'
);
-- --- END op 1771

-- --- BEGIN op 1772 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'iT', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'iT'
    AND arr_type = 'radarr'
);
-- --- END op 1772

-- --- BEGIN op 1773 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'iT', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'iT'
    AND arr_type = 'sonarr'
);
-- --- END op 1773

-- --- BEGIN op 1774 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'Language: Original + French', 'radarr', 1004
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'Language: Original + French'
    AND arr_type = 'radarr'
);
-- --- END op 1774

-- --- BEGIN op 1775 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'Language: Original + French', 'sonarr', 1004
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'Language: Original + French'
    AND arr_type = 'sonarr'
);
-- --- END op 1775

-- --- BEGIN op 1776 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'MA', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'MA'
    AND arr_type = 'radarr'
);
-- --- END op 1776

-- --- BEGIN op 1777 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'MA', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'MA'
    AND arr_type = 'sonarr'
);
-- --- END op 1777

-- --- BEGIN op 1778 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'Masters of Cinema', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'Masters of Cinema'
    AND arr_type = 'radarr'
);
-- --- END op 1778

-- --- BEGIN op 1779 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'Masters of Cinema', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'Masters of Cinema'
    AND arr_type = 'sonarr'
);
-- --- END op 1779

-- --- BEGIN op 1780 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'MAX', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'MAX'
    AND arr_type = 'radarr'
);
-- --- END op 1780

-- --- BEGIN op 1781 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'MAX', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'MAX'
    AND arr_type = 'sonarr'
);
-- --- END op 1781

-- --- BEGIN op 1782 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'NF', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'NF'
    AND arr_type = 'radarr'
);
-- --- END op 1782

-- --- BEGIN op 1783 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'NF', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'NF'
    AND arr_type = 'sonarr'
);
-- --- END op 1783

-- --- BEGIN op 1784 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'No-RlsGroup', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'No-RlsGroup'
    AND arr_type = 'radarr'
);
-- --- END op 1784

-- --- BEGIN op 1785 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'No-RlsGroup', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'No-RlsGroup'
    AND arr_type = 'sonarr'
);
-- --- END op 1785

-- --- BEGIN op 1786 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'PCM', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'PCM'
    AND arr_type = 'radarr'
);
-- --- END op 1786

-- --- BEGIN op 1787 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'PCM', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'PCM'
    AND arr_type = 'sonarr'
);
-- --- END op 1787

-- --- BEGIN op 1788 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'PCOK', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'PCOK'
    AND arr_type = 'radarr'
);
-- --- END op 1788

-- --- BEGIN op 1789 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'PCOK', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'PCOK'
    AND arr_type = 'sonarr'
);
-- --- END op 1789

-- --- BEGIN op 1790 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'PMTP', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'PMTP'
    AND arr_type = 'radarr'
);
-- --- END op 1790

-- --- BEGIN op 1791 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'PMTP', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'PMTP'
    AND arr_type = 'sonarr'
);
-- --- END op 1791

-- --- BEGIN op 1792 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'Remux Tier 01', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'Remux Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 1792

-- --- BEGIN op 1793 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'Remux Tier 01', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'Remux Tier 01'
    AND arr_type = 'sonarr'
);
-- --- END op 1793

-- --- BEGIN op 1794 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'Remux Tier 02', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'Remux Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 1794

-- --- BEGIN op 1795 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'Remux Tier 02', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'Remux Tier 02'
    AND arr_type = 'sonarr'
);
-- --- END op 1795

-- --- BEGIN op 1796 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'Remux Tier 03', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'Remux Tier 03'
    AND arr_type = 'radarr'
);
-- --- END op 1796

-- --- BEGIN op 1797 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'Remux Tier 03', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'Remux Tier 03'
    AND arr_type = 'sonarr'
);
-- --- END op 1797

-- --- BEGIN op 1798 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'Retags', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'Retags'
    AND arr_type = 'radarr'
);
-- --- END op 1798

-- --- BEGIN op 1799 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'Retags', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'Retags'
    AND arr_type = 'sonarr'
);
-- --- END op 1799

-- --- BEGIN op 1800 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'Scene', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'Scene'
    AND arr_type = 'radarr'
);
-- --- END op 1800

-- --- BEGIN op 1801 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'Scene', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'Scene'
    AND arr_type = 'sonarr'
);
-- --- END op 1801

-- --- BEGIN op 1802 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'SDR (2160p)', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'SDR (2160p)'
    AND arr_type = 'radarr'
);
-- --- END op 1802

-- --- BEGIN op 1803 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'SDR (2160p)', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'SDR (2160p)'
    AND arr_type = 'sonarr'
);
-- --- END op 1803

-- --- BEGIN op 1804 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'SDR (no WEBDL)', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'SDR (no WEBDL)'
    AND arr_type = 'radarr'
);
-- --- END op 1804

-- --- BEGIN op 1805 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'SDR (no WEBDL)', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'SDR (no WEBDL)'
    AND arr_type = 'sonarr'
);
-- --- END op 1805

-- --- BEGIN op 1806 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'STAN', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'STAN'
    AND arr_type = 'radarr'
);
-- --- END op 1806

-- --- BEGIN op 1807 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'STAN', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'STAN'
    AND arr_type = 'sonarr'
);
-- --- END op 1807

-- --- BEGIN op 1808 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'TrueHD', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'TrueHD'
    AND arr_type = 'radarr'
);
-- --- END op 1808

-- --- BEGIN op 1809 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'TrueHD', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'TrueHD'
    AND arr_type = 'sonarr'
);
-- --- END op 1809

-- --- BEGIN op 1810 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'TrueHD ATMOS', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'TrueHD ATMOS'
    AND arr_type = 'radarr'
);
-- --- END op 1810

-- --- BEGIN op 1811 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'TrueHD ATMOS', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'TrueHD ATMOS'
    AND arr_type = 'sonarr'
);
-- --- END op 1811

-- --- BEGIN op 1812 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'UHD Bluray Tier 01', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'UHD Bluray Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 1812

-- --- BEGIN op 1813 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'UHD Bluray Tier 01', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'UHD Bluray Tier 01'
    AND arr_type = 'sonarr'
);
-- --- END op 1813

-- --- BEGIN op 1814 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'UHD Bluray Tier 02', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'UHD Bluray Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 1814

-- --- BEGIN op 1815 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'UHD Bluray Tier 02', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'UHD Bluray Tier 02'
    AND arr_type = 'sonarr'
);
-- --- END op 1815

-- --- BEGIN op 1816 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'UHD Bluray Tier 03', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'UHD Bluray Tier 03'
    AND arr_type = 'radarr'
);
-- --- END op 1816

-- --- BEGIN op 1817 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'UHD Bluray Tier 03', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'UHD Bluray Tier 03'
    AND arr_type = 'sonarr'
);
-- --- END op 1817

-- --- BEGIN op 1818 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'VFQ', 'radarr', -101
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'VFQ'
    AND arr_type = 'radarr'
);
-- --- END op 1818

-- --- BEGIN op 1819 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'VFQ', 'sonarr', -101
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'VFQ'
    AND arr_type = 'sonarr'
);
-- --- END op 1819

-- --- BEGIN op 1820 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '*AZAZE LQ', 'radarr', -601
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '*AZAZE LQ'
    AND arr_type = 'radarr'
);
-- --- END op 1820

-- --- BEGIN op 1821 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '*AZAZE LQ', 'sonarr', -601
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '*AZAZE LQ'
    AND arr_type = 'sonarr'
);
-- --- END op 1821

-- --- BEGIN op 1822 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '*LQ & FR LQ', 'radarr', -601
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '*LQ & FR LQ'
    AND arr_type = 'radarr'
);
-- --- END op 1822

-- --- BEGIN op 1823 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '*LQ & FR LQ', 'sonarr', -601
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '*LQ & FR LQ'
    AND arr_type = 'sonarr'
);
-- --- END op 1823

-- --- BEGIN op 1824 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'LQ (Release Title)', 'radarr', -601
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'LQ (Release Title)'
    AND arr_type = 'radarr'
);
-- --- END op 1824

-- --- BEGIN op 1825 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'LQ (Release Title)', 'sonarr', -601
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'LQ (Release Title)'
    AND arr_type = 'sonarr'
);
-- --- END op 1825

-- --- BEGIN op 1826 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '3D', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '3D'
    AND arr_type = 'radarr'
);
-- --- END op 1826

-- --- BEGIN op 1827 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', '3D', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = '3D'
    AND arr_type = 'sonarr'
);
-- --- END op 1827

-- --- BEGIN op 1828 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'AV1', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'AV1'
    AND arr_type = 'radarr'
);
-- --- END op 1828

-- --- BEGIN op 1829 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'AV1', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'AV1'
    AND arr_type = 'sonarr'
);
-- --- END op 1829

-- --- BEGIN op 1830 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'Bad Dual Groups', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'Bad Dual Groups'
    AND arr_type = 'radarr'
);
-- --- END op 1830

-- --- BEGIN op 1831 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'Bad Dual Groups', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'Bad Dual Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 1831

-- --- BEGIN op 1832 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'Black and White Editions', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'Black and White Editions'
    AND arr_type = 'radarr'
);
-- --- END op 1832

-- --- BEGIN op 1833 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'Black and White Editions', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'Black and White Editions'
    AND arr_type = 'sonarr'
);
-- --- END op 1833

-- --- BEGIN op 1834 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'BR-DISK', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'BR-DISK'
    AND arr_type = 'radarr'
);
-- --- END op 1834

-- --- BEGIN op 1835 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'BR-DISK', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'BR-DISK'
    AND arr_type = 'sonarr'
);
-- --- END op 1835

-- --- BEGIN op 1836 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'Extras', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'Extras'
    AND arr_type = 'radarr'
);
-- --- END op 1836

-- --- BEGIN op 1837 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'Extras', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'Extras'
    AND arr_type = 'sonarr'
);
-- --- END op 1837

-- --- BEGIN op 1838 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'Language: Not Original', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'Language: Not Original'
    AND arr_type = 'radarr'
);
-- --- END op 1838

-- --- BEGIN op 1839 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'Language: Not Original', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'Language: Not Original'
    AND arr_type = 'sonarr'
);
-- --- END op 1839

-- --- BEGIN op 1840 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'Obfuscated', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'Obfuscated'
    AND arr_type = 'radarr'
);
-- --- END op 1840

-- --- BEGIN op 1841 ( update quality_profile "Multi.VO - 1080p - YGG" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Multi.VO - 1080p - YGG', 'Obfuscated', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND custom_format_name = 'Obfuscated'
    AND arr_type = 'sonarr'
);
-- --- END op 1841

-- --- BEGIN op 1842 ( update quality_profile "Multi.VO - 1080p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND custom_format_name = '*MULTi'
  AND arr_type = 'radarr'
  AND score = 1004;
-- --- END op 1842

-- --- BEGIN op 1843 ( update quality_profile "Multi.VO - 1080p - YGG" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND custom_format_name = '*MULTi'
  AND arr_type = 'sonarr'
  AND score = 1004;
-- --- END op 1843

-- --- BEGIN op 1844 ( update quality_profile "Multi.VO - 1080p - YGG" )
DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND quality_name = 'Bluray-1080p'
  AND quality_group_name IS NULL
  AND position = 7
  AND enabled = 1
  AND upgrade_until = 1;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND quality_group_name = 'WEB 1080p'
  AND quality_name IS NULL
  AND position = 8
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND quality_group_name = 'WEB 1080p'
  AND quality_name = 'WEBDL-1080p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND quality_group_name = 'WEB 1080p'
  AND quality_name = 'WEBRip-1080p';

DELETE FROM quality_groups
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND name = 'WEB 1080p';

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND quality_name = 'HDTV-1080p'
  AND quality_group_name IS NULL
  AND position = 9
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND quality_name = 'WEBDL-720p'
  AND quality_group_name IS NULL
  AND position = 11
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND quality_name = 'WEBRip-720p'
  AND quality_group_name IS NULL
  AND position = 12
  AND enabled = 0
  AND upgrade_until = 0;

INSERT INTO quality_groups (quality_profile_name, name)
SELECT 'Multi.VO - 1080p - YGG', 'Bluray|WEB 1080p'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_groups
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND name = 'Bluray|WEB 1080p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Multi.VO - 1080p - YGG', 'Bluray|WEB 1080p', 'WEBDL-1080p', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND quality_group_name = 'Bluray|WEB 1080p'
    AND quality_name = 'WEBDL-1080p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Multi.VO - 1080p - YGG', 'Bluray|WEB 1080p', 'WEBRip-1080p', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND quality_group_name = 'Bluray|WEB 1080p'
    AND quality_name = 'WEBRip-1080p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Multi.VO - 1080p - YGG', 'Bluray|WEB 1080p', 'Bluray-1080p', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND quality_group_name = 'Bluray|WEB 1080p'
    AND quality_name = 'Bluray-1080p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Multi.VO - 1080p - YGG', 'Bluray|WEB 1080p', 'HDTV-1080p', 3
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND quality_group_name = 'Bluray|WEB 1080p'
    AND quality_name = 'HDTV-1080p'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Multi.VO - 1080p - YGG', NULL, 'Bluray|WEB 1080p', 0, 1, 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND quality_name IS NULL
    AND quality_group_name = 'Bluray|WEB 1080p'
);

INSERT INTO quality_groups (quality_profile_name, name)
SELECT 'Multi.VO - 1080p - YGG', 'WEBDL | Rip 720p'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_groups
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND name = 'WEBDL | Rip 720p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Multi.VO - 1080p - YGG', 'WEBDL | Rip 720p', 'WEBDL-720p', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND quality_group_name = 'WEBDL | Rip 720p'
    AND quality_name = 'WEBDL-720p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Multi.VO - 1080p - YGG', 'WEBDL | Rip 720p', 'WEBRip-720p', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND quality_group_name = 'WEBDL | Rip 720p'
    AND quality_name = 'WEBRip-720p'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Multi.VO - 1080p - YGG', NULL, 'WEBDL | Rip 720p', 2, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
    AND quality_name IS NULL
    AND quality_group_name = 'WEBDL | Rip 720p'
);

UPDATE quality_profile_qualities
SET position = 1, enabled = 1
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND quality_name = 'Bluray-720p'
  AND quality_group_name IS NULL
  AND position = 10
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 3, enabled = 1
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND quality_name = 'HDTV-720p'
  AND quality_group_name IS NULL
  AND position = 13
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 4
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND quality_name = 'Remux-2160p'
  AND quality_group_name IS NULL
  AND position = 1
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 5
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND quality_name = 'Bluray-2160p'
  AND quality_group_name IS NULL
  AND position = 2
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 6
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND quality_name = 'WEBDL-2160p'
  AND quality_group_name IS NULL
  AND position = 3
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 7
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND quality_name = 'WEBRip-2160p'
  AND quality_group_name IS NULL
  AND position = 4
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 8
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND quality_name = 'HDTV-2160p'
  AND quality_group_name IS NULL
  AND position = 5
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 9, enabled = 0
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND quality_name = 'Remux-1080p'
  AND quality_group_name IS NULL
  AND position = 6
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 10
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND quality_name = 'Bluray-576p'
  AND quality_group_name IS NULL
  AND position = 14
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 11
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND quality_name = 'Bluray-480p'
  AND quality_group_name IS NULL
  AND position = 15
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 12
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND quality_name = 'WEBDL-480p'
  AND quality_group_name IS NULL
  AND position = 16
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 13
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND quality_name = 'WEBRip-480p'
  AND quality_group_name IS NULL
  AND position = 17
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 14
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND quality_name = 'HDTV-480p'
  AND quality_group_name IS NULL
  AND position = 18
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 15
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND quality_name = 'DVD-R'
  AND quality_group_name IS NULL
  AND position = 19
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 16
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND quality_name = 'DVD'
  AND quality_group_name IS NULL
  AND position = 20
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 17
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND quality_name = 'SDTV'
  AND quality_group_name IS NULL
  AND position = 21
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 18
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND quality_group_name = 'Pre-releases'
  AND quality_name IS NULL
  AND position = 22
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 19
WHERE quality_profile_name = 'Multi.VO - 1080p - YGG'
  AND quality_group_name = 'Unwanted'
  AND quality_name IS NULL
  AND position = 23
  AND enabled = 0
  AND upgrade_until = 0;
-- --- END op 1844

-- --- BEGIN op 1845 ( create radarr_media_settings "*Default-Sseh" )
insert into "radarr_media_settings" ("name", "propers_repacks", "enable_media_info") values ('*Default-Sseh', 'doNotPrefer', 1);
-- --- END op 1845

-- --- BEGIN op 1846 ( create radarr_naming "*Default-Sseh" )
insert into "radarr_naming" ("name", "rename", "movie_format", "movie_folder_format", "replace_illegal_characters", "colon_replacement_format") values ('*Default-Sseh', 1, '{Movie Title:FR} {(Release Year)} [imdbid-{ImdbId}] - {{Edition Tags}} {[Custom Formats]}{[Quality Full]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{[MediaInfo VideoDynamicRangeType]}{[Mediainfo VideoCodec]}{-Release Group}{Movie CleanTitle}', '{Movie Title:FR} ({Release Year})', 1, 'delete');
-- --- END op 1846

-- --- BEGIN op 1847 ( update radarr_naming "*Default-Sseh" )
update "radarr_naming" set "movie_format" = '{Movie Title:FR} {(Release Year)} [imdbid-{ImdbId}] - {{Edition Tags}} {[Custom Formats]}{[Quality Full]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{[MediaInfo VideoDynamicRangeType]}{[Mediainfo VideoCodec]}{-Release Group}' where "name" = '*Default-Sseh' and "movie_format" = '{Movie Title:FR} {(Release Year)} [imdbid-{ImdbId}] - {{Edition Tags}} {[Custom Formats]}{[Quality Full]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{[MediaInfo VideoDynamicRangeType]}{[Mediainfo VideoCodec]}{-Release Group}{Movie CleanTitle}';
-- --- END op 1847
