<%@ page  import="java.sql.*" import="db.*" import="javax.swing.JOptionPane"%>

<%@ include file="iheader.jsp"%>
<%
Connection con1=dbcon.getCon();
//System.out.println(con1);
	Statement st = con1.createStatement();
	ResultSet rs=st.executeQuery("select * from loc_data where ekey like 'non' ");
%>	
<h1>
<font size="" color="#c4c734"><b><h2>New Requests</h1></h2>
<table width="900" cellspacing=10 >


<tr><th><h3><font size="" color="#07828b"><b><b>Req Id<th><h3><font size="" color="#07828b"><b>User From<td><h3><font size="" color="#07828b"><b>User To<th><h3><font size="" color="#07828b"><b>Latitude Value<td><h3><font size="" color="#07828b"><b>Longitude Value<td><h3><font size="" color="#07828b"><b>Action
<%while(rs.next())
	{
		%>
		<tr><td><h4><%=rs.getString(1)%>
		<td><h4><%=rs.getString(2)%>
		<td><h4><%=rs.getString(3)%>
		<td><h4><%=rs.getString(4)%>
		<td><h4><%=rs.getString(5)%>
				<td><h4><a href="send.jsp?id=<%=rs.getString(1)%>">Send to Index Server</a>



<%
	}

												


                                               %>
											 
</table>
<%@ include file="footer.jsp"%>
