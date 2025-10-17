<%@ include file="uheader.jsp"%>

<%


Connection con2=dbcon.getCon();

//System.out.println(con1);

Statement st2 = con2.createStatement();
ResultSet rs2=st2.executeQuery("select * from loc_data where cmt='seen' and toUser='"+user+"' ");
%>
<br><br>
<table width=800><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td><td>
<%
while(rs2.next())
{
%>
<tr><td><td><H1><font size="" color="#2174a0">**<i>  <b><%=rs2.getString("user")%></b></i> &nbsp;&nbsp;&nbsp;Shared Location with you.. <a href="history2.jsp?id=<%=rs2.getString(1)%>">Click Here</a>  to see details.

<%
}
					%>

</table>
<%@ include file="footer.jsp"%>