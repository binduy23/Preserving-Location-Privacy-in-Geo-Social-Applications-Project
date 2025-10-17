<%@ include file="header.jsp"%>


<script language="javascript"> 
function checkPassword() { 
    if (document.reg.pwd.value != document.reg.pwd2.value) { 
        alert ('The passwords do not match!');
        return false; 
    } 
} 
function isNumber(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    }
    return true;

}
function enableRegisterButton()
{
	if(document.getElementById("name").value != "" && document.getElementById("lname").value != "" && document.getElementById("addr").value != "" && document.getElementById("city").value != "" && document.getElementById("state").value != "" && document.getElementById("zip").value != "" && document.getElementById("email").value != "" && document.getElementById("pwd").value != "" && document.getElementById("pwd2").value != "")
	{ 
		 
		document.getElementById("register").disabled = false;
	
	}
	else
	{
		
		document.getElementById("register").disabled = true;
	
	}
}
function validate(email) {

            var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
            //var address = document.getElementById[email].value;
            if (reg.test(email) == false) 
            {
                alert('Invalid Email Address');
                return (false);
            }
 }

</script>

<br><br>

<table>
                
    
              <tr> <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <td colspan="2" align="center"><font size="2"><b> 
                  <%
                                                       String id=request.getParameter("id");
                                                       if(id!=null )
                                                       {
                                                               out.println("<font color='red'><blink>Registration Success ! <br><br> <font color=#990066 size=4>Your User Id:: <font color=#009900>"+id+" </blink></font><br> <a href=user_login.jsp>Login Here</a><br><br><br>");
                                                       }
													   else {%>
												
                                               <%}%>
                  </b></font></td>
              </tr>
</table>
 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="5" color="#ff9933">User Registration</font>
<center><h1>

 <form name="reg" action="register1.jsp" method="get"   name="pwForm" >

 
               <table align="left" cellpadding="5" cellspacing="5" width="400">
              <tr> <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <td><font size="+1" color=#006666><strong>Name</strong>*</font><br>
                <input type="text" name="name" id = "name" onblur = "enableRegisterButton();" style="width: 250px;" required></td>
				<td><font size="+1" color=#006666><strong>Last Name</strong>*</font><br>
                <input type="text" name="lname" id = "lname" onblur = "enableRegisterButton();" style="width: 250px;" required></td>	
              </tr>
			  </TABLE>
			 <table align="left" cellpadding="5" cellspacing="5" width="400">
			  <tr> <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <td><font size="+1"color=#006666><strong>Address</strong>*</font>
				<br>
				<input type="text" name="addr" id = "addr" onblur = "enableRegisterButton();" style="width: 520px;"	required >
              </tr>
              <tr> 
               </table>
			 <table align="left" cellpadding="5" cellspacing="5" width="400">
			 <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			 <td><font size="+1"color=#006666><strong>City</strong>*</font><br>
			<input type="text" name="city" id = "city" onblur = "enableRegisterButton();" style="width: 190px;"	 required>
			<td><font size="+1"color=#006666><strong>State</strong>*</font><br>
			<input type="text" name="state" id="state" onblur = "enableRegisterButton();" style="width: 190px;"	required >
			<td>	<font size="+1"color=#006666><strong>Zip</strong>*</font><br>
			<input type="text" pattern="[0-9]*" id="zip" onblur = "enableRegisterButton();" onkeypress = "return isNumber(this.value);" name="zip" style="width: 100px;"	 required>
			</table>
				 <table align="left" cellpadding="5" cellspacing="5" width="400">
			  <tr> <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <td><font size="+1"color=#006666><strong>Telephone</strong></font>
				<br>
				<input type="tel"  name="tele" style="width: 250px;"	onkeypress = "return isNumber(this.value);" >
				<td>
				<font size="+1"color=#006666><strong>Email</strong>*</font>
				<br>
				<input type="email" name="email" id="email" onblur = "return validate(this.value);enableRegisterButton();" style="width: 250px;"	 required>
              </tr>
               </table>
			 <table align="left" cellpadding="5" cellspacing="5" width="400">
			  <tr> <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <td><font size="+1"color=#006666><strong>User ID</strong>*</font>
				<br>
				<input type="text" name="user" id = "" onblur = "enableRegisterButton();" style="width: 520px;"	required >
              </tr>
              <tr> 
               </table>


			   	 <table align="left" cellpadding="5" cellspacing="5" width="400">
			  <tr> <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <td><font size="+1"color=#006666><strong>Passwod</strong>*</font>
				<br>
				<input type="password" name="pwd" id="pwd" onblur = "enableRegisterButton();" style="width: 250px;" required	 >
				<td>
				<font size="+1"color=#006666><strong>Confirm Password</strong>*</font>
				<br>
				<input type="password" name="pwd2" id="pwd2" onblur = "enableRegisterButton();" style="width: 250px;" required	 >
					
					<tr><td><td>				<input type="submit" Value="Register" id = "register" name = "register" disabled = "true" onClick="return checkPassword();">		
				<td>
				
				
				<input type="reset" value="   Reset   ">
              </tr>



               </table>
             
			   
			   
 </form>
<%@ include file="footer.jsp"%>