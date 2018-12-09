<%inherit file="base.html.mako" />

<%block name="font_imports">
    <link href="https://fonts.googleapis.com/css?family=Nunito|Corben" rel="stylesheet">
    ${parent.font_imports()}
</%block>

<%block name="css_imports">
    <link type = "text/css" rel="stylesheet" href="../css/main_site.css" />
    ${parent.css_imports()}
</%block>

<%!
    from app.helpers import NavBarMenu
    nav_bar_menu = NavBarMenu()
%>

<header class="navbar-dark flex-md-row">

    <nav class="navbar navbar-expand-lg navbar-dark flex-column flex-md-row navbar-fixed-top text-white nav-extras">
        ${make_nav_bar_menu()}
    </nav>

</header>
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