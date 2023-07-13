<?php
session_start();
if(isset($_SESSION["uid"])){
	header("location:profile.php");
}
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>EAS</title>
		<link rel="stylesheet" href="css/bootstrap.min.css"/>
		<script src="js/jquery2.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="main.js"></script>
		<script src="https://kit.fontawesome.com/26504e4a1f.js" crossorigin="anonymous"></script>
		<link rel="stylesheet" type="text/css" href="style.css">
		<link rel="stylesheet" type="text/css" href="instyle.css">
		<style></style>
	</head>
<body>
<div class="wait overlay">
	<div class="loader"></div>
</div>
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">	
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#collapse" aria-expanded="false">
					<span class="sr-only">navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a href="#" class="navbar-brand">EAS</a>
			</div>
		<div class="collapse navbar-collapse" id="collapse">
			<ul class="nav navbar-nav">
				<li><a href="index.php"><span class="glyphicon glyphicon-home"></span>Home</a></li>
				<li><a href="productview.php"><span class="glyphicon glyphicon-modal-window"></span>Equipments</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-shopping-cart"></span>Cart<span class="badge">0</span></a>
					<div class="dropdown-menu" style="width:400px;">
						<div class="panel panel-success">
							<div class="panel-heading">
								<div class="row">
									<div class="col-md-3">Sr.No</div>
									<div class="col-md-3">Equipment Image</div>
									<div class="col-md-3">Equipment Name</div>
									<div class="col-md-3">Equipment Cost(for 1 hr)</div>
								</div>
							</div>
							<div class="panel-body">
								<div id="cart_product">
								<!--<div class="row">
									<div class="col-md-3">Sl.No</div>
									<div class="col-md-3">Product Image</div>
									<div class="col-md-3">Product Name</div>
									<div class="col-md-3">Price in Rs.</div>
								</div>-->
								</div>
							</div>
							<div class="panel-footer"></div>
						</div>
					</div>
				</li>
				<li><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span>SignIn</a>
					<ul class="dropdown-menu">
						<div style="width:300px;">
							<div class="panel panel-primary">
								<div class="panel-heading"><center><h4>Login</h4></center></div>
								<div class="panel-heading">
									<form onsubmit="return false" id="login">
										<label for="email">Email</label>
										<input type="email" class="form-control" name="email" id="email" required/>
										<label for="email">Password</label>
										<input type="password" class="form-control" name="password" id="password" required/>
										<br> 	
										<center>
											<input type="submit" class="btn btn-success" style="float:center; "><br>
											<a href="customer_registration.php?register=1" style="color:white; list-style:none;">New Here! Create an account!</a><br>
											<a href="admin/index.php" style="color:orange; list-style:none;">Login as Vendor</a><br>
										</center>
									</form>
								</div>
								<div class="panel-footer" id="e_msg"></div>
							</div>
						</div>
					</ul>
				</li>
			</ul>
		</div>
	</div>
</div>


<section class="home" id="home" >
	<div class="content">
		<h2>Equipment at Service!</h2>
		<h4>Here, we provide you Perfect experience From Beginning to End for Hiring Quality and Branded Equipments for your service</h4>
	</div>
</section>

<section class="features" id="features">
	<h1 class="heading">Our<span>Features</span></h1>
	<div class="box-container">
		<div class="box">
			<img src="product_images/durablelogo.jpg" alt="">
			<h3>Durability</h3>
			<p>We only supply Durable equipments/products</p>
		</div>

		<div class="box">
			<img src="product_images/qualitylogo.jpg" alt="">
			<h3>Quality Equipments</h3>
			<p>We only provide Quality and Branded products and equipments</p>
		</div>

		<div class="box">
			<img src="product_images/paylogo.jpeg" alt="">
			<h3>Easy Payments</h3>
			<p>Customers get Easy and Secure Payment environment</p>
		</div>
	</div>
</section>

<section class="categories" id="categories">

	<h1 class="heading">Equipment<span>Categories</span></h1>

	<div class="box-container">
		<div class="box">
			<img src="product_images/heavyvehicles-icon-.png" alt="">
			<h3>Heavy Vehicles</h3>
			<a href="productview.php" class="btn">Shop Now</a>
		</div>

		<div class="box">
			<img src="product_images/farmeqlogo.jpg" alt="">
			<h3>Farming Equipments</h3>
			<a href="productview.php" class="btn">Shop Now</a>
		</div>

		<div class="box">
			<img src="product_images/mininglogo.jpg" alt="">
			<h3>Mining Equipments</h3>
			<a href="productview.php" class="btn">Shop Now</a>
		</div>

		<div class="box">
			<img src="product_images/gardenlogo.jpeg" alt="">
			<h3>Gardening Equipments</h3>
			<a href="productview.php" class="btn">Shop Now</a>
		</div>

		<div class="box">
			<img src="product_images/constructlogo.jpg" alt="">
			<h3>Construction Equipments</h3>
			<a href="productview.php" class="btn">Shop Now</a>
		</div>

	</div>	
</section>

<section class="brands" id="brands">

	<h1 class="heading">Top<span>Brands</span></h1>

	<div class="box-container">
		<div class="box">
			<img src="product_images/Mahindra-logo.png" alt="">
			<h3>Mahindra</h3>
			<a href="productview.php" class="btn">Shop Now</a>
		</div>

		<div class="box">
			<img src="product_images/tatalogo.png" alt="">
			<h3>TATA</h3>
			<a href="productview.php" class="btn">Shop Now</a>
		</div>

		<div class="box">
			<img src="product_images/JCB-Logo.jpg" alt="">
			<h3>JCB</h3>
			<a href="productview.php" class="btn">Shop Now</a>
		</div>

		<div class="box">
			<img src="product_images/agtlogo.png" alt="">
			<h3>AGT</h3>
			<a href="productview.php" class="btn">Shop Now</a>
		</div>

		<div class="box">
			<img src="product_images/allogo.png" alt="">
			<h3>Ashok Leyland</h3>
			<a href="productview.php" class="btn">Shop Now</a>
		</div>

		<div class="box">
			<img src="product_images/catlogo.jpeg" alt="">
			<h3>Caterpillar inc</h3>
			<a href="productview.php" class="btn">Shop Now</a>
		</div>

	</div>	
</section>
<br>
<section class="footer">
	<div class="box-container">
		<div class="box">
			<h3>EAS</h3>
			<p class="off"> <i class="fa fa-building-o"></i> IT Dept., GP Jalgaon, Ramanand Nagar, NH-6, Jalgaon</p>
			<div class="share">
				<a href="https://www.facebook.com/lalit.wani.9066?mibextid=ZbWKwL" target="_blank" class="fab fa-facebook-f"></a>
				<a href="https://twitter.com/Lalit3556?t=Pcb6n_mlGkSuQm387fQ3tQ&s=08" target="_blank" class="fab fa-twitter"></a>
				<a href="https://instagram.com/wani_lalit__3556?igshid=ZDdkNTZiNTM=" target="_blank" class="fab fa-instagram"></a>
			</div>
		</div>

		<div class="box">
			<h3>Contact Info</h3>
			<a href="#" class="links"> <i class="fas fa-phone"></i> 7083263513 </a>
			<a href="#" class="links"> <i class="fas fa-phone"></i> 9022683691 </a>
			<a href="#" class="links"> <i class="fas fa-envelope"></i> mahalpureanurag@gmail.com </a> 
			<a href="#" class="links"> <i class="fas fa-map-marker-alt"></i> Jalgaon, India-425001 </a>
		</div>
		
		<div class="box">
			<h3>Quick Links</h3>
			<a href="index.php" class="links"> <i class="fas fa-arrow-right"></i> Home </a>
			<a href="productview.php" class="links"> <i class="fas fa-arrow-right"></i> Equipments </a> 
			<a href="login_form.php" class="links"> <i class="fas fa-arrow-right"></i> Customer Login </a>
			<a href="admin/index.php" class="links"> <i class="fas fa-arrow-right"></i> Admin/Vendor Login </a>
		</div>
	</div>
	<div class="credit">Created by <span>GPJ IT dept. Students </span> | All Rights Reserved </div>
</section>


</body>
</html>