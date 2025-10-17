<%@ include file="uheader.jsp"%>

<%

String id=request.getParameter("id");
String key=request.getParameter("key");

Connection con2=dbcon.getCon();

//System.out.println(con1);

Statement st2 = con2.createStatement();
ResultSet rs2=st2.executeQuery("select AES_DECRYPT(lat,'key'),AES_DECRYPT(lon,'key') from loc_data where id='"+id+"' and secret='"+key+"' ");
%>
<br><br>

<form method="post" name="ff" action="#">
	

<table width=500 length=500><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td><td>
<%
if(rs2.next())
{
%>

<tr><td><td><font size="4" color="#ff6600"><b>Latitude Coordinate:</b>   <td><input type="text" name="lat" value="<%=rs2.getString(1)%>" readonly> 

<tr><td><td><font size="4" color="#ff6600"><b>Longitude Coordinate:</b>   <td><input type="text" name="lon" value="<%=rs2.getString(2)%>" readonly> 



<%
Statement st4 = con1.createStatement();
st4.executeUpdate("update loc_data  set cmt='seen' where toUser='"+user+"' and id='"+id+"' ");

}
else{
	response.sendRedirect("noti2.jsp?id2="+id);
}
%>
</table>
</form>







<!DOCTYPE html>
<html>
<head>
<script
src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDY0kkJiTPVd2U7aTOAwhc9ySH6oHxOIYM&sensor=false">
</script>

<script>



function initialize()
{
var lati=document.ff.lat.value;
var lon=document.ff.lon.value;
var myCenter=new google.maps.LatLng(lati,lon);
var mapProp = {
  center: myCenter,
  zoom:15,
  mapTypeId: google.maps.MapTypeId.ROADMAP
  };

var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);

var marker = new google.maps.Marker({
  position: myCenter,
  title:'Click to zoom'
  });

marker.setMap(map);

// Zoom to 9 when clicking on marker
google.maps.event.addListener(marker,'click',function() {
  map.setZoom(9);
  map.setCenter(marker.getPosition());
  });
}
google.maps.event.addDomListener(window, 'load', initialize);
</script>
</head>

<body>
<br>
<div id="googleMap" style="width:880px;height:430px;"></div>
<br>

<form method="post" action="noti4.jsp">
	
<input type="hidden" name="id" value="<%=id%>">
 <div class="form_settings"><input class="submit" type="submit" value="Get Content" />
 </form>
<br>
</div>
<%@ include file="footer.jsp"%>