<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*"%>
<%

String customer_email=session.getAttribute("customer_email").toString();
String product_ID=request.getParameter("product_ID");

try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	 st.executeUpdate(" delete  from cart where customer_email ='"+customer_email+"' and product_ID='"+product_ID+"' and customer_address is null;");
	
		response.sendRedirect("myCart.jsp?msg=removed");  
		

}
	catch(Exception e)  {
		System.out.print(e);
}
%>