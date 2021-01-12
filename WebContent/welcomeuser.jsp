

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="qwerty.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.
	js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-theme.css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css">
<style>
.form-group
{
font-size:25px;
}

.gallery0
{
position: absolute;
top:1500px;

left:300px;
}






#div001 {
	position: absolute;
	top: 300px;
	background-color:;
	left: 50px;
	right: 100px;
}
#designDiv {
	overflow-y: scroll;
	max-width: 1000px;
	max-height: 600px;
}
body {
	padding-top: 40px;
}
.header {
	background-color: pink;
	height: 110px;
	text-align: center;
}

.y5{

font-family:AR BLANCA;
color: red;
}
</style>
</head>
</head>
<body>
<body data-spy="scroll" data-target="#my-navbar">
	<nav class="navbar navbar-inverse navbar-fixed-top" id="my-navbar">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#navbar-collapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a href=" " class="navbar-brand">Blood Bank</a>
		</div>
		<div class="collapse navbar-collapse" id="navbar-collapse">
		
			<ul class="nav navbar-nav navbar-right">
				<li><a href="index.html"><span
						class="glyphicon glyphicon-log-out"></span> Logout</a></li>
			</ul>
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li>
				<li><a href="#feedback">Feedback</a></li>
				<li><a href="#gallery">Gallery</a></li>
				<li><a href="#login">Login/Register</a></li>
				<li><a href="#faq">F.A.Q</a></li>
				<li><a href="#contact">ContactUs</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<div class="jumbotron responsive-image"
		style="background-image: url(p2.jpg)";>
		<div class="container text-center roy">
			<h1>
				<b>Your Profile</b>
			</h1>
			<p class="p1">To the young and healthy it's no loss. To sick it's
				hope of life. Donate Blood to give back life.</p>
		</div>
	</div>
<h4><b>WELCOME USER</b></h4>
Click on book my appointment to book an appointment with your respective doctor



<%
	// String name = request.getParameter("name");    
    String pname = request.getParameter("pname");
    String dname = request.getParameter("dname");
    String sp = request.getParameter("sp");
    String bookday = request.getParameter("bookday");
    
    String pname1 = request.getParameter("pname1");
    String dname1 = request.getParameter("dname1");
    String sp1 = request.getParameter("sp1");
    String bookday1 = request.getParameter("bookday1");
    
    
    String pname2 = request.getParameter("pname2");
    String dname2 = request.getParameter("dname2");
    String sp2 = request.getParameter("sp2");
    String bookday2 = request.getParameter("bookday2");
    
   
    String pname3 = request.getParameter("pname3");
    String dname3 = request.getParameter("dname3");
    String sp3 = request.getParameter("sp3");
    String bookday3 = request.getParameter("bookday3");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hms00",
            "root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
   //int i = st.executeUpdate("insert into reg00(name, email, pass, mobile, age) values ('" + name + "','" + age + "','" + mob + "','" + email + "','" + pwd + "')");
  
   st.executeUpdate("insert into welcome2(name,doctor,sp,day) values ('" + pname + "','John','ent','" + bookday + "')");
   
   st.executeUpdate("insert into welcome2(name,doctor,sp,day) values ('" + pname1 + "','Mathew','Cardio','" + bookday1 + "')");
   
   st.executeUpdate("insert into welcome2(name,doctor,sp,day) values ('" + pname2 + "','Viren','ent','" + bookday2 + "')");

	%>




<script type=text/javascript>
function myfun1()
{
	alert("you have booked an appointment successfully");
}
	

</script>




<form action="" method="post">

<div class="container">
  <h2 class="y5">City Hospital</h2>
  <p>Enter the name of the patient and click on submit to book an appointment with respective doctor</p>
  <table class="table">
    <thead>
      <tr>
        <th>Patient Name</th>
        <th>Doctor</th>
        <th>Speciality</th>
        <th>time</th>
        <th>Select Date</th>
        <th>BOOK</th>
        
      </tr>
    </thead>
    <tbody>
      <tr class="success">
        <td><input type="text" name="pname"></td>
        <td name="dname">John</td>
        <td name="sp">ENT</td>
        <td>Mon,wed,fri(9:00-13:00)</td>
        <td><input type="date" class="form-control"  name="bookday"  min="1900-12-31" max="2099-12-31" id="bookdate">  </td>
        <td><button type="submit"  class="btn btn-primary">Submit</button></td>
      </tr>
      <tr class="danger">
         <td><input type="text" name="pname1"></td>
        <td name="dname1">Mathew</td>
        <td name="sp1">ENT</td>
        <td>Mon,Thu,fri(9:00-13:00)</td>
        <td><input type="date" class="form-control"  name="bookday1"  min="1900-12-31" max="2099-12-31" id="bookdate">  </td>
         <td><button type="submit" class="btn btn-primary">Submit</button></td>
      </tr>
      <tr class="info">
        <td><input type="text" name="pname2"></td>
        <td name="dname2">Viren</td>
        <td name="sp2">Neurologist</td>
        <td>Mon,Thu,fri(9:00-13:00)</td>
        <td><input type="date" class="form-control"  name="bookday2"  min="1900-12-31" max="2099-12-31" id="bookdate">  </td>
        <td><button type="submit" class="btn btn-primary">Submit</button></td>
      </tr>
      
      <tr class="danger">
        <td><input type="text" name="pname2"></td>
        <td name="dname2">Rohit</td>
        <td name="sp2">Ent</td>
        <td>Tue,Thu,Sat(9:00-13:00)</td>
        <td><input type="date" class="form-control"  name="bookday2"  min="1900-12-31" max="2099-12-31" id="bookdate">  </td>
        <td><button type="submit" class="btn btn-primary">Submit</button></td>
      </tr>
      
      
      <tr class="info">
        <td><input type="text" name="pname2"></td>
        <td name="dname3">Oberoi</td>
        <td name="sp3">ayurvedic</td>
        <td>Mon,Thu,fri(9:00-13:00)</td>
        <td><input type="date" class="form-control"  name="bookday2"  min="1900-12-31" max="2099-12-31" id="bookdate">  </td>
        <td><button type="submit" class="btn btn-primary">Submit</button></td>
      </tr>
      
      <tr class="success">
        <td><input type="text" name="pname2"></td>
        <td name="dname4">Ramesh</td>
        <td name="sp4">Dermatologist</td>
        <td>Mon,Thu,fri(9:00-13:00)</td>
        <td><input type="date" class="form-control"  name="bookday2"  min="1900-12-31" max="2099-12-31" id="bookdate">  </td>
        <td><button type="submit" class="btn btn-primary">Submit</button></td>
      </tr>
      
    </tbody>
  </table>
</div>
</form>


        
</body>
</html>
	
