<%inherit file="base.html.mako" />

<%block name="font_imports">
    <link href="https://fonts.googleapis.com/css?family=Nunito|Corben" rel="stylesheet">
    ${parent.font_imports()}
</%block>

<%block name="css_imports">
    <link type = "text/css" rel="stylesheet" href="../css/main_site.css" />
    <link rel="stylesheet"
          href="https://use.fontawesome.com/releases/v5.6.1/css/all.css"
          integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP"
          crossorigin="anonymous"
    >
    ${parent.css_imports()}
</%block>

<%!
    from app.helpers import NavBarMenu
    nav_bar_menu = NavBarMenu()
%>


<nav class="navbar navbar-expand-lg navbar-dark  flex-md-row navbar-fixed-top text-white nav-extras" id="topNav">
    ${make_nav_bar_menu()}
    <span class="col-sm-4 ml-auto">
        ## padding
    </span>
    <span class="col-sm-2 ml-auto">
    <a class="nav-menu-item" href="https://github.com/LachlanMarnham" target="_blank"><i class="fab fa-github-square fa-2x"></i></a>
    <a class="nav-menu-item" href="https://uk.linkedin.com/in/lachlan-marnham-a463b190" target="_blank"><i class="fab fa-linkedin fa-2x"></i></a>
    <a class="nav-menu-item" href="https://twitter.com/lachlanmarnham?lang=en" target="_blank"><i class="fab fa-twitter-square fa-2x"></i></a>
    <a class="nav-menu-item" href="mailto:lachlan.marnham@gmail.com"><i class="fas fa-envelope-square fa-2x"></i></a>
    </span>
</nav>

<br />

<div class="container container-centered">
    <div class="content-body">
        ${next.body()}
    </div>
</div>

<%def name="make_nav_bar_menu()">
    %for menu_item in nav_bar_menu.items():
        <%
            menu_item_class = 'nav-menu-item col-sm-1 '
            if menu_item.context == current_page_context:
                menu_item_class += 'nav-menu-item-selected'
        %>
        <h3><a class="${menu_item_class}" href="${menu_item.url}">${menu_item.title}</a></h3>
    %endfor
</%def>