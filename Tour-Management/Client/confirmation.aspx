<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="confirmation.aspx.cs" Inherits="Client.confirmation" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
     
    <title>Booking confirmed</title>
    <style>
        body{

        background-color :#009999;
        }
        .pipo1 {
        font-size: 50px;
        align :center;
           top: 300px;
            position :absolute;
            left:600px;
        }

        .pipo2{
        font-size:30px;
        align:center;
        top: 360px;
        left:630px;
        position :absolute;
        }
                .pipo3{

        align:center;
        top: 460px;
        left:730px;
        position :absolute;
        }
              
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
    </style>
</head>
<body><center>
<div class="pipo1">
    Booking Confirmed..
</div>
<div class="pipo2" >
    Stay Happy ,Stay Connected.
</div>
    <div>
         <form action="" method="post" runat="server">
        <asp:Button CssClass="favourite" ID="Button1" runat="server" Text="Log-out" OnClick="Button1_Click"></asp:Button>

    </form>
    </div>
   

</center>
</body>
</html>
