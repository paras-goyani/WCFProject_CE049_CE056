<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Client.Registration" %>

<!DOCTYPE html>
<html>

<head>
    <title>Registration</title>
    <link rel="stylesheet" type="text/css" href="css/Registration.css">
    <style type="text/css">
    body {
        background-image: url("images/destination_1.jpg");
        background-size: cover;

    }
    </style>
</head>

<body>
    <div class="reg">
        <h2>Create New Account</h2>
        <form id="regform" runat="server">
            
            <label for="firstname">FirstName</label><br>
            <input type="text" name="firstname" id="firstname" required runat="server" placeholder="Enter FirstName" ><br>
            <label for="lastname">LastName</label><br>
            <input type="text" name="lastname" id="lastname" required runat="server" placeholder="Enter LastName" ><br>
            <label for="email">EmailId</label><br>
            <input type="email" name="email" id="email" required placeholder="Enter email" runat="server"><br>
            <label for="password">Password</label><br>
            <input type="password" name="password" id="password" required runat="server" placeholder="Enter Password"><br>
            <label for="repassword">Confirm Password</label><br>
            <input type="password" name="repassword" id="repassword" required runat="server" placeholder="Confirm password"><br>
            <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
        </form>
        <footer>
            <a href="login.aspx">Already have an account ?</a>
        </footer>
    </div>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="js/apply.js"></script>
</body>

</html>