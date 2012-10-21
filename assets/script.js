$(document).ready(function() {

    $('.new').fadeIn(3000).removeClass('new');
    $.ajaxSetup({ cache: false });

    timer = setInterval(function() {

        var current_id = $('#tweetmachine article:first').attr('data-id');

        $.ajax({
            url: "api.php?since="+current_id+"&exclude="+current_id,
            success: function (data) {

                if(data != 'false') {
                    var i = 0;
                    var tweets = eval(data);

                    var t_id    = tweets[0]['t_id'],
                        user    = tweets[0]['profileUsername'],
                        avatar  = tweets[0]['profileImageUrl'],
                        text    = tweets[0]['text'],
                        image   = tweets[0]['imageUrl'],
                        time    = tweets[0]['time'],
                        date    = tweets[0]['date'];
                        
                    if (! $('img[src$="'+image+'"]').length) {
                        $('#tweetmachine article:last-of-type').fadeOut('fast', function() {
                            $(this).remove();
                        });

                        $("#tweetmachine").prepend(
                        "<article class='new' data-id='"+t_id+"'>\n"+
                            "<img src='"+image+"' alt='' />\n"+
                            "<div class='info'>\n"+
                                "<h1>\n"+
                                    "<img src='"+avatar+"' alt='"+user+"' />\n"+
                                    "<a href=''>@"+user+"</a>\n"+
                                "</h1>\n"+
                                "<p>"+text+"</p>\n"+
                            "</div>\n"+
                        "</article>\n"
                        );
                        $('.new').fadeIn('fast').removeClass('new');

                        i++;
                    }
                    
                }
            },
            dataType: 'html'
        });

        $.ajax({
            url: "fetch.php",
            success: function (data) {
            },
            dataType: 'html'
        });

        }, 1000);

        });