<?php

require_once('config.php');

class Database
{
    private static function getConnection()
    {
            $hostname = Config::getVar("db.hostname");
            $username = Config::getVar("db.username");
            $password = Config::getVar("db.password");
            $database = Config::getVar("db.database");

            $pdo = new PDO("mysql:host=$hostname;dbname=$database", $username, $password); 
            $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); 
            $pdo->exec("SET NAMES UTF8");

            return $pdo;
    }

    // Save tweets to the database
    public static function insertTweet($tweet)
    {       
            // Check for duplicates first
            if (Database::checkDuplicate($tweet['t_id']) == false)
            {
                    $pdo = self::getConnection();
                    $sql = "INSERT IGNORE INTO tweets (t_id, text, imageUrl, profileUsername, profileImageUrl, date, time) VALUES(:t_id, :text, :image, :user, :avatar, :date, :time)";        
                    $stmt = $pdo->prepare($sql);

                    $insert = array(
                        ":t_id" => $tweet['t_id'],
                        ":text" => $tweet['text'],
                        ":image" => $tweet['imageUrl'], 
                        ":user" => $tweet['profileUsername'], 
                        ":avatar" => $tweet['profileImageUrl'],
                        ":date" => $tweet['date'],
                        ":time" => $tweet['time'] );
                    
                    $prep = $pdo->prepare($sql);
                    $prep->execute($insert);
                    
                    $pdo = null;
            }
        }
        
    // Fetch tweets from database
    public static function getTweets($count=20, $since=0, $exclude=0)
    {
            $pdo = self::getConnection();
            $query = "SELECT t_id, text, imageUrl, profileUsername, profileImageUrl, date, time 
                      FROM tweets 
                      WHERE t_id >= ".$since."
                      AND t_id != ".$exclude."
                      ORDER BY t_id 
                      DESC LIMIT 0, ".$count;
            $prep = $pdo->prepare($query);
            $prep->execute();
            
            while ($row = $prep->fetchObject()){
               $tweets[] = $row; 
            }  
            
            $pdo = null;

            if (!empty($tweets))
                    return $tweets;
            else
                    return false;

    }
        
    // Get the latest tweet ID
    public static function getLatestTweetId()
    {      
            $pdo = self::getConnection();
            $query = "SELECT t_id FROM tweets ORDER BY t_id ASC LIMIT 1";
            $stmt = $pdo->prepare($query);
            $stmt->execute();
            $result = $stmt->fetch(PDO::FETCH_NUM);
            $pdo = null;
            
            // Fallback if database is empty
            if(!isset($result[0]))
                    return 0;

            return $result[0];
    }

    // Check for duplicates in database
    public static function checkDuplicate($t_id)
    {
            $pdo = self::getConnection();
            $query = "SELECT t_id FROM tweets WHERE t_id = ".$t_id;
            $stmt = $pdo->prepare($query);
            $stmt->execute();
            $result = $stmt->fetch(PDO::FETCH_NUM);
            $pdo = null;

            
            // Fallback if database is empty
            if(!isset($result[0]))
            {
                    return false;
            }

            return true;
    }

    // Truncate table
    public static function truncateTable()
    {
            $pdo = self::getConnection();
            $query = "TRUNCATE TABLE tweets";
            $stmt = $pdo->prepare($query);
            $stmt->execute();
            $pdo = null;

    }

    // Delete rows
    public static function deleteRows($count)
    {
            $pdo = self::getConnection();
            $query = "DELETE FROM tweets ORDER BY t_id ASC LIMIT ".$count;
            $stmt = $pdo->prepare($query);
            $stmt->execute();
            $pdo = null;

    }

    // Count rows in table
    public static function countRows()
    {
            $pdo = self::getConnection();
            $query = "SELECT COUNT(*) AS id FROM tweets";
            $stmt = $pdo->prepare($query);
            $stmt->execute();
            $result = $stmt->fetch(PDO::FETCH_NUM);
            $pdo = null;

            return $result[0];

    }
}

