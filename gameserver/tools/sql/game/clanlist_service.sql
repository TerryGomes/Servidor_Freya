CREATE TABLE `clanlist_service` (
`obj_id`  int(11) NOT NULL ,
`list_status`  tinyint(1) NOT NULL ,
`item_id`  int(5) NOT NULL ,
`price`  bigint(20) NOT NULL ,
`race_id`  tinyint(1) NOT NULL ,
PRIMARY KEY (`obj_id`, `list_status`)
) ENGINE=MyISAM;
