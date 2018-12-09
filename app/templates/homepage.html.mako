<%inherit file="base.html.mako" />

<%block name="javascript_imports">
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"
            integrity="sha384-tsQFqpEReu7ZLhBV2VZlAu7zcOV+rXbYlF2cqB8txI/8aZajjp4Bqd+V6D5IgvKT"
            crossorigin="anonymous">
    </script>

    <script type="text/javascript" src="../js/jquery.fullPage.js">
    </script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
            integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
            crossorigin="anonymous">
    </script>
</%block>

<%block name="font_imports">
    <link href="https://fonts.googleapis.com/css?family=Corben" rel="stylesheet">
    ${parent.font_imports()}
</%block>

<%block name="css_imports">
    <link type = "text/css" rel="stylesheet" href="../css/homepage.css" />
    <link type = "text/css" rel="stylesheet" href="../css/jquery.fullPage.css" />
    ${parent.css_imports()}
</%block>

<%!
    from app.helpers import MainMenu
    main_menu = MainMenu()
%>


<body>
    <div id="preload-1"></div>
    <div id="preload-2"></div>
    <div id="preload-3"></div>
    <div id="fullpage">
            <div class="section fp-section active fp-completely" id="section0"></div>
            <div class="section">
                <div class="row">
                    %for menu_item in main_menu.items():
                    <div class="fp-completely col-sm-6 col-xs-12 picture-tile white-text clickable-div" id="${menu_item.title.lower()}">
                        <div>
                            <h1>${menu_item.title}</h1>
                            <a href="${menu_item.url}"></a>
                        </div>
                    </div>
                    %endfor
                </div>
            </div>
    </div>

    <script type="text/javascript">
        $(".clickable-div").click(function() {
        window.location = $(this).find("a").attr("href");
        return false;
    });
    </script>
    <script type="text/javascript">
        function sleep(ms) {
            return new Promise(resolve => setTimeout(resolve,ms))
        }

        async function changeBackground() {
            var landingPage = $("#section0");
            landingPage.css("background-image", "url('../images/landing-down-1920.jpg')");
            await sleep(3800);
            landingPage.css("background-image", "url('../images/landing-left-1920.jpg')");
            await sleep(3800);
            landingPage.css("background-image", "url('../images/landing-up-1920.jpg')");
            await sleep(3800);
            landingPage.css("background-image", "none");
            landingPage.css("color", "whitesmoke");
            landingPage.css("font-family", "'Corben', cursive");
            var welcomeText = landingPage.html("<div><h1>Lachlan Marnham</h1></div>");
            await sleep(1000);
            welcomeText.append('<ul id="qualities"></ul>');
            await sleep(1000);
            var qualitiesList = $("#qualities");
            qualitiesList.append("<li>Software Engineer</li>");
            await sleep(1000);
            qualitiesList.append("<li>Recovering Theoretical Physicist</li>");
            await sleep(1000);
            qualitiesList.append("<li>Bedroom Classical Guitarist</li>");
        }
    </script>

    <script type="text/javascript">
    $(window).on("load", function() {
        $('#fullpage').fullpage();
        changeBackground();
    });
    </script>
</body>
