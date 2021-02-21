<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="update.aspx.cs" Inherits="Client.update" %>

<!DOCTYPE html>
<html>

<head>
    <title>Update Place</title>
    <link rel="stylesheet" type="text/css" href="css/Registration.css">
    <style type="text/css">
    body {
        background-image: url("images/destination_1.jpg");
        background-size: cover;
            
    }
    </style>
</head>

<body>
    <div class="reg" style="height:500px;">
        <h2>Update Place</h2>
        <form id="regform" runat="server">
            
            <label for="name">Place Name</label><br>
            <input type="text" name="name" id="name" required runat="server" placeholder="Place Name" ><br>
            <label for="price">Price</label><br>
            <input type="text" name="price" id="price" required runat="server" placeholder="Price" ><br>
            <label for="description">Description</label><br>
            <input type="text" name="description" id="description" required placeholder="Description" runat="server"><br>
            <label for="FileUpload1">Photo</label><br><br />
            <asp:FileUpload ID="FileUpload1" runat="server" /><br />    
            <asp:Button ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" />
        </form>
    </div>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="js/apply.js"></script>
</body>

</html>