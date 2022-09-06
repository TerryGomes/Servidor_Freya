CREATE TABLE `event_mog_skills` (
  `owner_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  `skill_lvl` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  UNIQUE KEY `myind` (`owner_id`,`skill_id`,`class_id`),
  KEY `owner_id` (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
