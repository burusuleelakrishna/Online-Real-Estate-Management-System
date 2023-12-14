<%-- 
    Document   : addproperty
    Created on : 9 Nov, 2020, 10:45:29 PM
    Author     : h
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>Property Page</title>
<style>
* {
  box-sizing: border-box;
}

body {
  margin: 0;
  font-family: Arial;
  font-size: 17px;
}

#myVideo {
  position: fixed;
  right: 0;
  bottom: 0;
  min-width: 100%; 
  min-height: 100%;
}

.content {
  position: absolute;
  text-align: center;
  color: #f1f1f1;
  width: 100%;
  padding: 150px;
}

#myBtn {
  width: 200px;
  font-size: 18px;
  padding: 10px;
  border: none;
  background: #000;
  color: #fff;
  cursor: pointer;
}

input[type=text] {
  width: 50%;
  padding: 15px 25px;
  margin: 15px 0;
  box-sizing: border-box;
  border: none;
  background-color: #3CBC8D;
  color: white;
}
</style>
</head>
<body>

<video autoplay muted loop id="myVideo">
    <source src="video/props.mp4" type="video/mp4">
  Your browser does not support HTML5 video.
</video>

<div class="content">
    <form action="addproperty" method="POST" name="f1">
         Name :
        <input type="text" name="name" placeholder="Enter vendor name" required="" value="">
        <br/>
        <br/>
        
        Contact:
        <input type="text" name="contact" placeholder="Enter vendor contact" required="" value="">
        <br/>
        <br/>
        
        
         Address:
        <input type="text" name="address" placeholder="Enter vendor address" required="" value="">
        <br/>
        <br/>
        
        Landmark:
        <input type="text" name="landmark" placeholder="Enter Landmark" required="" value="">
        <br/>
        <br/>
        
        Location:
        <input type="text" name="location" placeholder="Enter location" required="" value="">
        <br/>
        <br/>
        
        Amenities:
        <input type="text" name="Amenities" placeholder="Enter Amenities" required="" value="">
        <br/>
        <br/>
        
        Near By:
        <input type="text" name="nearby" placeholder="Enter Nearby" required="" value="">
        <br/>
        <br/>
       
        
           
        <input type="submit"  value="Register">
        
        
        
    </form>
 
</div>

    
    
    </body>
</html>
