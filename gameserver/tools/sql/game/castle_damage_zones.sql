-- ----------------------------
-- Table structure for `castle_damage_zones`
-- ----------------------------
CREATE TABLE `castle_damage_zones` (
  `residence_id` int(11) NOT NULL,
  `zone` varchar(255) NOT NULL,
  PRIMARY KEY (`residence_id`,`zone`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of castle_damage_zones
-- ----------------------------
