<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="initial-scale=1.0, user-scalable=no">
<meta charset="utf-8">
<script  type="text/javascript" src="JS/HomePage.js"></script> 
<link rel="stylesheet" type="text/css" href="CSS/HomePage.css"> 
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Allerta+Stencil">
<title>HomePage</title>
</head>
<body>

    <div id="mySidenav" class="sidenav"></
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <p id="name">Rajula Pavani</p>
  <p id="id">UCAB170008</p>
  <p id="phoneNum">7207874257</a>
  <p id ="emailID" >rpavani1998@gmail.com</p>
  <p></p>
  <p></p>
  <a href="#">Booking History</a>
  <a href="#">Payment</a>
  <a href="#">Rate Your Ride</a>
</div>

    <div id="main">
      <span style="font-size:40px;cursor:pointer" onclick="openNav()">&#9776;</span>
    </div>

    <div id="title" style="cursor:pointer" onclick="#"><span class="glyphicon glyphicon-map-marker"></span>Cabriolet</div>
   
    <div id="map"></div>

    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB4jdDVSmvrlcnQ_J7pitAjd3BEryHEUuQ&callback=initMap">
    </script>

    <section id="searchBar">
     <section class="modal-content">
      <section class="modal-header" style="padding:35px 50px;">
        <h4><span class="glyphicon glyphicon-lock"></span> Take a Ride</h4>
      </section>

      <section class="modal-body" style="padding:40px 50px;">
        <form role="form">
          <section class="form-group">
            <label for="source"><span class="input-group-addon"><img src="CSS/Images/marker.png"><span class="hidden-xs text-upper-style">Source</span></label>
            <input type="text" class="form-control" id="source" placeholder="Enter Source">
          </section>
          <br>
          <section class="form-group">
            <label for="destination"><span class="input-group-addon"><img src="CSS/Images/pointer.png"><span class="hidden-xs text-upper-style">Destination</span></label>
            <input type="text" class="form-control" id="destination" placeholder="Enter Destination">
          </section>

        <br>
         <br>  <button type="submit" class="btn btn-basic btn-block"><span class="glyphicon glyphicon-off"></span>Estimate Ride Cost</button>
         <p></p>
         
          <button type="submit" class="btn btn-basic btn-block"><span class="glyphicon glyphicon-off"></span>Confirm Booking</button>

        </form>
      </section>

</div>

  </body>
</html>




