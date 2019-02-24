<%inherit file="content_base.html.mako" />

<%!
    from app.helpers import MusicVideos
    music_videos = MusicVideos()
%>

## %for video_url in music_videos.urls:
##     <div style="position:relative; width:100%; height:0px; padding-bottom:56.25%;">
##         <iframe style="position:absolute; left:0; top:0; width:100%; height:100%"
##             src="${video_url}"
##             frameborder="${music_videos.frame_border}"
##             allow="${music_videos.allowed_options}"
##             wmode="Opaque"
##             allowfullscreen>
##         </iframe>
##     </div>
##     <br />
## %endfor

%for video_url in music_videos.urls:
    <iframe
            class="youtube-video"
            width="100%"
            height="315"
            src="${video_url}"
            frameborder="${music_videos.frame_border}"
            allow="${music_videos.allowed_options}"
            allowfullscreen
    ></iframe>
    <br />
%endfor

<script>
    // The youtube video iframes have a width of 100% (because the wrapper will always be on the screen)
    // We want a way to convert this to pixels so we can set the height
    function getInnerWidth(elem) {
        return parseFloat(window.getComputedStyle(elem).width);
    }

    function calculateVideoHeight(elem) {
        var aspect_ratio = 0.57;
        var video_width = getInnerWidth(elem);
        return video_width * aspect_ratio;
    }

    function setVideoHeights(video_class) {
        var videos = document.getElementsByClassName(video_class);

        // This assumes all the videos have the same width
        var video_height = calculateVideoHeight(videos[0]);

        for (var i in videos.length) {
            var video = videos[i];
            video.height = video_height;
        }
    }

    $(document).on("load", function () {
        setVideoHeights('youtube-video');
    });

    
    ##  $(window).on("resize", function () {
    ##      setVideoHeights('youtube-video');
    ##  });

    window.addEventListener('resize', setVideoHeights);
</script>