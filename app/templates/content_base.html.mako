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

<%block name="javascript_imports">
    <script type="text/javascript" src="../js/main_site.js"></script>

    <script src="https://code.jquery.com/jquery-3.3.1.js"
            integrity="sha384-fJU6sGmyn07b+uD1nMk7/iSb4yvaowcueiQhfVgQuD98rfva8mcr1eSvjchfpMrH"
            crossorigin="anonymous">
    </script>
</%block>

<%!
    from app.helpers import NavBarMenu
    nav_bar_menu = NavBarMenu()
    nav_bar_default_class = "navbar navbar-dark navbar-fixed-top text-white nav-extras"
    nav_bar_id = 'myTopNav'
    link_container_class_open = 'col-lg-1 col-md-12 col-sm-12 col-xs-12 link-container'
    link_container_class_closed = 'col-lg-1 col-md-12 col-sm-12 col-xs-12 link-container link-container-hidden'
%>

<div class="${nav_bar_default_class}" id="myTopNav">
    <div class="col-xs-12">
        <a class="nav-menu-item" href="javascript:void(0);" id="icon" onclick="myFunction('${nav_bar_id}', '${nav_bar_default_class}', '${link_container_class_open}', '${link_container_class_closed}')">
            <i class="fa fa-bars"></i>
        </a>
    </div>
    <br />
    ${make_nav_bar_menu()}
    <div class="${link_container_class_closed}">
        <a class="nav-menu-item" href="https://github.com/LachlanMarnham" target="_blank"><i class="fab fa-github-square fa-2x"></i></a>
    </div>
    <div class="${link_container_class_closed}">
        <a class="nav-menu-item" href="https://uk.linkedin.com/in/lachlan-marnham-a463b190" target="_blank"><i class="fab fa-linkedin fa-2x"></i></a>
    </div>
    <div class="${link_container_class_closed}">
        <a class="nav-menu-item" href="https://twitter.com/lachlanmarnham?lang=en" target="_blank"><i class="fab fa-twitter-square fa-2x"></i></a>
    </div>
    <div class="${link_container_class_closed}">
        <a class="nav-menu-item" href="mailto:lachlan.marnham@gmail.com"><i class="fas fa-envelope-square fa-2x"></i></a>
    </div>
</div>

<br />

<div class="container container-centered">
    <div class="content-body">
        ${next.body()}
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function() {
        show_nav_items('${link_container_class_open}');
    });
</script>

<%def name="make_nav_bar_menu()">
    %for menu_item in nav_bar_menu.items():
        <%
            menu_item_class = 'nav-menu-item '
            if menu_item.context == current_page_context:
                menu_item_class += 'nav-menu-item-selected'
        %>
        <div class="${link_container_class_closed}"><h3><a class="${menu_item_class}" href="${menu_item.url}">${menu_item.title}</a></h3></div>
    %endfor
</%def>