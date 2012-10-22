$(document).ready(function() {

    $.ajaxSetup({ cache: false });

    timer = setInterval(function() {

        var current_id = $('#tweetmachine article:first').attr('data-id');

        $.ajax({
            url: "../api.php?since="+current_id+"&exclude="+current_id,
            success: function (data) {
                if(data) {
                    var tweets  = eval(data);
                    displayEntry(tweets);
                }
            },
            error: function(jqXHR, textStatus, errorThrown) { console.log('API Request Error'); },

            dataType: 'html'
        });

        $.ajax({
            url: "../fetch.php?count=20",
            success: function (data) {
            },
            error: function(jqXHR, textStatus, errorThrown) { console.log('Could not fetch'); },
            dataType: 'html'
        });

    }, 1000);

    function displayEntry(tweets) {
        $.each(tweets, function(key,valueObj){
            t_id    = tweets[key]['t_id'],
            user    = tweets[key]['profileUsername'],
            avatar  = tweets[key]['profileImageUrl'],
            text    = tweets[key]['text'],
            image   = tweets[key]['imageUrl'],
            time    = tweets[key]['time'],
            date    = tweets[key]['date'];

            // Check for duplicates before prepending entry
            if (! $('img[src$="'+image+'"]').length) {

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

                $('img[src$="'+image+'"]').load(function(){
                    $('#tweetmachine article:last-of-type').remove();
                    $(this).parent().fadeIn(1000).removeClass('new');
                });

            }
        });
    }

});