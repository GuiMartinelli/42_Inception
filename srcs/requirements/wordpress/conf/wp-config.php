<?php
// Getting env variables
$DB_NAME = getenv('DB_NAME');
$DB_USER = getenv('DB_USER');
$DB_PASSWORD = getenv('DB_PASS');

// Defining WP variables
define('DB_NAME', $DB_NAME);

define('DB_USER', $DB_USER);

define('DB_PASSWORD', $DB_PASSWORD);

define('DB_HOST', 'mariadb');

define( 'DB_CHARSET', 'utf8' );

define( 'DB_COLLATE', '' );

$table_prefix = 'wp_';

define( 'WP_DEBUG', false );

if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

require_once ABSPATH . 'wp-settings.php';

// define( 'WP_REDIS_HOST', 'redis' )
// 
// define( 'WP_REDIS_PORT', 6379 )
// 
// define( 'WP_REDIS_TIMEOUT', 1 )
// 
// define( 'WP_REDIS_READ_TIMEOUT', 1 )
// 
// define( 'WP_REDIS_DATABASE', 0 )
// 