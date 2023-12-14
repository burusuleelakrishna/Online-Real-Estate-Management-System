<%-- 
    Document   : adminhome
    Created on : 4 Nov, 2020, 3:47:54 PM
    Author     : h
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <title>Admin Home_page</title>
        <style>
body {
 background-image: url("images/forestbridge.jpg");
 background-color: #cccccc;
}
h2 {
    color: whitesmoke;
}
</style>
    </head>
    <body align ="center">
       <div class="w3-container">
  <h2>Welcome back to admin</h2> <hr/>
  <a href="buyerrevocation.jsp" class="w3-btn w3-black">Buyer Revocation</a>
  <a href="sellerrevocation.jsp" class="w3-btn w3-black">Seller Revocation</a> 
  <a href="deleteproperty.jsp" class="w3-btn w3-black">Delete Property</a> 
  <a href="index.jsp" class="w3-btn w3-black">Logout</a>
  
 
</div>
    </body>
</html>
