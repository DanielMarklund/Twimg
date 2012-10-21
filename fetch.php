<?php

include_once('db.php');

// Initiate The Amazing Twitter Image Machine with a keyword to search for.
TweetMachine::fetchTweets('lol');

class TweetMachine
{

    public static function fetchTweets($keyword) {
        
        // If number of rows exceeds specific number, truncate the table
        if(Database::countRows() > 100) {
            Database::truncateTable();
        }

        $tag = urlencode("-RT ".$keyword." instagram.com filter:links");
        $count = 20; // How many tweets to fetch for every request

        $data = TweetMachine::getTweetsWithLink($tag, $count);

        foreach($data->results as $key=>$value) 
        {

            $datetime                   = $value->created_at;
            $tweet['date']              = date('M d, Y', strtotime($datetime));
            $tweet['time']              = date('g:ia', strtotime($datetime));
            $tweet['profileUsername']   = $value->from_user;
            $tweet['profileImageUrl']   = $value->profile_image_url;
            $tweet['text']              = $value->text;
            $tweet['t_id']              = $value->id_str;

            if (!empty($value->entities->urls)) {
                foreach ($value->entities->urls as $url) {
                    if (preg_match("/insta/i", $url->expanded_url))
                    {
                        $tweet['imageUrl'] = TweetMachine::getInstagramUrl("$url->expanded_url");
                        Database::insertTweet($tweet);
                    }
                }
            }

        }
    }

    static function getTweetsWithLink($tag, $count) {
        $url = "http://search.twitter.com/search.json?q=".$tag."&include_entities=1&rpp=".$count."&since_id=".Database::getLatestTweetId();
        $data = file_get_contents($url);
        $data = json_decode($data);
        return $data;
    }

    static function getInstagramUrl($tweetImageUrl) {
        $url = "http://api.instagram.com/oembed?url=".$tweetImageUrl;
        $data = file_get_contents($url);
        $data = json_decode($data);
        $image = $data->url;

        return $image;
    }

}
