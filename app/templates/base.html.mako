<!DOCTYPE html>
<%!
    from helpers import make_menu, PAGES
%>

<html>
    <body>
    <div id="header">
        <nav>
            ${make_menu(PAGES)}
        </nav>
    </div>
    ${self.body()}
    </body>
</html>