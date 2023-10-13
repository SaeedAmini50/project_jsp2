<%@page import="project.ConnectionProvider" %>
<%@page errorPage="error.jsp"  %>
<%@page import="java.sql.*"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page pageEncoding="UTF-8" %>
    
 
<!DOCTYPE html>
<html>
<head>





<meta charset="ISO-8859-1">
<title>header</title>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<title>SmartStor Template</title>

<!-- Bootstrap -->
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>

<!-- Slick -->
<link type="text/css" rel="stylesheet" href="css/slick.css"/>
<link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>

<!-- nouislider -->
<link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>

<!-- Font Awesome Icon -->
<link rel="stylesheet" href="css/font-awesome.min.css">

<!-- Custom stlylesheet -->
<link type="text/css" rel="stylesheet" href="css/style.css"/>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->

</head>
<body>
   <div id="store" class="col-md-3">
						<!-- aside Widget -->
						<div class="aside">
							<h3 class="aside-title">Brand</h3>
							<div class="checkbox-filter">
							<form>
								<div class="input-radio">
									<input type="radio" name="search_product" value="samsung" onchange="search()" id="brand-7">
									<label for="brand-7">
										<span></span>
										SAMSUNG
										<small>(578)</small>
									</label>
								</div>
								<div class="input-radio">
									<input type="radio" name="search_product" value="LG" onchange="search()" id="brand-8">
									<label for="brand-8">
										<span></span>
										LG
										<small>(125)</small>
									</label>
								</div>
								<div class="input-radio">
									<input type="radio" name="search_product" value="sony" onchange="search()" id="brand-9">
									<label for="brand-9">
										<span></span>
										SONY
										<small>(755)</small>
									</label>
								</div>
								<div class="input-radio">
									<input type="radio" name="search_product" value="panasonic" onchange="search()" id="brand-10">
									<label for="brand-10">
										<span></span>
										 panasonic
										<small>(578)</small>
									</label>
								</div>
								<div class="input-radio">
									<input type="radio" name="search_product" value="philips" onchange="search()" id="brand-11">
									<label for="brand-11">
										<span></span>
										philips
										<small>(125)</small>
									</label>
								</div>
									<div class="input-radio">
									<input type="radio" name="search_product" value="BLAUPUNKT" onchange="search()" id="brand-12">
									<label for="brand-12">
										<span></span>
										BLAUPUNKT
										<small>(125)</small>
									</label>
								</div>
									<div class="input-radio">
									<input type="radio" name="search_product" value="TCL" onchange="search()"id="brand-13">
									<label for="brand-13">
										<span></span>
										TCL
										<small>(125)</small>
									</label>
								</div>
								<div class="input-radio">
									<input type="radio" name="search_product" value="toshiba" onchange="search()" id="brand-14">
									<label for="brand-14">
										<span></span>
										TOSHIBA
										<small>(755)</small>
									</label>
								</div>
									<div class="input-radio">
									<input type="radio" name="search_product" value="EKO" onchange="search()" id="brand-15">
									<label for="brand-15">
										<span></span>
									EKO
										<small>(755)</small>
									</label>
								</div>
								
								</form>
															</div>
						</div>
						
						
   
   
   
						
						<!-- aside Widget -->
						<div class="aside">
							<h3 class="aside-title">Size</h3>
							<div class="checkbox-filter">
								<div class="input-radio">
									<input type="radio" name="search_product" value="7 kg" onchange="search()" id="brand-1">
									<label for="brand-1">
										<span></span>
										7 kg
										<small>(578)</small>
									</label>
								</div>
								<div class="input-radio">
									<input type="radio" name="search_product" value="7.5 kg" onchange="search()" id="brand-2">
									<label for="brand-2">
										<span></span>
										7.5 kg
										<small>(125)</small>
									</label>
								</div>
								<div class="input-radio">
									<input type="radio" name="search_product" value="8 kg" onchange="search()" id="brand-3">
									<label for="brand-3">
										<span></span>
								8 kg
										<small>(755)</small>
									</label>
								</div>
								<div class="input-radio">
									<input type="radio" name="search_product" value="9 kg" onchange="search()" id="brand-4">
									<label for="brand-4">
										<span></span>
									9 kg
										<small>(578)</small>
									</label>
								</div>
								<div class="input-radio">
									<input type="radio" name="search_product" value="12 kg" onchange="search()" id="brand-5">
									<label for="brand-5">
										<span></span>
									12 kg
										<small>(125)</small>
									</label>
								</div>
							
							</div>
						</div>
					
						<!-- /aside Widget -->

						
						<!-- aside Widget -->
						<div class="aside">
							<h3 class="aside-title">Size</h3>
							<div class="checkbox-filter">
								<div class="input-radio">
									<input type="radio" name="search_product" value="32 inch" onchange="search()" id="brand-1">
									<label for="brand-1">
										<span></span>
										32 inch
										<small>(578)</small>
									</label>
								</div>
								<div class="input-radio">
									<input type="radio" name="search_product" value="40 inch" onchange="search()" id="brand-5">
									<label for="brand-5">
										<span></span>
									40 inch
										<small>(125)</small>
									</label>
								</div>
								<div class="input-radio">
									<input type="radio" name="search_product" value="43 inch" onchange="search()" id="brand-2">
									<label for="brand-2">
										<span></span>
										43 inch
										<small>(125)</small>
									</label>
								</div>
								<div class="input-radio">
									<input type="radio" name="search_product" value="50 inch" onchange="search()" id="brand-3">
									<label for="brand-3">
										<span></span>
								50 inch
										<small>(755)</small>
									</label>
								</div>
								<div class="input-radio">
									<input type="radio" name="search_product" value="55 inch" onchange="search()" id="brand-4">
									<label for="brand-4">
										<span></span>
									55 inch
										<small>(578)</small>
									</label>
								</div>
								<div class="input-radio">
									<input type="radio" name="search_product" value="65 inch" onchange="search()" id="brand-5">
									<label for="brand-5">
										<span></span>
									65 inch
										<small>(125)</small>
									</label>
								</div>
							
							</div>
						</div>
						
						<!-- /aside Widget -->
	</div>

			

</body>
</html>