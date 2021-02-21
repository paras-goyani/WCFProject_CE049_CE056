<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="Client.payment" %>


<!DOCTYPE html>
<html lang="zxx">
   <head>
      <title>Payment page</title>
          <link rel="shortcut icon" type="image/x-icon" href=" img/pa.png  ">

      <!--meta tags -->
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="keywords" content="Toys Shop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
         Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
      <script>
         addEventListener("load", function () {
         	setTimeout(hideURLbar, 0);
         }, false);
         
         function hideURLbar() {
         	window.scrollTo(0, 1);
         }
      </script>
      <!--//meta tags ends here-->
      <!--booststrap-->
      <link href=" newcss/bootstrap.min.css " rel="stylesheet" type="text/css" media="all">
      <!--//booststrap end-->
      <!-- font-awesome icons -->
      <link href=" newcss/fontawesome-all.min.css " rel="stylesheet" type="text/css" media="all">
      <!-- //font-awesome icons -->
      <!--Shoping cart-->
      <link rel="stylesheet" href=" newcss/shop.css " type="text/css" />
      <!--//Shoping cart-->
      <!--checkout-->
      <link rel="stylesheet" type="text/css" href=" newcss/checkout.css ">
      <!--//checkout-->
      <link href=" newcss/easy-responsive-tabs.css " rel='stylesheet' type='text/css' />
      <!--stylesheets-->
      <link href=" newcss/style.css " rel='stylesheet' type='text/css' media="all">
      <!--//stylesheets-->
      <link href="//fonts.googleapis.com/css?family=Sunflower:500,700" rel="stylesheet">
      <link href="//fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
      <style>

          .button {
  border-radius: 4px;
  background-color: #29a3a3;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 28px;
  padding: 20px;
  width: 200px;
  
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}

          .pipo1 {
           width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
        }
          table {
              border: 1px solid #29a3a3;
            }
          th {
              background-color: #29a3a3;
              color: white;
            }
          
        .pipo2 {
           width: 50px;
            padding: 6px 6px;
            margin: 8px 0;
        }
        input[type=submit] {
            width: 250px;
            background-color: #000000;
            border: none;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            margin: 4px 2px;
            cursor: pointer;
            font-size: 20px;
            align : center;

        }

        input[type=submit]:hover {
            background-color: #363030;
        }
      </style>
   </head>
   <body background="#006699">
      <!--headder-->

      <!--//headder-->
      <!-- banner -->

      <!-- short -->
      <div class="using-border py-3" style="background-color: #29a3a3;">
         <div class="inner_breadcrumb  ml-4" style="background-color: #29a3a3;">
            <ul class="short_ls" style="background-color: #29a3a3;">
               <li>

                  <span style="font-size :20px;">Travello</span>
               </li>

            </ul>
         </div>
      </div>
      <!-- //short-->
      <!-- top Products -->
      <section class="checkout py-lg-4 py-md-3 py-sm-3 py-3">
         <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
            <div class="ads-grid_shop">
               <div class="shop_inner_inf">
                  <div class="privacy about">
                     <h3>Pay<span>ment</span></h3>
                     <!--/tabs-->
                     <div class="responsive_tabs">
                        <div id="horizontalTab">
                           <ul class="resp-tabs-list">
                              <li>Passengers Info.</li>
                              <li>Total Payments</li>
                              
                           </ul>
                           <div class="resp-tabs-container">
                              <!--/tab_one-->
                              <div class="tab1">
                                 <div class="tab1">
                                 <div class="pay_info">
                                    <div class="vertical_post check_box_agile">

                                        <div class="b">
                                            <table>
                                                <th colspan="3">Passenger List</th>
                                                <th></th>
                                                <th></th>
                                            </table>

                                        </div>

                                       <table style="height: 200px;" width="488" border="1">
                                          
                                                   
                                               
                                           

                                          <tbody>
                                          <tr>
                                          <th style="width: 156px;">First name</th>
                                          <th style="width: 156px;">Last name</th>
                                          <th style="width: 156px;">email</th>
                                          </tr>

                                            <%foreach (var p in passengers)
                                            {%>
                                           <tr>
                                               <td style="width: 156px;"><%=p.fname %></td>          
                                                <td style="width: 156px;"><%=p.lname %></td>
                                               <td style="width: 156px;"><%=p.email %></td>
                                           </tr>
                                           <% } %>

                                         
                                          </tbody>
                                          </table>
                                    </div>
                                 </div>
                              </div>
                              </div>
                              <!--//tab_one     onclick="window.location.href='pessanger_detail_def/card_payment'"  -->
                              
                               <div class="tab2">

                                   <table style="height: 200px;" width="488" border="1">
                                          <tbody>
                                          <tr>
                                          <th style="width: 156px;">No. of Passengers</th>
                                          <th style="width: 156px;">Amount per person</th>
                                          
                                          </tr>

                                           <tr>
                                               <td style="width: 156px;"><%= nofpassenger %></td>          
                                                <td style="width: 156px;"><%= place.price %></td>
                                               
                                           </tr>
                                           <tr>
                                               <td style="width: 156px; font-weight :bolder">Total Amount</td>          
                                               <td style="width: 156px; font-weight :bolder"><%= totalamount %></td>
                                               
                                           </tr>

                                         
                                          </tbody>
                                          </table></br>
                                   <form action="/confirmation.aspx" runat="server" method="post">
                                   <button class="button"><span>Pay Now </span></button>
                                   
                                       
                                   </form>
                                   
                              </div>
                           </div>
                        </div>
                     </div>
                     <!--//tabs-->
                  </div>
               </div>
               <!-- //payment -->
               <div class="clearfix"></div>
            </div>
         </div>
      </section>
     

      <!-- //footer -->
      <!-- Modal 1-->
      <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
         <div class="modal-dialog" role="document">
            <div class="modal-content">
               <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">Login</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                  </button>
               </div>
               <div class="modal-body">
                  <div class="register-form">
                     <form action="#" method="post">
                        <div class="fields-grid">
                           <div class="styled-input">
                              <input type="text" placeholder="Your Name" name="Your Name" required="">
                           </div>
                           <div class="styled-input">
                              <input type="email" placeholder="Your Email" name="Your Email" required="">
                           </div>
                           <div class="styled-input">
                              <input type="password" placeholder="password" name="password" required="">
                           </div>
                           <button type="submit" class="btn subscrib-btnn">Login</button>
                        </div>
                     </form>
                  </div>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <!-- //Modal 1-->
      <!--js working-->
      <script src=" newjs/jquery-2.2.3.min.js "></script>
      <!--//js working-->
      <!-- cart-js -->
      <script src=" newjs/minicart.js "></script>
      <script>
         toys.render();
         
         toys.cart.on('toys_checkout', function (evt) {
         	var items, len, i;
         
         	if (this.subtotal() > 0) {
         		items = this.items();
         
         		for (i = 0, len = items.length; i < len; i++) {}
         	}
         });
      </script>
      <!--// cart-js -->
      <!-- easy-responsive-tabs -->
      <script src=" newjs/easy-responsive-tabs.js "></script>
      <script>
         $(document).ready(function () {
         	$('#horizontalTab').easyResponsiveTabs({
         		type: 'default', //Types: default, vertical, accordion           
         		width: 'auto', //auto or any width like 600px
         		fit: true, // 100% fit in a container
         		closed: 'accordion', // Start closed if in accordion view
         		activate: function (event) { // Callback function if tab is switched
         			var $tab = $(this);
         			var $info = $('#tabInfo');
         			var $name = $('span', $info);
         			$name.text($tab.text());
         			$info.show();
         		}
         	});
         	$('#verticalTab').easyResponsiveTabs({
         		type: 'vertical',
         		width: 'auto',
         		fit: true
         	});
         });
      </script>
      <!-- credit-card -->
      <script src=" newjs/creditly.js "></script>
      <link rel="stylesheet" href=" newcss/creditly.css " type="text/css" media="all" />
      <script>
         $(function () {
         	var creditly = Creditly.initialize(
         		'.creditly-wrapper .expiration-month-and-year',
         		'.creditly-wrapper .credit-card-number',
         		'.creditly-wrapper .security-code',
         		'.creditly-wrapper .card-type');
         
         	$(".creditly-card-form .submit").click(function (e) {
         		e.preventDefault();
         		var output = creditly.validate();
         		if (output) {
         			// Your validated credit card output
         			console.log(output);
         		}
         	});
         });
      </script>
      <!-- //credit-card -->
      <!-- start-smoth-scrolling -->
      <script src=" newjs/move-top.js "></script>
      <script src=" newjs/easing.js "></script>
      <script>
         jQuery(document).ready(function ($) {
         	$(".scroll").click(function (event) {
         		event.preventDefault();
         		$('html,body').animate({
         			scrollTop: $(this.hash).offset().top
         		}, 900);
         	});
         });
      </script>
      <!-- start-smoth-scrolling -->
      <!-- here stars scrolling icon -->
      <script>
         $(document).ready(function () {
         
         	var defaults = {
         		containerID: 'toTop', // fading element id
         		containerHoverID: 'toTopHover', // fading element hover id
         		scrollSpeed: 1200,
         		easingType: 'linear'
         	};
         	$().UItoTop({
         		easingType: 'easeOutQuart'
         	});
         
         });
      </script>
      <!-- //here ends scrolling icon -->
      <!--bootstrap working-->
      <script src=" newjs/bootstrap.min.js "></script>
      <!-- //bootstrap working-->
   </body>
</html>
