<%@ page  import="java.sql.*" import="db.*" import="javax.swing.JOptionPane"%>

<%@ include file="iheader.jsp"%>
<%
Connection con1=dbcon.getCon();
//System.out.println(con1);
	Statement st = con1.createStatement();
	ResultSet rs=st.executeQuery("select * from loc_data where ekey like 'sent' ");
%>	
<h1>
<font size="" color="#0ed709"><b>New Requests</h1></h2>
<table width=900 cellspacing=10 >
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td><td>

<tr><td><td><h3><font size="" color="#00ae2c"><b><b>Req Id<td><h3><font size="" color="#00ae2c"><b>User From<td><h3><font size="" color="#00ae2c"><b>User To<td><h3><font size="" color="#00ae2c"><b>Latitude Value<td><h3><font size="" color="#00ae2c"><b>Longitude Value<td><h3><font size="" color="#00ae2c"><b>Content<td><h3><font size="" color="#00ae2c"><b>Action
<%while(rs.next())
	{
		%>
		<tr><td><td><h4><%=rs.getString(1)%>
		<td><h4><%=rs.getString(2)%>
		<td><h4><%=rs.getString(3)%>
		<td><h4><%=rs.getString(4)%>
		<td><h4><%=rs.getString(5)%>
				<td><h4><%=rs.getString(6)%>
				<td><h4><a href="recipient.jsp?id=<%=rs.getString(1)%>">Send to Recipient</a>



<%
	}

												


                                               %>
											 
</table>
<%@ include file="footer.jsp"%>
