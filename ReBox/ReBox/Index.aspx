<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="ReBox.Index" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Homepage / ReBox</title>
    <meta charset="utf-8">
    <link rel="icon" href="resources/icon.ico" type="image/x-icon" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/Site.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    <style>
        html,
        body {
            background-repeat: repeat;
            background-image: url('resources/background2.png');
            box-shadow: inset 0 0 5rem rgba(0, 0, 0, .5);
            overflow: auto;
            font-family: 'Poppins', sans-serif;
        }

        body {
            color: #fff;
            text-shadow: 0 .05rem .1rem rgba(0, 0, 0, .5);
        }
        a:not([href]) {
            color: #333;
            text-decoration: none;
        }
        /* Map */
        .map-text {
            color: #333;
            text-shadow:none;
            font-family: 'Poppins', sans-serif;
        }
        .map-div {
            text-align: center;
        }
        .map-btn {
            background-color: #333;
            color: #fff ;
            font-size:0.8rem;
            font-family: 'Poppins', sans-serif;

        }
        .map-icon {
            height:20px;
            width:20px;
        }

        /* CheckBoxes */
        .img-check {
            height: 30px;
            width:30px;
            cursor: pointer;
        }
        .check
        {
           opacity:0.2;
        }
        .cb-checkbox {
            visibility: hidden;
            position: absolute;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
            <header class="mb-auto">
                <nav class="navbar fixed-top navbar-dark navbar-expand-md">
                    <div class="container">
                        <div class="navbar-header">
                            <a class="navbar-brand" href="index.aspx">
                                <img class="logo" src="resources/icon.png" alt="main icon">
                            </a>
                        </div>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarCollapse">
                            <div class="nav navbar-nav ml-auto">
                                <a class="nav-item nav-link active" href="/Index.aspx">HOME<span class="sr-only">(current)</span></a>
                                <a class="nav-item nav-link" href="/About.aspx">ABOUT</a>
                                <a class="nav-item nav-link" href="/Contact.aspx">CONTACT</a>
                            </div>
                        </div>
                    </div>
                </nav>
            </header>
            <main role="main" class="cover text-center" runat="server">
                <h1>ReBox</h1>
                <p class="lead">Find the recycle bin closest to your location.</p>
                <div class="row mx-0 align-content-center mb-3">
                    <div class="col-11 pl-0">
                        <input type="text" class="form-control" id="inputLocation" readonly="readonly" placeholder="Your location">
                    </div>
                    <div class="col-1 pl-0">
                        <a class="btn" role="button" id="findLoc">
                            <img src="Resources/location.png" style="max-height: 22px;" /></a>
                    </div>

                </div>
                <div class="alert alert-danger alert-dismissible fade in show text-left" id="alertLoc" role="alert">
                    Please determine your location first.
                </div>
                <div class="alert alert-danger alert-dismissible fade in show text-left" id="alertPerm" role="alert">
                    Please allow us to determine your location.
                </div>
                <div class="row mb-3 d-flex justify-content-center">
                        <label class="mr-1">
                            <img src="Resources/bin-battery.png" class="img-check check">
                            <input type="checkbox" id="opt-battery" value="opt-battery" class="cb-checkbox">
                        </label>
                        <label class="mr-1">
                            <img src="Resources/bin-clothing.png" class="img-check check">
                            <input type="checkbox" id="opt-clothing" value="opt-clothing" class="cb-checkbox">
                         </label>
                        <label class="mr-1">
                            <img src="Resources/bin-metal.png" class="img-check check">
                            <input type="checkbox" id="opt-metal" value="opt-metal" class="cb-checkbox">
                        </label>
                        <label class="mr-1">
                            <img src="Resources/bin-plastic.png" class="img-check check">
                            <input type="checkbox" id="opt-plastic" value="opt-plastic" class="cb-checkbox">
                        </label>
                        <label class="mr-1">
                            <img src="Resources/bin-paper.png" class="img-check check">
                            <input type="checkbox" id="opt-paper" value="opt-paper" class="cb-checkbox">
                        </label>
                        <label class="mr-1">
                            <img src="Resources/bin-electronics.png" class="filter-img img-check check">
                            <input type="checkbox" id="opt-electronics" value="opt-electronics" class="cb-checkbox">
                        </label>
                        <label class="mr-1">
                            <img src="Resources/bin-glass.png" class="filter-img img-check check">
                            <input type="checkbox" id="opt-glass" value="opt-glass" class="cb-checkbox">
                        </label>
                        <a class="btn mr-1" id="checkAll" role="button">All</a>
                        <a class="btn" id="checkNone" role="button">None</a>
                    </div>

                <div class="mb-3">
                    <button type="button" class="btn btn-lg" id="findBox">Find the Box</button>
                </div>
                
            <div class="mb-3" style="width: 100%; height: 500px">
                <div id="embedMap" class="maps" runat="server" style="width: 100%; height: 100%" />

            </div>
            </main>
            <footer class="mastfoot mt-auto text-center">
                <div class="inner">
                    <p>Made by <a href="https://github.com/re-box">@re-box</a>.</p>
                </div>
            </footer>
        </div>
        <script src="js/jquery-3.4.1.min.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?libraries=geometry,places&key=AIzaSyDEPrOLNaCMXPAkj-imxYe1QgqMFJ6zZeg"></script>  
        <script src="js/bigdatacloud_reverse_geocode.js" type="text/javascript"></script>
        <script src="https://cdn.jsdelivr.net/gh/bigdatacloudapi/js-reverse-geocode-client@latest/bigdatacloud_reverse_geocode.min.js" type="text/javascript"></script>
        <script type="text/javascript">  

            $("#alertLoc").hide();
            $("#alertPerm").hide();

            var reverseGeocoder = new BDCReverseGeocode();
            reverseGeocoder.localityLanguage = 'tr';

            //functions for the filters
            $("#checkAll").click(function () {
                $(".img-check").each(function () {
                    if ($(this).hasClass("check"))
                        $(this).click();
                });
            });
            $("#checkNone").click(function () {
                $(".img-check").each(function () {
                    if (!$(this).hasClass("check"))
                        $(this).click();
                });
            });
            $(document).ready(function (e) {
                $(".img-check").click(function () {
                    $(this).toggleClass("check");
                });
                $(".img-check").each(function () {
                    $(this).click();
                });
            });

            //getting elements
            const optBattery = document.getElementById("opt-battery");
            const optClothing = document.getElementById("opt-clothing");
            const optMetal = document.getElementById("opt-metal");
            const optPlastic = document.getElementById("opt-plastic");
            const optPaper = document.getElementById("opt-paper");
            const optElectronics = document.getElementById("opt-electronics");
            const optGlass = document.getElementById("opt-glass");

            const elementInputLoc = document.getElementById("inputLocation");

            //creating the map
            const map = new google.maps.Map(document.getElementById("embedMap"), {
                zoom: 15,
                center: { lat: 39.779428, lng: 30.515562 },
            });

            //adding event listeners to 'Find the Box' and 'Find location' buttons
            document.getElementById("findLoc").addEventListener("click", () => {
                geocodeLatLng(reverseGeocoder);
            });
            document.getElementById("findBox").addEventListener("click", () => {
                mapClick();
            });

            //creating our variables
            var markers = [];
            var markersByDistance = [];
            var main_lat;
            var main_long;
            var isNone;

            //creating our constracts
            const pin = "Resources/pin.png";
            const pinRecycle = "Resources/pin-box.png";
            const infowindow = new google.maps.InfoWindow();


            //getting yourLocation and putting it in the map
            function geocodeLatLng(reverseGeocoder) {
                reverseGeocoder.getClientCoordinates(function (result) {
                    if (result) {
                        reverseGeocoder.getClientLocation(function (result) {
                            var infoWindow = new google.maps.InfoWindow();
                            elementInputLoc.value = result.locality + ", " + result.principalSubdivision + ", " + result.countryName;
                            infoWindow.setContent("<div class='map-div'><p class='map-text'>" + result.locality + ", " + result.principalSubdivision + ", " + result.countryName + "</p></div>");
                        });
                        main_lat = result.coords.latitude;
                        main_long = result.coords.longitude;
                        const marker = new google.maps.Marker({
                            position: { lat: result.coords.latitude, lng: result.coords.longitude },
                            map: map,
                            icon: pin,
                        });
                        google.maps.event.addListener(marker, "click", function (e) {
                            infoWindow.open(map, marker);
                        });
                        map.setCenter(marker.getPosition());
                    }
                    else {
                        $("#alertPerm").fadeTo(2000, 500).slideUp(500, function () {
                            $("#alertPerm").slideUp(500);
                        });
                    }

                });
            }

            //getting the points to put in the map
            function getPoints() {
                var points = <%= ReBox.Index.getBinsJson()%>;
                markersByDistance = [];
                checkedPoints = [];
                var dictFilters = {
                    Battery: optBattery.checked,
                    Clothing: optClothing.checked,
                    Metal: optMetal.checked,
                    Plastic: optPlastic.checked,
                    Paper: optPaper.checked,
                    Electronics: optElectronics.checked,
                    Glass: optGlass.checked
                };
                //looking for the filters in the array points
                for (var i = 0; i < points.length; i++) {
                    for (var key in dictFilters) {
                        if (dictFilters[key] == true) {
                            if (points[i].type.includes(key)) {
                                if (!checkedPoints.includes(points[i]))
                                    checkedPoints.push(points[i]);
                            }
                        }
                    }
                }
                //checking if 'None' is selected
                if (!checkedPoints.length) {
                    isNone = true;
                }
                else {
                    isNone = false
                    //calculating distance between yourLocation and the checkedPoints
                    for (var i = 0; i < checkedPoints.length; i++) {
                        var point = checkedPoints[i];
                        distance = google.maps.geometry.spherical.computeDistanceBetween(
                            new google.maps.LatLng(point.latitude, point.longitude),
                            new google.maps.LatLng(main_lat, main_long));

                        markersByDistance[i] = point;
                        markersByDistance[i].distance = distance;

                    }
                    //sorting the markers by distance
                    function sorter(a, b) {
                        return a.distance > b.distance ? 1 : -1;
                    }

                    markersByDistance.sort(sorter);
                }

            }

            //adding markers to the map
            async function mapClick() {
                if (document.getElementById("inputLocation").value == "") {
                    $("#alertLoc").fadeTo(2000, 500).slideUp(500, function () {
                        $("#alertLoc").slideUp(500);
                    });
                }
                else {
                    hideMarkers();
                    getPoints();
                    if (!isNone) {
                        var i = 0;
                        markersByDistance.forEach((marker) => {
                            addMarkerWithTimeout(pinRecycle, marker, infowindow, i * 100);
                            i++;
                        });
                    }
                }

            }

            //hiding markers
            function hideMarkers() {
                for (var i = 0; i < markers.length; i++) {
                    markers[i].setMap(null);
                }
                markers = [];
            }

            //a function to add markers with delay
            function addMarkerWithTimeout(pinRecycle, bin, infowindow, timeout) {
                const binPos = { lat: bin.latitude, lng: bin.longitude };
                window.setTimeout(() => {
                    var marker = new google.maps.Marker({
                        position: binPos,
                        map,
                        animation: google.maps.Animation.DROP,
                        icon: pinRecycle,
                    });
                    (function (marker, bin) {
                        //creating the link
                        var link = "https://www.google.com/maps/dir/?api=1&origin=" + main_lat + "," + main_long + "&destination=" + bin.latitude + "," + bin.longitude;

                        //creting the icons
                        var types = bin.type.split(',');
                        var images = "";
                        types.forEach(element => images += "<img class='map-icon' src='Resources/bin-" + element + ".png'/>");

                        //creating the infoWindow
                        google.maps.event.addListener(marker, "click", function (e) {
                            infowindow.setContent(
                                "<div class='map-div'><p class='map-text'>" + bin.name + "</p><p class='map-text'>" + images + "</p><a class='btn map-btn' href='" + link + "' target='_blank'>Get Directions</a></div>"
                            );
                            infowindow.open(map, marker);
                        });
                    })(marker, bin);
                    markers.push(marker);
                }, timeout);
            }

        </script> </form>
</body>
</html>
