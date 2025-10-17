<%@ page import="java.sql.*"%>
<%@ page import="javax.mail.MessagingException"%>
<%@ page import="Mail.mail"%>
<%@ page import="db.dbcon"%>


<%! String name, lname, addr, city, state, zip, tele, email, un, pwd, user;
	int i=0;
%>
<%
try{

Connection con=dbcon.getCon();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select max(id) from register");
if(rs.next())
{
	i=rs.getInt(1);
	++i;
}
}
catch(Exception e){
System.out.println("Exception Occured");}

name=request.getParameter("name");
lname=request.getParameter("lname");
addr=request.getParameter("addr");
city=request.getParameter("city");
state=request.getParameter("state");
 zip=request.getParameter("zip");
tele=request.getParameter("tele");
 email=request.getParameter("email");
 user=request.getParameter("user");
pwd=request.getParameter("pwd");
System.out.println(pwd);
%>
<%
try{

Connection con=dbcon.getCon();
Statement st=con.createStatement();
un="user110"+i;

int q= st.executeUpdate("insert into register values('"+i+"','"+name+"','"+lname+"','"+addr+"','"+city+"','"+state+"','"+zip+"','"+tele+"','"+email+"', '"+user+"', '"+pwd+"')");

if(q>0)
{

	response.sendRedirect("newuser.jsp?id="+user+"");
	//response.sendRedirect("register.jsp?message=succ");
}
else
	response.sendRedirect("newuser.jsp?message=fail");

con=null;
}
catch(Exception e)
{
out.println(e);
	}
%>
