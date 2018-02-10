<?php

/**
 * Database Configuration
 *
 * All of your system's database configuration settings go in here.
 * You can see a list of the default settings in craft/app/etc/config/defaults/db.php
 */

$customDbConfig = array(

	'*' => array(
		'tablePrefix' => 'craft',
	),
	'LOCAL' => array(
		'server' 	=> 'localhost',
		'user' 		=> 'root',
		'password' 	=> 'root',
		'database' 	=> 'hauntedmansions_craft'
	),
	'DEV' => array(
		'server' 	=> '10.0.0.14',
		'port' 		=> '8889',
		//'port' => '3306',
		'user' 		=> 'root',
		'password' 	=> 'root',
		'database' 	=> '_standard_craft'
	),
	'STAGE' => array(
		'server' 	=> 'mysql193383.mysql.sysedata.no',
		'user' 		=> 'mysql193383',
		'password' 	=> 'Mester11',
		'database' 	=> 'mysql193383',
		//'initSQLs' 	=> array("SET SESSION sql_mode='STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';")
	),
	'PROD' => array(
		'server' 	=> 'mysql193383.mysql.sysedata.no',
		'user' 		=> 'mysql193383',
		'password' 	=> 'Mester11',
		'database' 	=> 'mysql193383',
		//'initSQLs' 	=> array("SET SESSION sql_mode='STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';")
	)
);

// If a local db file exists, merge the local db settings
if (is_array($customLocalDbConfig = @include(CRAFT_CONFIG_PATH . 'local/db.php')))
{
	$customGlobalDbConfig = array_merge($customDbConfig['*'], $customLocalDbConfig);
	$customDbConfig = $customGlobalDbConfig;
}
return $customDbConfig;
