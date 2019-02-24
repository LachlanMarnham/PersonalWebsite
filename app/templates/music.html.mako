<%inherit file="content_base.html.mako" />

<%!
    from app.helpers import MusicVideos
    music_videos = MusicVideos()
%>

%for video_url in music_videos.urls:
    <div style="position:relative; width:100%; height:0px; padding-bottom:56.25%;">
        <iframe style="position:absolute; left:0; top:0; width:100%; height:100%"
            src="${video_url}"
            frameborder="${music_videos.frame_border}"
            allow="${music_videos.allowed_options}"
            allowfullscreen>
        </iframe>
    </div>
    <br />
%endfor
