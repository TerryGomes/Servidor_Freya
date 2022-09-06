SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `bbs_clanbonus`
-- ----------------------------
CREATE TABLE `bbs_clanbonus` (
  `name` text NOT NULL,
  `players_count` int(11) DEFAULT NULL,
  `reward_lvl` int(11) DEFAULT NULL,
  `reward_rep` int(11) DEFAULT NULL,
  `reward_item` int(11) DEFAULT NULL,
  `reward_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`(16))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
