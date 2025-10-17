<script type="text/javascript">
// google_dynamic_map.js file
// Map Initialize function

function initialize()
{
	// Set static latitude, longitude value
	var latlng = new google.maps.LatLng(17.436951506722654, 78.44502579788968);
	// Set map options
	var myOptions = {
		zoom: 16,
		center: latlng,
		panControl: true,
		zoomControl: true,
		scaleControl: true,
		mapTypeId: google.maps.MapTypeId.ROADMAP
	}
	// Create map object with options
	map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
	// Create and set the marker
	marker = new google.maps.Marker({
		map: map,
		draggable:true,
		position: latlng
	});

	// Register Custom "dragend" Event
	google.maps.event.addListener(marker, 'dragend', function() {

		// Get the Current position, where the pointer was dropped
		var point = marker.getPosition();
		// Center the map at given point
		map.panTo(point);
		// Update the textbox
		document.getElementById('txt_latlng').value=point.lat()+", "+point.lng();
	});
}
</script>
<!--dynamic_map.htm file-->
<html>
	<head>
		<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
		<script type="text/javascript" src="google_dynamic_map.js"></script>
	</head>
	<body onload="initialize();">
		
		<div id="map_canvas" style="width:600px;height:400px;border:solid black 1px;"></div>
		Latitude, Longitude <input type="text" name="txt_latlng" id="txt_latlng" style="width:480px;">
	</body>
</html>
