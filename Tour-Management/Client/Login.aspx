<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Client.Login" %>

<!DOCTYPE html>
<html>

<head>
    <title>LogIn</title>
    <link rel="stylesheet" type="text/css" href="css/login.css">
    <style>
        body {
        background-image: url("images/destination_1.jpg");
        background-size: cover;
        }
    </style>
</head>

<body>
    <div><h2 style="color:white">Tour Management</h2></div>
    <div class="login" data-aos="fade-up" data-aos-once="true">
        
        <h2>Log In Here</h2>
        <form id="loginform" runat="server">
            <label for="username">Username :- </label>
            <input type="text" name="username" id="username" runat="server" placeholder="Enter email or number" autofocus autocomplete required><br>
            <label for="password">Password :- </label><br>
            <input type="password" id="password" name="pass" runat="server" placeholder="Enter Your password" required><br>
            <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
        </form>
        <footer>
            <a href="Registration.aspx">Register new account</a><br>
            <a href="#">Forget Password</a>
        </footer>
        </div>
            <script src="js/apply.js"></script>
</body>

</html>