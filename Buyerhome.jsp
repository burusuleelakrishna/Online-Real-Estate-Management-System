<%-- 
    Document   : Buyerhome
    Created on : 28 Nov, 2020, 11:00:25 AM
    Author     : h
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.commondb.Common_DB"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>Property Information</title>
		<meta name="description" content="Sticky Table Headers Revisited: Creating functional and flexible sticky table headers" />
		<meta name="keywords" content="Sticky Table Headers Revisited" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="css/normalize_1.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/component.css" />
		<!--[if IE]>
  		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
	</head>
        <style>
            input[type="checkbox"]{
  width: 30px; /*Desired width*/
  height: 30px; /*Desired height*/
}
 a:link, a:visited {
  background-color: #30e60b;
  color: white;
  padding: 14px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}

a:hover, a:active {
  background-color: red;
}
        </style>
	<body align="center">
		<div class="container">
			<!-- Top Navigation -->
			
			<header>
				<h1>Property Information</h1>	
				
			</header>
			<div class="component">
				
				<table class="">
					<thead>
						<tr>
						<th>Select Property</th>
                        <th>Landmark</th>
                        <th>Location</th>
                        <th>Amenities</th>
                        <th>Nearby</th>
                        <th>Vendor Name</th>
                        <th>Vendor Contact</th>
                        <th>Vendor Address</th>
						</tr>
					</thead>
					<tbody>
                                             <%
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/real","root","password");
                    Statement st=con.createStatement();
                    String query="SELECT * FROM property";
                    ResultSet rs1=st.executeQuery(query);
                        //ResultSet rs1=Common_DB.ViewTable("counselling", "college");
                        while(rs1.next())
                        {
                     %>
						<tr>
			<td><input type="checkbox" name="c12" value="<%=rs1.getString(1)%>"/></td>
                        <td><%=rs1.getString("landmark")%></td>
                        <td><%=rs1.getString("location")%></td>
                        <td><%=rs1.getString("amenities")%></td>
                        <td><%=rs1.getString("nearby")%></td>
                        <td><%=rs1.getString("vendorname")%></td>
                        <td><%=rs1.getString("vendorcontact")%></td>
                        <td><%=rs1.getString("vendoraddress")%></td>
                                                       
						</tr>
                                                <%
            }
            %>
					</tbody>
				</table>
                                        <a href="index.jsp" >SUBMIT</a>
               
			
				
			
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
		<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-throttle-debounce/1.1/jquery.ba-throttle-debounce.min.js"></script>
		<script src="js/jquery.stickyheader.js"></script>
                
	</body>
</html>
