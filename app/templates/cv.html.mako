<%inherit file="content_base.html.mako" />

<%
    from flask import current_app
    cv_short_path = current_app.config['FILES_FOLDER'] + '/cv_short.pdf'
    cv_long_path = current_app.config['FILES_FOLDER'] + '/cv_long.pdf'
%>

For a downloadable version, click <a href="${cv_long_path}" download>here</a>.
<br />
For a version that conforms to the two-page industry standard, click <a href="${cv_short_path}">here</a>.
<br />

