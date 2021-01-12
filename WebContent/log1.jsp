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

<%=request.getAttribute("") %>
<b>hello <%=session.getAttribute( "name" ) %></b>


<%@ page import ="java.sql.*" %>
<%
    String email = request.getParameter("email");    
    String pwd = request.getParameter("p1");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hms00",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from reg00 where email='" + email + "' and pass='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("email", email);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("welcomeuser.jsp");
    } else {
    	
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
%>


</body>
</html>