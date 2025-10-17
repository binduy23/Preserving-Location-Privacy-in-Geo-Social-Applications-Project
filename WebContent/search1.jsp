<%@ include file="uheader.jsp"%>


<%@ page  import="java.sql.*" import="db.*" %>
<%
String uid=null;

String a = request.getParameter("uid");
System.out.println(a);





try
{
Connection con11=dbcon.getCon();
//System.out.println(con1);
Statement st11 = con11.createStatement();
	
	String sss1 = "select * from register where email like '%"+a+"%' ";
	ResultSet rs11=st11.executeQuery(sss1);
%>
<br><br><br><h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;User Details are
<table><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td>
<%
	while(rs11.next())
	{
%>
<tr><td><td><font size="4" color="#6699ff">Email<td><font size="4" color="#990099"><%=rs11.getString("email")%>
<tr><td><td><font size="4" color="#6699ff">Name<td><font size="4" color="#990099"><%=rs11.getString("name")%>
<tr><td><td><font size="4" color="#6699ff">UserId&nbsp;&nbsp;&nbsp;&nbsp;<td><font size="4" color="#990099"><b><a href="#"><%=rs11.getString("un")%></a>
<tr><td><td><font size="4" color="#6699ff">City<td><font size="4" color="#990099"><%=rs11.getString("city")%>
<tr><td><td><td>
<tr><td><td><td><tr><td><td><td><tr><td><td><td><tr><td><td><td><tr><td><td><td><tr><td><brs><td><td><tr><td><td><td><tr><td><td><td><tr><td><td><td><tr><td><td><td><tr><td><td><td><tr><td><td><td><tr><td><td><td>
<%	}
}catch(Exception e)
{}
	%>
</table></div>
<%@ include file="footer.jsp"%>
