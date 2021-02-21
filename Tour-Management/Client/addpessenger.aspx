<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addpessenger.aspx.cs" Inherits="Client.addpessenger" %>

  

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<html lang="en" runat="server">
<head>
	<title>Destinations</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="Travello template project">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
	<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
	<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
	<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
	<link rel="stylesheet" type="text/css" href="styles/destinations.css">
	<link rel="stylesheet" type="text/css" href="styles/destinations_responsive.css">
	<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="styles/destinations.css">
<link rel="stylesheet" type="text/css" href="styles/destinations_responsive.css">
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.css">

    <link rel="stylesheet" href=" css/style.css ">
	<script>
        var form_num = 0;
        $(document).ready(function () {
            $("a").click(function () {
                form_num++;
                $("input[id='id_form-TOTAL_FORMS']").attr('value', form_num + 1);
                $("form").append("<br/><label for='id_form-" + form_num + "-first_name'>First name:</label> <input id='id_form-" + form_num + "-first_name' type='text' value='' name='form-" + form_num + "-first_name'/> <label for='id_form-" + form_num + "-last_name'>Last name:</label> <input id='id_form-" + form_num + "-last_name' type='text' value='' name='form-" + form_num + "-last_name'/> <label for='id_form-" + form_num + "-age'>Age:</label> <input id='id_form-" + form_num + "-age' type='number' step='1' value='' name='form-" + form_num + "-age'/><br/>");
            });

        });
  </script>
    <style>
        input[type=text],
        select {
            width: 15%;
            padding: 6px 6px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type=number],
        select {
            width: 7%;
            padding: 6px 6px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type=submit] {
            width: 20%;
              background-color: #4CAF50;
              color: white;
              padding: 14px 20px;
              margin: 8px 0;
              border: none;
              border-radius: 4px;
              cursor: pointer;
              position: absolute;
              left : 800px;
        }
        form {
			font-weight :700;
		}
        input[type=submit]:hover {
              background-color: #45a049;
            box-shadow: 5px 7px 8px #888888;
            }
        .date : {
             position: absolute;
             left: 9s00px;

        }
      </style>
</head>
<body>
	
<div class="super_container">
	
	<!-- Header -->

	<header class="header">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="header_content d-flex flex-row align-items-center justify-content-start">
						<div class="header_content_inner d-flex flex-row align-items-end justify-content-start">
							<div class="logo"><a href="index.html">Travello</a></div>
							<nav class="main_nav">
								<ul class="d-flex flex-row align-items-start justify-content-start">
									<li><a href="destinations.aspx">Home</a></li>
									<li><a href="favourite.aspx">Favourite Places</a></li>
								
									<li><a href="contact.html">Contact</a></li>
									<li><a href="logout.aspx">Log-out</a></li>
								</ul>
							</nav>
							<div class="header_phone ml-auto">Call us: 00-56 445 678 33</div>

							<!-- Hamburger -->

							<div class="hamburger ml-auto">
								<i class="fa fa-bars" aria-hidden="true"></i>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="header_social d-flex flex-row align-items-center justify-content-start">
			<ul class="d-flex flex-row align-items-start justify-content-start">
				<li><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
				<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
				<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
				<li><a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
				<li><a href="#"><i class="fa fa-behance" aria-hidden="true"></i></a></li>
				<li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
			</ul>
		</div>
	</header>

	<!-- Menu -->

	<div class="menu">
		<div class="menu_header d-flex flex-row align-items-center justify-content-start">
			<div class="menu_logo"><a href="index.html">Travello</a></div>
			<div class="menu_close_container ml-auto"><div class="menu_close"><div></div><div></div></div></div>
		</div>
		<div class="menu_content">
			<ul>
				<li><a href="inex.html">Home</a></li>
				<li><a href="about.html">About us</a></li>
				<li><a href="#">Services</a></li>
				<li><a href="news.html">News</a></li>
				<li><a href="contact.html">Contact</a></li>
			</ul>
		</div>
		<div class="menu_social">
			<div class="menu_phone ml-auto">Call us: 00-56 445 678 33</div>
			<ul class="d-flex flex-row align-items-start justify-content-start">
				<li><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
				<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
				<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
				<li><a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
				<li><a href="#"><i class="fa fa-behance" aria-hidden="true"></i></a></li>
				<li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
			</ul>
		</div>
	</div>
	
	<!-- Home -->

	<div class="home">
		<div class="background_image" style="background-image:url(images/destinations.jpg)"></div>
	</div>

	<!-- Search -->

	<div class="home_search">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="home_search_container">
						<div class="home_search_title">Search for your trip</div>
						<div class="home_search_content">
							
								<div class="d-flex flex-lg-row flex-column align-items-start justify-content-lg-between justify-content-start">
									<input type="text" class="search_input search_input_1" placeholder="City"  >
									<input type="text" class="search_input search_input_2" placeholder="Departure"  >
									<input type="text" class="search_input search_input_3" placeholder="Arrival"  >
									<input type="text" class="search_input search_input_4" placeholder="Budget"  >
									<button class="home_search_button">search</button>
								</div>
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Destinations -->

	<div class="destination_details_info" id="destinations">
		<div class="container">
			<div class="row">
				<div class="col text-center">
					<div class="section_subtitle">simply amazing places</div>
					<div class="section_title"><h2>Add Pessengers</h2></div>
				</div>
			</div>
			
			<div class="row destinations_row">
				<div class="col">
					<div class="destinations_container item_grid">
                      
						<div>
						<form method="POST" runat="server" >
	  
							<asp:Label ID="Label4" runat="server" Text="Trip Date"></asp:Label>
							&nbsp;&nbsp;&nbsp;
							<asp:TextBox ID="trip_date" runat="server"  TextMode="Date"  placeholder="12-12-2016" ></asp:TextBox></br>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="submit" runat="server"  Text="Add Passenger" OnClick="submit_Click" />
							</br>
							<asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
							<asp:TextBox ID="fname" runat="server"></asp:TextBox>
							<asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
							<asp:TextBox ID="lname" runat="server"></asp:TextBox>
							<asp:Label ID="Label3" runat="server" Text="Age" ></asp:Label>
							<asp:TextBox ID="age" runat="server"></asp:TextBox>

							
       
                            
							<div class="submit_btn">

								<button class="boxed-btn4" style="width:auto" type="button" onclick="window.location.href='payment.aspx'">Book Here</button>
							</div>
								
					   </form>
							
						
						</div>

					</div>
				</div>
			</div>
			
		</div>
	</div>

	<!-- Footer -->

	<footer class="footer">
		<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="images/footer_1.jpg" data-speed="0.8"></div>
		<div class="container">
			<div class="row footer_contact_row">
				<div class="col-xl-10 offset-xl-1">
					<div class="row">

						<!-- Footer Contact Item -->
						<div class="col-xl-4 footer_contact_col">
							<div class="footer_contact_item d-flex flex-column align-items-center justify-content-start text-center">
								<div class="footer_contact_icon"><img src="images/sign.svg" alt=""></div>
								<div class="footer_contact_title">give us a call</div>
								<div class="footer_contact_list">
									<ul>
										<li>Office Landline: +44 5567 32 664 567</li>
										<li>Mobile: +44 5567 89 3322 332</li>
									</ul>
								</div>
							</div>
						</div>

						<!-- Footer Contact Item -->
						<div class="col-xl-4 footer_contact_col">
							<div class="footer_contact_item d-flex flex-column align-items-center justify-content-start text-center">
								<div class="footer_contact_icon"><img src="images/trekking.svg" alt=""></div>
								<div class="footer_contact_title">come & drop by</div>
								<div class="footer_contact_list">
									<ul style="max-width:190px">
										<li>4124 Barnes Street, Sanford, FL 32771</li>
									</ul>
								</div>
							</div>
						</div>

						<!-- Footer Contact Item -->
						<div class="col-xl-4 footer_contact_col">
							<div class="footer_contact_item d-flex flex-column align-items-center justify-content-start text-center">
								<div class="footer_contact_icon"><img src="images/around.svg" alt=""></div>
								<div class="footer_contact_title">send us a message</div>
								<div class="footer_contact_list">
									<ul>
										<li>youremail@gmail.com</li>
										<li>Office@yourbusinessname.com</li>
									</ul>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
		
	</footer>
</div>
		<script src="js/contact.js"></script>
    <script src="js/jquery.ajaxchimp.min.js"></script>
    <script src="js/jquery.form.js"></script>
    <script src="js/jquery.validate.min.js"></script>
    <script src="js/mail-script.js"></script>
	<script src=" js/vendor/modernizr-3.5.0.min.js "></script>
    <script src=" js/vendor/jquery-1.12.4.min.js "></script>
    <script src=" js/popper.min.js "></script>
    <script src=" js/bootstrap.min.js "></script>
    <script src=" js/owl.carousel.min.js "></script>
    <script src=" js/isotope.pkgd.min.js "></script>
    <script src=" js/ajax-form.js "></script>
    <script src=" js/waypoints.min.js "></script>
    <script src=" js/jquery.counterup.min.js "></script>
    <script src=" js/imagesloaded.pkgd.min.js "></script>
    <script src=" js/scrollIt.js "></script>
    <script src=" js/jquery.scrollUp.min.js "></script>
    <script src=" js/wow.min.js "></script>
    <script src=" js/nice-select.min.js "></script>
    <script src=" js/jquery.slicknav.min.js "></script>
    <script src=" js/jquery.magnific-popup.min.js "></script>
    <script src=" js/plugins.js "></script>
    <script src=" js/gijgo.min.js "></script>
    <script src=" js/slick.min.js "></script>



    <!--contact js-->
    <script src=" js/contact.js "></script>
    <script src=" js/jquery.ajaxchimp.min.js "></script>
    <script src=" js/jquery.form.js "></script>
    <script src=" js/jquery.validate.min.js "></script>
    <script src=" js/mail-script.js "></script>


    <script src=" js/main.js "></script>

    <script src="js/main.js"></script>
    <script>
        $('#datepicker').datepicker({
            iconsLibrary: 'fontawesome',
            icons: {
                rightIcon: '<span class="fa fa-caret-down"></span>'
            }
        });
    </script>
<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/Isotope/isotope.pkgd.min.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="js/destinations.js"></script>
		
</body>
</html>
