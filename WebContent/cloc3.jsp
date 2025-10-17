


<%@ page  import="java.sql.*" import="db.*" import="javax.swing.JOptionPane"%>
<%
String pass=null,uid=null;
int id=1;
String lat = request.getParameter("lat");
String lon = request.getParameter("lon");
String touser = request.getParameter("touser");
String con = request.getParameter("con");
String sec = request.getParameter("sec");
String user = (String)session.getAttribute("user");
if(user==null){
response.sendRedirect("user_login.jsp?session Expired");
return;
}
Connection con1=dbcon.getCon();
//System.out.println(con1);
	Statement st = con1.createStatement();
	ResultSet rs=st.executeQuery("select * from loc_data");
	while(rs.next())
	{
		id=rs.getInt("id");
		System.out.println("sss"+id);
		id++;
	}

	Statement st1 = con1.createStatement();
	
	String sss1 = "insert into loc_data(id, user, toUser,lat, lon, content, secret) values ('"+id+"','"+user+"','"+touser+"',AES_ENCRYPT('"+lat+"','key'),AES_ENCRYPT('"+lon+"','key'),AES_ENCRYPT('"+con+"','key'),'"+sec+"')";
	int i=st1.executeUpdate(sss1);
	if(i>0)
	{
		response.sendRedirect("user_home.jsp?m=succ");

	}


%>
