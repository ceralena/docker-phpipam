<?php

define('BASE', '/');

$db['host'] = getenv('DB_HOST');
$db['user'] = getenv('DB_USER');
$db['pass'] = getenv('DB_PASSWORD');
$db['name'] = getenv('DB_NAME');

$gmaps_api_key = getenv('GMAPS_API_KEY');
