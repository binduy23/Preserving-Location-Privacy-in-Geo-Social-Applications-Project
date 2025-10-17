
<%@ page  import="java.sql.*" import="db.*" import="java.util.UUID"%>
<%@ page import="Mail.mail"%>

<%


String id = request.getParameter("id");
String uuid = UUID.randomUUID().toString();
Connection con1=dbcon.getCon();
//System.out.println("update loc_data set ekey='"+uuid+"' where id='"+id+"' ");
Statement st = con1.createStatement();
int i=st.executeUpdate("update loc_data set ekey='"+uuid+"' where id='"+id+"' ");
if(i>0)
{
	Mail.mail m=new Mail.mail();
m.mailsend(id);
	response.sendRedirect("proxy_home.jsp?m=succ");
}
	
	%>

