<%@ page  import="java.sql.*" import="db.*" import="javax.swing.JOptionPane"%>
<%
String pass=null,uid=null;

String a = request.getParameter("uid");
System.out.println(a);
String b= request.getParameter("pass");
String name=null,u=null,test2=null;



try
{
if(a.equals("proxy")&&b.equals("proxy"))
{
	response.sendRedirect("proxy_home.jsp");
	}
	
if(a.equals("index")&&b.equals("index"))
{
	response.sendRedirect("index_home.jsp");
	}


	else{



Connection con1=dbcon.getCon();
System.out.println(con1);

	Statement st1 = con1.createStatement();
	
	String sss1 = "select * from register where un='"+a+"' && pwd='"+b+"'";
	ResultSet rs1=st1.executeQuery(sss1);
	if(rs1.next())
	{

	%>

<%
		response.sendRedirect("user_home.jsp");
		session.setAttribute("user",a);
    }
	else
	{
     	response.sendRedirect("index.jsp?message=fail");
	}
	con1=null;
}
}
catch(Exception e1)
{
out.println(e1);
}

%>