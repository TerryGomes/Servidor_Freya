CREATE TABLE `hwids_log` (
  `server_id` int(10) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `account` varchar(16) NOT NULL,
  `ip` varchar(16) NOT NULL,
  `hwid` varchar(32) NOT NULL,
  PRIMARY KEY (`server_id`,`time`,`account`),
  KEY `account` (`account`),
  KEY `ip` (`ip`),
  KEY `hwid` (`hwid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;