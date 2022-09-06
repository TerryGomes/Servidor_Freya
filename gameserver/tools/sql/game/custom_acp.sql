CREATE TABLE IF NOT EXISTS `custom_acp` (
  `player_obj_id` int(11) NOT NULL,
  `auto_cp` tinyint(1) NOT NULL,
  `cp_percent` double NOT NULL,
  `cp_item_id` int(11) NOT NULL,
  `cp_small_item_id` int(11) NOT NULL,
  `reuse_cp` int(11) NOT NULL,
  `auto_hp` tinyint(1) NOT NULL,
  `hp_percent` double NOT NULL,
  `hp_item_id` int(11) NOT NULL,
  `reuse_hp` int(11) NOT NULL,
  `auto_mp` tinyint(1) NOT NULL,
  `mp_percent` double NOT NULL,
  `mp_item_id` int(11) NOT NULL,
  `reuse_mp` int(11) NOT NULL,
  PRIMARY KEY (`player_obj_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
