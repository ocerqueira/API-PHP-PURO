<?php 

require_once __DIR__ . '/vendor/autoload.php';
require_once __DIR__ . '/src/routes/main.php';

use App\core\Core;

use App\http\Route;

Core::dispatch(Route::routes());