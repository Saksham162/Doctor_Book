<%@ page import ="java.sql.*" %>
<%
    String name = request.getParameter("name");    
    String pwd = request.getParameter("password");
    String ag = request.getParameter("age");
    String mob = request.getParameter("mobile");
    String em = request.getParameter("email");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbname",
            "root", "dbpass");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into reg00(name, email, pass, mobile, age) values ('" + name + "','" + email + "','" + pwd + "','" + mob + "','" + age + "')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("welcome.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
%>