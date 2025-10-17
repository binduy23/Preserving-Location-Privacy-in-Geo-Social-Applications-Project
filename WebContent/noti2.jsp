<%@ include file="uheader.jsp"%>

<%

String id=request.getParameter("id");
 String id2=request.getParameter("id2");
   if(id2!=null)
    {
		id=id2;
		       out.println("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h1><font color='red'><blink>You entered wrong Secret Key</h1></blink></font>");
     }

Connection con2=dbcon.getCon();

//System.out.println(con1);



Statement st3 = con2.createStatement();

ResultSet rs2=st3.executeQuery("select * from loc_data where id='"+id+"' ");
%>
<br><br>
<form method="post" action="noti3.jsp">
	

<table width=500><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td><td>
<%
if(rs2.next())
{
%>
<tr><td><td><H1><font size="" color="#ff6600"><b>Latitude Coordinate:</b>   <td><input type="text" name="" value="<%=rs2.getString("lat")%>"> 

<tr><td><td><H1><font size="" color="#ff6600"><b>Longitude Coordinate:</b>   <td><input type="text" name="" value="<%=rs2.getString("lon")%>"> 

<tr><td><td><H1><font size="" color="#ff6600"><b>Secret Key</b>   <td><input type="text" name="key" required> 
<input type="hidden" name="id" value="<%=id%>">
<tr><td><td align="right"><input type="submit" value="   Submit   ">
<%
}
%>
</form>
</table>
<%@ include file="footer.jsp"%>