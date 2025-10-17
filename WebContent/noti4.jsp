<%@ include file="uheader.jsp"%>

<%
String cont=null;
String id=request.getParameter("id");
String id1=request.getParameter("id1");
   if(id1!=null)
    {
		id=id1;
		       out.println("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h1><font color=#ff0099><blink>You entered wrong Key</h1></blink></font>");
     }

Connection con2=dbcon.getCon();

//System.out.println(con1);

Statement st2 = con2.createStatement();
ResultSet rs2=st2.executeQuery("select AES_DECRYPT(lat,'key'),AES_DECRYPT(lon,'key'), content from loc_data where id='"+id+"' ");
%>
<br><br>


	

<%
if(rs2.next())
{
%>
<form method="post" name="ff" action="#">
<input type="hidden" name="lat" value="<%=rs2.getString(1)%>" readonly> 

<input type="hidden" name="lon" value="<%=rs2.getString(2)%>" readonly> 
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

<h1><font color=orange>Content:&nbsp;&nbsp;&nbsp; <textarea name="" rows="3" cols="30" readonly><%=cont%></textarea>
<h1><font color=orange>Secure Key&nbsp;&nbsp;&nbsp;<input type="text" name="key" size="36" required></h1></h1>
<input type="hidden" name="id" size="36"  required value="<%=id%>">
<div class="form_settings"><input class="submit" type="submit" value="Submit" />
</table>
</form>
<br><br>
</div>
<%@ include file="footer.jsp"%>