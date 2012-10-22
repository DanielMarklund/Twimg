<?php 

$data = @file_get_contents('http://localhost/twimg/api.php?count=20');

// Check for connection errors
if ($data === false) { print "There was an error trying to connect to the API. Check the URL"; $tweets = "";}
else { $tweets = json_decode($data); }

?>

<html>
    <head>
        <link rel="stylesheet" href="assets/reset.css">
        <link rel="stylesheet" href="assets/style.css">
    </head>
    <body>
        <div id="tweetmachine">
            <?php 

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

        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
        <script src="assets/script.js"></script>
    </body>
</html>