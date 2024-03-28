<?php

$config = include 'conf/conf.module';

$scp_db = new PDO(
    "mysql:host=$config[db_host];dbname=$config[db_name];charset=utf8",
    $config['db_usr'],
    $config['db_passwd']
);

$scp_db->query('SET NAMES UTF8');

return $scp_db;
