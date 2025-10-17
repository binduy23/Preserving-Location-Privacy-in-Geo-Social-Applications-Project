
<%@ page  import="java.sql.*" import="db.*" import="javax.swing.JOptionPane"%>
<%


String id = request.getParameter("id");
Connection con1=dbcon.getCon();
System.out.println("update loc_data set ekey='sent' where id='"+id+"' ");
	Statement st = con1.createStatement();
	int i=st.executeUpdate("update loc_data set ekey='sent' where id='"+id+"' " );
	if(i>0)
	{
		response.sendRedirect("proxy_home.jsp?m=succ");
	}
	
	%>

