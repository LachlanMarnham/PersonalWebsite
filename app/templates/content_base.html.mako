<%inherit file="base.html.mako" />

<%block name="font_imports">
    <link href="https://fonts.googleapis.com/css?family=Special+Elite" rel="stylesheet">
    ${parent.font_imports()}
</%block>

<%block name="css_imports">
    <link type = "text/css" rel="stylesheet" href="../css/main_site.css" />
    ${parent.css_imports()}
</%block>

<header class="navbar-dark flex-md-row">

    <nav class="navbar navbar-expand-lg navbar-dark flex-column flex-md-row text-white nav-extras">
        <h3>This will be the navbar</h3>
    </nav>

</header>
<br />
${next.body()}

<footer>
    <%include file="footer.html.mako" />
</footer>
