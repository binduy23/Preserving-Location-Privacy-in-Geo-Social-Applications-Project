<%@ page  import="java.sql.*" import="db.*" %>
<!DOCTYPE HTML>
<html>

<head>
  <title>Geo-Social</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
  <link rel="stylesheet" type="text/css" href="css/style.css" />
  <!-- modernizr enables HTML5 elements and feature detects -->
  <script type="text/javascript" src="js/modernizr-1.5.min.js"></script>
</head>

<body>
  <div id="main">
    <header>
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_colour", allows you to change the colour of the text -->
          <h1>
		  <a href="index.jsp"><span class="logo_colour">Preserving Location Privacy in Geo-Social
Applications</span></a></h1>

        </div>
      </div>
      <nav>
        <ul class="sf-menu" id="nav">
          <li ><a href="user_home.jsp">Home</a></li>
          <li><a href="#">Location</a>
            <ul>
              <li><a href="cloc.jsp">Share Current Location</a></li>
              <li><a href="loc.jsp">Share Location</a>

              
            </ul>
<%
int c=0;
String user=(String)session.getAttribute("user");
Connection con1=dbcon.getCon();

//System.out.println(con1);

Statement st = con1.createStatement();
ResultSet rs=st.executeQuery("select * from loc_data where cmt='non' and toUser='"+user+"' ");
while(rs.next())
{
c++;

}
					%>
					<li ><a href="search.jsp">User Search</a></li>
					
							            <li ><a href="history.jsp">History</a></li>
							  <li ><a href="noti.jsp">Notifications <%
							  if(c>0)
							  {
							  %>
							  <img src="images/new5.gif" width="30" height="12" border="0" alt="">
							  <%}
								  %>
							  </a></li>
		  <li ><a href="index.jsp">Logout</a></li>
        </ul>
      </nav>
    </header>

   <div id="site_content">
      <div id="sidebar_container">
        <div class="gallery">
	
		</div>
      </div>
      <div id="content">