<?php

/* Fetching */

Config::setVar("fetch.tag", 'lol OR cat OR dog OR hello OR morning'); // Keywords for twitter search [DEFAULT:20]
Config::setVar("fetch.count", 20); // How many tweets to fetch [DEFAULT:20]

/* API */

Config::setVar("api.count", 20); // Amount of rows to take from the database [DEFAULT:20]

/* Database */

Config::setVar("db.max", 100); // Max rows allowed in database
Config::setVar("db.hostname", "localhost"); // Hostname
Config::setVar("db.username", "root"); // Username
Config::setVar("db.password", "root"); // Password
Config::setVar("db.database", "twitterimage"); // Database

/* Functions for global variables */

class Config
{
    public static function getVar($value)
    {
            return (isset($GLOBALS["vars"][$value])) ? $GLOBALS["vars"][$value] : null;
    }

    public static function setVar($key, $value)
    {
            $GLOBALS["vars"][$key] = $value;
    }
}