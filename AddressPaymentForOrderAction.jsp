<%@ page import="java.sql.*" 
import="project.ConnectionProvider"%>

 <%
 String email=session.getAttribute("customer_email").toString();
 String address=request.getParameter("customer_address");
 String city=request.getParameter("customer_city");
 String country=request.getParameter("customer_country");
 String  paymentMethod=request.getParameter("paymentMethod");
 String  phone=request.getParameter("customer_phone");
 //transaction_ID شاید خالی باشد شاید یوزر پر کرد 
 String  transaction_ID="";
   transaction_ID=request.getParameter("transactionID");
String status="bill";
 




try {
	
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("update customer set customer_address=?,customer_city=?,customer_country=?,customer_phone=? where customer_email ;");

	ps.setString(1,address);
	ps.setString(2,city);
	ps.setString(3,country);
	ps.setString(4,phone);
	ps.setString(5,email);
	ps.executeUpdate();
	
	PreparedStatement ps1 = con.prepareStatement("update cart set customer_address=?,customer_city=?,customer_country=?,customer_phone=?,orderDate=now(),deliveryDate=DATE_ADD(orderDate,INTERVAL 7 DAY),paymentMethod=?,transactionID=?,status=? where customer_email=? and customer_address is NULL ");

	ps1.setString(1,address);
	ps1.setString(2,city);
	ps1.setString(3,country);
	ps1.setString(4,phone);
	ps1.setString(5,paymentMethod);
	ps1.setString(6,transaction_ID);
	ps1.setString(7,status);
	ps1.setString(8,email);
	ps.executeUpdate();
	response.sendRedirect("bill.jsp");



}
 




catch(Exception e){
	
	System.out.print(e);
}
 %>
 
 
 
 
 
 
 
 
 