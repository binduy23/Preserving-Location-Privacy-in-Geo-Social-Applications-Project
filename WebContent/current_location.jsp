<!DOCTYPE html>
<html>
    <head>
        <script src="http://maps.google.com/maps/api/js?sensor=false">
        </script>
        <script>
            if (navigator.geolocation)
            {
                navigator.geolocation.getCurrentPosition(showCurrentLocation);
            }
            else
            {
               alert("Geolocation API not supported.");
            }

            function showCurrentLocation(position)
            {
                var latitude = position.coords.latitude;
                var longitude = position.coords.longitude;
                var coords = new google.maps.LatLng(latitude, longitude);

                var mapOptions = {
                zoom: 15,
                center: coords,
                mapTypeControl: true,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };

            //create the map, and place it in the HTML map div
            map = new google.maps.Map(
            document.getElementById("mapPlaceholder"), mapOptions
            );

            //place the initial marker
            var marker = new google.maps.Marker({
            position: coords,
            map: map,
            title: "Current location!"
            });
            }
        </script>
    </head>
    <style>
    #mapPlaceholder {
        height: 400px;
        width: 700px;
    </style>
    <body>
        <div>
        <h2>Current Location</h2>
        <div id="mapPlaceholder"></div>
        </div>
    </body>

	
<p id="demo"><h3><font size="" color="#99cc00">Click the button to get your coordinates:</p></font>

<button onclick="getLocation()">Get It</button>

<script>
var x = document.getElementById("demo");

function getLocation() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition);
    } else { 
        x.innerHTML = "Geolocation is not supported by this browser.";
    }
}

function showPosition(position) {
    x.innerHTML="Latitude: " + position.coords.latitude + 
    "<br>Longitude: " + position.coords.longitude;	
}
</script>
</html>