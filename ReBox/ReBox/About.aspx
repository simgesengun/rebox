<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="ReBox.About" %>

<!DOCTYPE html>
<html>
<head>
    <title>About / ReBox</title>
    <meta charset="utf-8" />
    <link rel="icon" href="resources/icon.ico" type="image/x-icon" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/site.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
        }
    </style>
</head>
<body class="d-flex flex-column h-100">
    <header>
        <nav class="navbar fixed-top navbar-expand-md navbar-dark nav-colored">
            <div class="container">
                <div class="navbar-header">
                    <a class="navbar-brand" href="index.aspx">
                        <img class="logo" src="resources/icon.png" alt="main icon" />
                    </a>
                </div>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <div class="nav navbar-nav ml-auto">
                        <a class="nav-item nav-link" href="/Index.aspx">HOME</a>
                        <a class="nav-item nav-link active" href="/About.aspx">ABOUT<span class="sr-only">(current)</span></a>
                        <a class="nav-item nav-link" href="/Contact.aspx">CONTACT</a>
                    </div>
                </div>
            </div>
        </nav>
    </header>
    <main role="main" class="container-fluid px-0">
        <div class="section py-3 text-center">
            <h1>About the Project</h1>
            <p class="lead text-muted">Learn more about our project.</p>

        </div>
        <div class="container p-5">
            <div class="row row-cols-1 row-cols-sm-1 row-cols-md-2 row-cols-lg-2">
                <div class="col col-sm-12 col-md-12 col-lg-5 m-auto">
                    <img class="img-fluid" src="resources/side-img.png" />
                </div>
                <div class="col col-sm-12 col-md-12 col-lg-7 m-auto px-3">
                    <h3>Our Research on Recycling Awareness</h3>
                    <p class="lead">Even though most of the people think that recycling is beneficial, only half of them knows the location of the recycling bins near them and does recycling.</p>
                    <p>Do you think recycling is beneficial?</p>
                    <div class="bar">
                        <div class="progress">
                            <div class="progress-bar bg-success" role="progressbar" style="width: 0%" aria-valuenow="98" aria-valuemin="0" aria-valuemax="100">98</div>
                        </div>
                    </div>
                    <p>Have you used recycling bins before?</p>
                    <div class="bar">
                        <div class="progress">
                            <div class="progress-bar bg-success" role="progressbar" style="width: 0%" aria-valuenow="49" aria-valuemin="0" aria-valuemax="100">49</div>
                        </div>
                    </div>
                    <p>Do you have recycling bins near you? Do you know its location?</p>
                    <div class="bar">
                        <div class="progress">
                            <div class="progress-bar bg-success" role="progressbar" style="width: 0%" aria-valuenow="49" aria-valuemin="0" aria-valuemax="100">49</div>
                        </div>
                    </div>
                    <h3>Our Goal</h3>
                    <p class="lead">Our goal is to increase the number of people who does recycling by letting them know where the closest recycling bin is!</p>
                </div>
            </div>
        </div>
        <div class="section py-3 text-center">
            <h1>Our Team</h1>
            <p class="lead text-muted">Learn more about us.</p>
            <div class="container p-5">
                <div class="row row-cols-1 row-cols-sm-1 row-cols-md-3 row-cols-lg-5">
                    <div class="col mb-2">
                        <div class="image mb-2">
                            <img class=" img-fluid rounded profile" src="resources/us-selen.jpeg" alt="pic of Selen Kumru" />
                            <div class="overlay">
                                <p>Selen Kumru</p>
                                <a href="https://github.com/re-box" target="_top">
                                    <img class="img-fluid" src="resources/github.png" />

                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-2">
                        <div class="image mb-2">
                            <img class="img-fluid rounded profile" src="resources/us-ramazan.jpg" alt="pic of Ramazan Çakır" />
                            <div class="overlay">
                                <p>Ramazan Çakır</p>
                                <a href="https://github.com/re-box" target="_top">
                                    <img class="img-fluid" src="resources/github.png" /></a>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-2">
                        <div class="image mb-2">
                            <img class="img-fluid rounded profile" src="resources/us-nazlican.jpg" alt="pic of Nazlıcan Çelebi" />
                            <div class="overlay"> 
                                <p>Nazlıcan Çelebi</p>
                                <a href="https://github.com/re-box" target="_top">
                                    <img class="img-fluid" src="resources/github.png" /></a>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-2">
                        <div class="image mb-2">
                            <img class="img-fluid rounded profile" src="resources/us-simge.jpeg" alt="pic of Simge Şengün" />
                            <div class="overlay">
                                <p>Simge Şengün</p>
                                <a href="https://github.com/re-box" target="_top">
                                    <img class="img-fluid" src="resources/github.png" /></a>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-2">
                        <div class="image mb-2">
                            <img class="img-fluid rounded profile" src="resources/us-cansu.jpg" alt="pic of Emine Cansu Hacıahmetoğlu" />
                            <div class="overlay">
                                <p>Emine Cansu Hacıahmetoğlu</p>
                                <a href="https://github.com/re-box" target="_top">
                                    <img class="img-fluid" src="resources/github.png" /></a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

    </main>

    <footer class="mastfoot mastfoot-colored mt-auto py-3 text-center">
        <div class="container">
            <p>Made by <a href="https://github.com/re-box">@re-box</a>.</p>
        </div>
    </footer>
    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/mdb.min.js"></script>
    <script src="js/graphs.js"></script>
    <script>
        var delay = 500;
        $(".progress-bar").each(function (i) {
            $(this).delay(delay * i).animate({
                width: $(this).attr('aria-valuenow') + '%'
            }, delay);

            $(this).prop('Counter', 0).animate({
                Counter: $(this).text()
            }, {
                duration: delay,
                // easing: 'swing',
                step: function (now) {
                    $(this).text(Math.ceil(now) + '%');
                }
            });
        });
	</script>
</body>
</html>
