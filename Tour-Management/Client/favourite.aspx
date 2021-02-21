<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="favourite.aspx.cs" Inherits="Client.favourite" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<html lang="en" runat="server">
<head>
<title>Favourite</title>
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
</head>
<style>
	.favourite{
			border-radius: 10px;
			font-size: 15px;
			
			 width:auto;
			 height :auto;
			background-color: #4CAF50;
			  color: white;
			 border: 2px solid #4CAF50; /* Green */
		}
</style>
	
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

	<div class="destinations" id="destinations">
		<div class="container">
			<div class="row">
				<div class="col text-center">
					<div class="section_subtitle">simply amazing places</div>
					<div class="section_title"><h2>Your Favourite Places</h2></div>
				</div>
			</div>
			<div class="row destination_sorting_row">
				<div class="col">
					<div class="destination_sorting d-flex flex-row align-items-start justify-content-start">
						<div class="sorting">
							<ul class="item_sorting">
								<li>
									<span class="sorting_text">Sort By</span>
									<i class="fa fa-chevron-down" aria-hidden="true"></i>
									<ul>
										<li class="product_sorting_btn" data-isotope-option='{ "sortBy": "original-order" }'><span>Show All</span></li>
										<li class="product_sorting_btn" data-isotope-option='{ "sortBy": "price" }'><span>Price</span></li>
										<li class="product_sorting_btn" data-isotope-option='{ "sortBy": "name" }'><span>Name</span></li>
									</ul>
								</li>
								<li>
									<span class="sorting_text">Categories</span>
									<i class="fa fa-chevron-down" aria-hidden="true"></i>
									<ul>
										<li class="num_sorting_btn"><span>Category</span></li>
										<li class="num_sorting_btn"><span>Category</span></li>
										<li class="num_sorting_btn"><span>Category</span></li>
									</ul>
								</li>
							</ul>
						</div>
						<div class="sort_box ml-auto"><i class="fa fa-th" aria-hidden="true"></i></div>
					</div>
				</div>
			</div>
            
			<div class="row destinations_row">
				<div class="col">
					<div class="destinations_container item_grid">

                        <form method="post" runat="server">
                        <%-- <asp:Repeater ID="Repeater1" runat="server">
							<ItemTemplate>
								
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
								<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
								<div class="destination item">
									<div class="destination_image">
										
                                        
                                        <asp:ImageButton ID="ImageButton2" runat="server"  OnCommand="ImageButton2_Command" ImageUrl='<%# String.Format("images/{0}", Eval("imagepath"))%>' CommandArgument='<%# Eval("placeid")%>'/>
										<div class="spec_offer text-center"><a href="#">Special Offer</a></div>
									</div>
									<div class="destination_content">
										<div class="destination_title"><a href="#"><%# Eval("name") %></a></div>
										
										<div class="buttons">
									
												<div class="buttons_container d-flex flex-row align-items-start justify-content-start">
													<div class="button" runat="server">
														<asp:Button ID="Button1"   runat="server" Text="Button" CommandName="ThisBtnClick"  onCommand="Button1_Command" CommandArgument='<%# Eval("placeid")%>' OnClick="Button1_Click" /></div>
                                        
												</div>
									
										</div>
										
                           

										<div class="destination_subtitle"><p><%# Eval("desc") %></p></div>
										<div class="destination_price">From <%# Eval("price") %></div>
										<div class="destination_list">
											<ul>
												<li>5 Stars Hotel</li>
												<li>All Inclusive</li>
												<li>Flight tickets included</li>
												<li>Guided visits</li>
											</ul>
										</div>
									</div>
								</div>
							</ItemTemplate>

                        </asp:Repeater>--%>


							<asp:Repeater ID="Repeater1" runat="server">
							<ItemTemplate>
								


								<div class="destination item">
									<div class="destination_image">
										<img src="images/<%# Eval("imagepath") %>" alt="">
										
									</div>
									<div class="destination_content">
                                        <div class="row">
											<div class="destination_title"><a href="#"><%# Eval("name") %></a></div>		
                                        </div>
										
									
												<div class="buttons_container d-flex flex-row align-items-start justify-content-start">
													
														<asp:Button CssClass="favourite" ID="Button2"   runat="server" Text="See Detail" CommandName="ThisBtnClick"  OnCommand="ImageButton2_Command" CommandArgument='<%# Eval("placeid")%>' OnClick="Button1_Click" />
                                        
											
									
										</div>
										<div class="destination_subtitle"><p><%# Eval("desc") %></p></div>
										<div class="destination_price">From <%# Eval("price") %></div>
										<div class="destination_list">
											<ul>
												<li>5 Stars Hotel</li>
												<li>All Inclusive</li>
												<li>Flight tickets included</li>
												<li>Guided visits</li>
											</ul>
										</div>
									</div>
								</div>
							</ItemTemplate>

                        </asp:Repeater>


						</form>

					</div>
				</div>
			</div>
			<div class="row load_more_row">
				<div class="col">
					<div class="button load_more_button"><a href="#">load more</a></div>
				</div>
			</div>
		</div>
	</div>

	<!-- Footer -->

	<footer class="footer">
		<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="images/footer_1.jpg" data-speed="0.8"></div>
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="newsletter">
						<div class="newsletter_title_container text-center">
							<div class="newsletter_title">Subscribe to our newsletter to get the latest trends & news</div>
							<div class="newsletter_subtitle">Join our database NOW!</div>
						</div>
						<div class="newsletter_form_container">
							
								<div class="d-flex flex-md-row flex-column align-items-start justify-content-between">
									<div><input type="text" class="newsletter_input newsletter_input_name" id="newsletter_input_name" placeholder="Name"  ><div class="input_border"></div></div>
									<div><input type="email" class="newsletter_input newsletter_input_email" id="newsletter_input_email" placeholder="Your e-mail"  ><div class="input_border"></div></div>
								</div>
								<div><button class="newsletter_button">subscribe</button></div>
							
						</div>
					</div>
				</div>
			</div>
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
		<div class="col text-center"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --> </div>
	</footer>
</div>

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
