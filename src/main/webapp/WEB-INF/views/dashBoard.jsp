<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap4.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script
	src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
<script
	src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap4.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/js/bootstrap-datepicker.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.8/dist/sweetalert2.all.min.js"></script>
<style>
.sidebar {
	height: 100%; /* 100% Full-height */
	width: 0; /* 0 width - change this with JavaScript */
	position: fixed; /* Stay in place */
	z-index: 1; /* Stay on top */
	top: 0;
	left: 0;
	background-color: #9A616D; /* Black*/
	overflow-x: hidden; /* Disable horizontal scroll */
	padding-top: 60px; /* Place content 60px from the top */
	transition: 0.5s;
	/* 0.5 second transition effect to slide in the sidebar */
}

/* The sidebar links */
.sidebar a {
	padding: 8px 8px 8px 32px;
	text-decoration: none;
	font-size: 25px;
	color: white;
	display: block;
	transition: 0.3s;
}

/* When you mouse over the navigation links, change their color */
.sidebar a:hover {
	color: #111;
}

/* Position and style the close button (top right corner) */
.sidebar .closebtn {
	position: absolute;
	top: 0;
	right: 25px;
	font-size: 36px;
	margin-left: 50px;
}

/* The button used to open the sidebar */
.openbtn {
	font-size: 20px;
	cursor: pointer;
	background-color: #9A616D;
	color: white;
	padding: 10px 15px;
	border: none;
}

.openbtn:hover {
	background-color: #444;
}

/* Style page content - use this if you want to push the page content to the right when you open the side navigation */
#main {
	transition: margin-left .5s; /* If you want a transition effect */
	/* padding: 20px; */
}

/* On smaller screens, where height is less than 450px, change the style of the sidenav (less padding and a smaller font size) */
@media screen and (max-height: 450px) {
	.sidebar {
		padding-top: 15px;
	}
	.sidebar a {
		font-size: 18px;
	}
}
</style>
</head>
<body>

	<div id="mySidebar" class="sidebar">
		<a href="javascript:void(0)" class="closebtn" id="closebtn" onclick="closeNav()">&times;</a>
		<a href="/dashBoard">DashBoard</a>
		<a href="/request">Laundry Request</a> 
		<a href="/lundryRequest">Request Status</a>
		<a href="/adminDashBoard">Admin Status</a> 
	</div>

	<nav class="navbar navbar-light" style="background-color: #9A616D">
	<div id="main">
			<button class="openbtn" id="openbtn" onclick="openNav()">&#9776;
	</div>
	<h3 style="text-align: center; color: white">LMS || Land Management System</h3><P>Hi a<a href="/logOut"><img alt="" src="https://cdn-icons-png.flaticon.com/128/1828/1828479.png" style="height: 20px; width: 20px"></a></P>
	</nav>


	<div class="container">
		<div class="row">
			<div class="card text-white bg-primary mb-3" style="max-width: 18rem;">
  <div class="card-header">Header</div>
  <div class="card-body">
    <h5 class="card-title">Primary card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
</div>
<div class="card text-white bg-secondary mb-3 ml-2" style="max-width: 18rem;">
  <div class="card-header">Header</div>
  <div class="card-body">
    <h5 class="card-title">Secondary card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
</div>
<div class="card text-white bg-success mb-3 ml-2" style="max-width: 18rem;">
  <div class="card-header">Header</div>
  <div class="card-body">
    <h5 class="card-title">Success card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
		</div>
	</div>
	<div>
		<h1>Laundry Price Detail (Per Unit)</h1>
		<table border="1" class="table table-stripped">
			<tbody>
				<td><b>Top ware Laundry Price</b></td>
				<td>${price.topWarePrice }</td>
				
			</tbody>
			<tbody>
				<td><b>Buttom Ware Laundry Price</b></td>
				<td>${price.buttomWarePrice }</td>
			</tbody>
			<tbody>
				<td><b>Winter Ware Laundry Price</b></td>
				<td>${price.winterWirePrice }</td>
			</tbody>
		</table>
	</div>

	<script>
		function openNav() {
			document.getElementById("mySidebar").style.width = "250px";
			document.getElementById("main").style.marginLeft = "250px";
		}

		/* Set the width of the sidebar to 0 and the left margin of the page content to 0 */
		function closeNav() {
			document.getElementById("mySidebar").style.width = "0";
			document.getElementById("main").style.marginLeft = "0";
		}
		
		$('#openbtn').click(function(){
			$('#openbtn').hide();
		});
		$('#closebtn').click(function(){
			$('#openbtn').show();
		});
	</script>
</body>
</html>
