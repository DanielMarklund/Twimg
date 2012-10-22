# Twimg

Twimg is used to fetch tweets and its linked images based upon keywords, from Twitter. It stores the results in a database for easy caching. Comes with an API.

Author: Daniel Marklund [@MMarklund] [http://www.danielmarklund.com]

------------------------------

### Features:

* Get tweets from twitter public search API based on keyword.
* Fetch the Instagram image associated with the tweet, from the Instagram oembed API.
* Store a specific amount of entries (tweet & image) in a database table.

### Todo:

* Add more image sources like facebook, imgur etc.
* Create a new API parameter to control image sources.
* Add Twitter Streaming API functionality.

### Files:

* [api.php]>    The JSON API file which will be accessed by external users.
* [db.php]>     Where all the database queries are stored.
* [fetch.php]>  This file will refresh the database with new content.
* [index.php]>  A sample AJAX-driven image slideshow using the API.

------------------------------

## API:

### Description:

This API will output a specific amount of tweets and its images through JSON.

### Additional parameters:

     [count]>    Get a custom amount of entries.
     [since]>    Only select tweets with the Twitter ID equal to or higher than value.
     [exclude]>  Exclude a specific Twitter ID. (To prevent duplicates when using [since])

### Usage:

The API is accessed from 'api.php', and will return by default 20 entries from the database.

### PHP Example:

    <?php 

    $data = @file_get_contents('http://localhost/twimg/api.php?count=20');

    // Check for connection errors
    if ($data === false) { print "There was an error trying to connect to the API. Check the URL"; $tweets = "";}
    else { $tweets = json_decode($data); }

    // If tweets were returned, print all results
    if(isset($tweets) && !empty($tweets))
    {
        foreach ($tweets as &$tweet) { ?>
            <a href="https://twitter.com/<?=$tweet->profileUsername?>/status/<?=$tweet->t_id?>">
                <article data-id="<?=$tweet->t_id;?>">
                        <img src="<?=$tweet->imageUrl;?>" alt="" />
                    <div class="info">
                        <header>
                            <div class="avatar">
                                <img src="<?=$tweet->profileImageUrl;?>" alt="<?=$tweet->profileUsername;?>"  />
                            </div>
                            <div class="">
                                <a href="https://twitter.com/<?=$tweet->profileUsername;?>">@<?=$tweet->profileUsername;?></a>
                            </div>
                        </header>
                        <p><?=$tweet->text;?></p>
                    </div>
                </article>
            </a>
    <?php 
        }
    } ?>