<%@ include file="uheader.jsp"%>


<%@ page  import="java.sql.*" import="db.*" import="javax.swing.JOptionPane"%>
<%
String pass=null,uid=null;

String lat = request.getParameter("lat");
String lon = request.getParameter("lon");
String txt_latlng = request.getParameter("txt_latlng");
if(txt_latlng!=null)
{
	String[] temp=txt_latlng.split(",");
	lat=temp[0];
	lon=temp[1];
}
%>
<form method="post" action="cloc3.jsp">
<font size="" color="#3cb76c">
<b>
<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Share Details to Your Friend</h2>
<table width="700"><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td><td>
<tr><td><td><h3><font size="" color="#3cb76c"><b>Latitude<td><input type="text" name="lat" value="<%=lat%>" readonly>
<tr><td><td><h3><font size="" color="#3cb76c"><b>Longitude<td><input type="text" name="lon" value="<%=lon%>" readonly>
<tr><td><td><h3><font size="" color="#3cb76c"><b>To Whom<td><input type="text" name="touser"  required placeholder="User ID">&nbsp;&nbsp;<a href="search.jsp" target="_blank"><b>UserId Search</a>
<tr><td><td><h3><font size="" color="#3cb76c"><b>Content<td><textarea name="con" rows="5" cols="30"></textarea>
<tr><td><td><h3><font size="" color="#3cb76c"><b>Secret Message<td><input type="text" name="sec"  required >
<tr><td><td><td><div class="form_settings"><input class="submit" type="submit" value="Share" />
</table>

</form>

<%@ include file="footer.jsp"%>
