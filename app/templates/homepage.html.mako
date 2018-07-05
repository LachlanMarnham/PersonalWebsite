<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width = device-width, initial-scale=1">
        <title>Lachlan Marnham</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
        <link type = "text/css" rel="stylesheet" href="../css/homepage.css" />
        <link type = "text/css" rel="stylesheet" href="../css/jquery.fullPage.css" />
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script type="text/javascript" src="../js/jquery.fullPage.js" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
    </head>

    <body>
        <div id="preload-1"></div>
        <div id="preload-2"></div>
        <div id="preload-3"></div>
        <div id="fullpage">
                <div class="section fp-section active fp-completely" id="section0"></div>
                <div class="section">
                    <div class="row">
                    <div class="fp-completely col-sm-6 col-xs-12" id="projects">
                        a
                        ##<img src="../images/code.png" />
                    </div>
                    <div class="fp-completely col-sm-6 col-xs-12" id="music">
                        b
                        ##<img src="../images/code.png" />
                    </div>
                    <div class="fp-completely col-sm-6 col-xs-12" id="partita">
                        c
                        ##<img src="../images/code.png" />
                    </div>
                    <div class="fp-completely col-sm-6 col-xs-12" id="cv">
                        d
                        ##<img src="../images/code.png" />
                    </div>
                    </div>
                </div>
        </div>

        <script type="text/javascript">
            function sleep(ms) {
                return new Promise(resolve => setTimeout(resolve,ms))
            }

            async function changeBackground() {
                var landingPage = $("#section0");

                await sleep(3800);
                landingPage.css("background-image", "url('../images/landing-left.jpg')");
                await sleep(3800);
                landingPage.css("background-image", "url('../images/landing-up.jpg')");
                await sleep(3800);
            }


        </script>

        <script type="text/javascript">
        $(document).ready(function() {
            $('#fullpage').fullpage();
            changeBackground();
        });
        </script>
    </body>
</html>