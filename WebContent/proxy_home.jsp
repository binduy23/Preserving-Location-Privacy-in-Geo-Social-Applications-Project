<%@ include file="pheader.jsp"%>
<%
                                                       String message=request.getParameter("m");
                                                       if(message!=null && message.equalsIgnoreCase("succ"))
                                                       {
                                                               out.println("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h1><font color='blue'><blink>The Data is Transfered to Index Server</blink></font><br><br>");
                                                       }

                                               %>
											  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
	<h1><font size="" color="#ff6600">  <b>Weolcome Proxy Server
											  <img src="images/geolocation.png" width="890" height="394" border="0" alt="">
											 

<%@ include file="footer.jsp"%>