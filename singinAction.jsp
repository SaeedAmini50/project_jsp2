<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
String email=request.getParameter("customer_email");
String password=request.getParameter("customer_password");
if ("sa506750@email.com".equals(email) && "sa506750".equals(password)){
	
	session.setAttribute("customer_email",email);
	response.sendRedirect("indexAdmin.jsp");
}
else{
	int z=0;
try{
Connection con=ConnectionProvider.getCon();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from customer where customer_email='"+email+"' and customer_password='"+password+"'");
while (rs.next()){
	z=1;
	session.setAttribute("customer_email",email);
	response.sendRedirect("index.jsp");
}
if (z==0){response.sendRedirect("singin.jsp?msg=notexist");}
}
catch(Exception e){
System.out.println(e);
response.sendRedirect("error.jsp?msg=invalid");}
}
%>
