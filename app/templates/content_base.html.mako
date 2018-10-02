<%inherit file="base.html.mako" />

<%block name="font_imports">
    <link href="https://fonts.googleapis.com/css?family=Special+Elite" rel="stylesheet">
    ${parent.font_imports()}
</%block>

<%block name="css_imports">
    <link type = "text/css" rel="stylesheet" href="../css/main_site.css" />
    ${parent.css_imports()}
</%block>

<header class="navbar navbar-expand-md navbar-dark bg-dark">

    <nav class="navbar navbar-expand-md navbar-dark flex-column flex-md-row bg-dark text-white">
        <h2>This will be the navbar</h2>
    </nav>

</header>

${next.body()}

<footer>
    <%include file="footer.html.mako" />
</footer>