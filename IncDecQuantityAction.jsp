<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*"%>
<%
String customer_email=session.getAttribute("customer_email").toString();
String product_ID=request.getParameter("product_ID");
String incdec=request.getParameter("quantity");
int price=0;
int total=0;
int quantity=0;
int final_total=0;
try{

Connection con=ConnectionProvider.getCon();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(" select * from cart where customer_email ='"+customer_email+"' and product_ID='"+product_ID+"' and customer_address is null;");
while (rs.next()){
	price=rs.getInt(4);
	total=rs.getInt(5);
	quantity=rs.getInt(3);
	
}
if (quantity==1 && incdec.equals("decrease")){
	response.sendRedirect("myCart.jsp?msg=notPossible");
}
else if (quantity !=1 && incdec.equals("decreased")){
	total=total - price;
	quantity=quantity-1;
	st.executeUpdate(" update cart set total='"+total+"',quantity='"+quantity+"' where  customer_email='"+customer_email+"' and product_ID='"+product_ID+"' and customer_address is null ;");
	response.sendRedirect("myCart.jsp?msg=decreased");  
	
}
	
else{
	total=total + price;
	quantity=quantity+1;
	st.executeUpdate(" update cart set total='"+total+"',quantity='"+quantity+"' where  customer_email='"+customer_email+"' and product_ID='"+product_ID+"' and customer_address is null ;");
	response.sendRedirect("myCart.jsp?msg=increased");  
	
	
	
}
	
}

catch(Exception e)  {
System.out.print(e);

} 	



%>