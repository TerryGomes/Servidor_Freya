DROP TABLE IF EXISTS `npcmaker_respawn`;
CREATE TABLE `npcmaker_respawn` (
`dbname` varchar(64) NOT NULL,
`respawn_time` decimal(20,0) NOT NULL default 0,
`hp` decimal(20,0) default 0,
`mp` decimal(20,0) default 0,
`x` int(11) default 0,
`y` int(11) default 0,
`z` int(11) default 0,
PRIMARY KEY(`dbname`),
INDEX(`dbname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;