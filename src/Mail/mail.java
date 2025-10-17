package Mail;
import db.*;
import java.sql.*;

import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;
import javax.swing.JOptionPane;
import java.util.*;
public class mail {

   
	public  static void mailsend(String id) throws MessagingException {
     String secret=null;
String ekey=null;
String email=null;
String rec=null;
String user=null;
	try{
	System.out.println("....."+id);
	Connection con=dbcon.getCon();
	Statement st=con.createStatement();
	String sql="select * from loc_data where id="+id+" ";
	ResultSet rs=st.executeQuery(sql);
	if(rs.next())	
	{
		user=rs.getString("user");
		rec=rs.getString("toUser");
	System.out.println("....."+rec);
		ekey=rs.getString("ekey");
		secret=rs.getString("secret");
	}
	Statement st1=con.createStatement();
	String sql1="select * from register where un='"+rec+"' ";
	ResultSet rs1=st1.executeQuery(sql1);
	if(rs1.next())	
	{
		email=rs1.getString("email");

	}
	System.out.println("....."+email);

    String host = "smtp.gmail.com";
    String from = "geoappproject";
    String pass = "cloudtechnologies";
    Properties props = System.getProperties();
    props.put("mail.smtp.starttls.enable", "true"); // added this line
    props.put("mail.smtp.host", host);
    props.put("mail.smtp.user", from);
    props.put("mail.smtp.password", pass);
    props.put("mail.smtp.port", "587");
    props.put("mail.smtp.auth", "true");

    String[] to = {email}; // added this line

    Session session = Session.getDefaultInstance(props, null);
    MimeMessage message = new MimeMessage(session);
    message.setFrom(new InternetAddress(from));

    InternetAddress[] toAddress = new InternetAddress[to.length];

    // To get the array of addresses
    for( int i=0; i < to.length; i++ ) { // changed from a while loop
        toAddress[i] = new InternetAddress(to[i]);
    }
    System.out.println(Message.RecipientType.TO);

    for( int i=0; i < toAddress.length; i++) { // changed from a while loop
        message.addRecipient(Message.RecipientType.TO, toAddress[i]);
    }
    message.setSubject("Geo Social Application");
    message.setContent("<font size=4 color=#7171b9><b><i>'"+user+"'</i> shared Location <br><font size=4 color=  #7171b9><b>Secret= <i>"+secret+" </i><br><font size=4 color=#7171b9><b>Key= <i>"+ekey,"text/html");

    Transport transport = session.getTransport("smtp");
    transport.connect(host, from, pass);
    transport.sendMessage(message, message.getAllRecipients());
    transport.close();
    //JOptionPane.showMessageDialog(null,"code sucessfully send to mail");
	}
	catch(Exception e)
	{
System.out.println(e);
	}
}
    public static void main(String a[])        
    {
        try {
            mailsend("1");
        } catch (MessagingException ex) {
            Logger.getLogger(mail.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}


