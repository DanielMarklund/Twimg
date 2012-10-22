<?php

header('Content-type: application/json');
require_once('db.php');
include_once('config.php');

// Get a specific count of results
if (isset($_GET['count']) && is_numeric($_GET['count']))
    $count = $_GET['count'];
else
    $count = Config::getVar("api.count");

// Only get results with a Twitter ID counting from...
if (isset($_GET['since']) && is_numeric($_GET['since']))
    $since = $_GET['since'];
else
    $since = 0;

// Exclude specific Twitter ID (Useful when displaying results with AJAX)
if (isset($_GET['exclude']) && is_numeric($_GET['exclude']))
    $exclude = $_GET['exclude'];
else
    $exclude = 0;

$tweets = Database::getTweets($count, $since, $exclude);

// If no tweets were returned, display error
if ($tweets === false){} else { echo json_encode($tweets); }