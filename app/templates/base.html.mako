<!DOCTYPE html>
<%!
    from helpers import make_menu, PAGES
%>

<html style="height: 100%; width: 100%; padding: 0; margin: 0;">
    <body style="height: 100%; width: 100%; padding: 0; margin: 0;">
        <div id="wrapper" style="width: 100%; height: 200px; padding: 0; margin: 0; display: table; ">
            <div id="corner"></div>

            <div id="header">
                this is the header
            </div>
        </div>
        <div style="width: 100%; height:90%;padding: 0; margin: 0; ">
            <div id="sidebar" style="background-color: darkblue; width: 200px; height: 90%; padding: 0; margin: 0; ">
                <nav>
                    ${make_menu(PAGES)}
                </nav>
            </div>

            <div id="main-body">
        ##         ${self.body()}
                This is my CV
            </div>
        </div>
    </body>
</html>

<style>
    #corner {
        width: 200px;
        height: 200px;
        background: linear-gradient(to top right, darkblue, black);
        padding: 0;
        margin: 0;
        display: table-cell;
    }

    #header {
        background-color: black;

        height: 200px;
        padding: 0;
        margin: 0;
        display: table-cell;
    }
</style>