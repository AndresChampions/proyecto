<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="1ing.aspx.cs" Inherits="PTC._1ing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link rel = "stylesheet" type ="text/css" href = "login.css"/>
    <title> Start </title>
</head>
<body>
    <form id="form1" runat="server">
        <div class ="style3">
             <asp:ImageButton ID="ImageButton1" runat="server" Height="37px" ImageUrl="~/things/spain.png" Width="67px" OnClick="ImageButton1_Click" /> 
             <br />
             <br />
               <h1> How you can Login? click on the button</h1>
         
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="User" Height="93px" Width="336px" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="Restaurant" Height="93px" Width="336px" OnClick="Button2_Click" />
            <br />
            <br />

            <asp:Button ID="Button3" runat="server" Text="Delivery" Height="93px" Width="336px" OnClick="Button3_Click" />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
