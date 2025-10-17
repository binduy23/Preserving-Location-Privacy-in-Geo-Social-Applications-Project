<%@ include file="uheader.jsp"%>

<%
String cont=null;
String lat=null;
String lon=null;
String id=request.getParameter("id");

Connection con2=dbcon.getCon();

//System.out.println(con1);

Statement st2 = con2.createStatement();
ResultSet rs2=st2.executeQuery("select AES_DECRYPT(lat,'key'),AES_DECRYPT(lon,'key'), AES_DECRYPT(content,'key') from loc_data where id='"+id+"' ");
%>
<br><br>


	

<%
if(rs2.next())
{
%>
<form method="post" name="ff" action="#">
<input type="hidden" name="lat" value="<%=rs2.getString(1)%>"> 

<input type="hidden" name="lon" value="<%=rs2.getString(2)%>"> 
<%lat=rs2.getString(1);%>
<%lon=rs2.getString(2);%>
<%cont=rs2.getString(3);%>
</form>

<%
}
%>









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
<br><br><br>

<form method="post" action="noti5.jsp">
<table width=800>
<tr><td><h1><font color=orange>Latitude:&nbsp;&nbsp;&nbsp; <input type="text" name="" value="<%=lat%>">
<h2><font color=orange>Longitude:&nbsp;&nbsp;&nbsp; <input type="text" name="" value="<%=lat%>">
<h3><font color=orange>Content:&nbsp;&nbsp;&nbsp; <textarea name="" rows="3" cols="30"><%=cont%></textarea>
</h1></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="history.jsp">back</a>
</table>
</form>
<br><br>
</div>
<%@ include file="footer.jsp"%>

