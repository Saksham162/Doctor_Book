
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
  String name = request.getParameter( "name" );
   session.setAttribute( "name", name );
   

%>












<%@ page import ="java.sql.*" %>
<%
   // String name = request.getParameter("name");    
    String age = request.getParameter("age");
    String mob = request.getParameter("mobile");
    String pwd = request.getParameter("password");
    String email = request.getParameter("email");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hms00",
            "root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
   //int i = st.executeUpdate("insert into reg00(name, email, pass, mobile, age) values ('" + name + "','" + age + "','" + mob + "','" + email + "','" + pwd + "')");
  
   int i = st.executeUpdate("insert into reg00(name, email, pass, mobile, age) values ('" + name + "','" + email + "','" + pwd + "','" + mob + "','" + age + "')");
   if (i > 0) {
        //session.setAttribute("userid", user);
        //session.setAttribute("email", email);
        response.sendRedirect("welcomeuser.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("welcomeuser.jsp");
    }
%>

</body>
</html>