<?php

include_once('db.php');

// Initiate fetch
TweetFetcher::fetchTweets(Config::getVar("fetch.tag"));

class TweetFetcher
{

    public static function fetchTweets($keyword) {

        $tag = urlencode("-RT ".$keyword." filter:links");

        // Check for count parameter in querystring
        if (isset($_GET['count']) && is_numeric($_GET['count']))
            $count = $_GET['count'];
        else
            $count = Config::getVar("fetch.count");

        // Get the tweets
        $data = TweetFetcher::getTweetsWithLink($tag, $count);

        foreach($data->results as $key=>$value) 
        {
            $datetime                   = $value->created_at;
            $tweet['date']              = date('M d, Y', strtotime($datetime));
            $tweet['time']              = date('g:ia', strtotime($datetime));
            $tweet['profileUsername']   = $value->from_user;
            $tweet['profileImageUrl']   = $value->profile_image_url;
            $tweet['text']              = $value->text;
            $tweet['t_id']              = $value->id_str;
            $success                    = false;

            if (!empty($value->entities->urls)) {
                foreach ($value->entities->urls as $url) {

                    // If Instagram URL
                    if (preg_match("/insta/i", $url->expanded_url))
                    {
                        $tweet['imageUrl'] = TweetFetcher::getInstagramUrl("$url->expanded_url");

                        // Add entry to database if URL responds correctly
                        if(TweetFetcher::checkUrl($tweet['imageUrl'])) {
                            $success = true;
                            Database::insertTweet($tweet);
                        }
                    }
                }
            }

            if($success){ TweetFetcher::cleanRows(); }

        }
    }

    static function cleanRows() {
        // If number of rows exceeds specific number, delete a row to make place for the new
        if(Database::countRows() >= Config::getVar("db.max")) {
            Database::deleteRows(1);
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

    static function checkUrl($url) {
        $headers    = get_headers($url);
        $match      = strpos($headers[0], '200');
        $forbidden  = strpos($headers[0], '403');

        // Check if URL is responding correctly (200 = OK)
        if(!empty($match) && empty($forbidden))
            return true;
        else
            return false;
    }

}
