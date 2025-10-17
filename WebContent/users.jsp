<%@ page  import="java.sql.*" import="db.*" import="javax.swing.JOptionPane"%>

<%@ include file="iheader.jsp"%>
<%
Connection con1=dbcon.getCon();
//System.out.println(con1);
	Statement st = con1.createStatement();
	ResultSet rs=st.executeQuery("select * from register");
%>	
<h1>
<font size="" color="#d26900"><b>Users are</h1></h2>
<table width=700 cellspacing=10 >
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td><td>

<tr><td><td><h3><font size="" color="#004f9d"><b><b>User Id<td><h3><font size="" color="#004f9d"><b>Name<td><h3><font size="" color="#004f9d"><b>City<td><h3><font size="" color="#004f9d"><b>Email<td><h3><font size="" color="#004f9d"><b>UserId
<%while(rs.next())
	{
		%>
		<tr><td><td><h4><%=rs.getString(1)%>
		<td><h4><%=rs.getString(2)%>
		<td><h4><%=rs.getString(5)%>
		<td><h4><%=rs.getString(9)%>
		<td><h4><%=rs.getString(10)%>



<%
	}

												


                                               %>
											 
</table>
<%@ include file="footer.jsp"%>
