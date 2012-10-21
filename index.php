<?php 

$data = file_get_contents('http://localhost/json/twitter/api.php?count=20');
$tweets = json_decode($data);

?>
<html>
    <head>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
        <script src="assets/script.js"></script>
        <link rel="stylesheet" href="assets/reset.css">
        <link rel="stylesheet" href="assets/style.css">
    </head>
    <body>
        <div id="tweetmachine">
            <?php foreach ($tweets as &$tweet) { ?>

            <article data-id="<?=$tweet->t_id;?>">
                <img src="<?=$tweet->imageUrl;?>" alt="" />
                <div class="info">
                    <h1>
                        <img src="<?=$tweet->profileImageUrl;?>" alt="<?=$tweet->profileUsername;?>" />
                        <a href="https://twitter.com/<?=$tweet->profileUsername;?>">@<?=$tweet->profileUsername;?></a>
                    </h1>
                    <p><?=$tweet->text;?></p>
                </div>
            </article>
            
            <?php } ?>

        </div>
    </body>
</html>