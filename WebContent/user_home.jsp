<%@ include file="uheader.jsp"%>
<%
                                                       String message=request.getParameter("m");
                                                       if(message!=null && message.equalsIgnoreCase("succ"))
                                                       {
                                                               out.println("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h1><font color='red'><blink>Location is Shared to your Friend</blink></font>");
                                                       }

                                               %>

<br>
<img src="images/geo-location_0.jpg" width="773" height="494" border="0" alt="">
<%@ include file="footer.jsp"%>