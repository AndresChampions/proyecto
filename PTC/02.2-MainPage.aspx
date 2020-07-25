<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="02.2-MainPage.aspx.cs" Inherits="PTC._02__2_MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link rel = "stylesheet" type ="text/css" href = "login.css"/>
      <link rel = "stylesheet" type ="text/css" href = "menustyle.css"/>
    <link rel = "stylesheet" type ="text/css" href = "crudstyle.css"/>
    <title> Main Page </title>
</head>
<body>
    <form id="form1" runat="server">
       <div class="menuarriba">
                  <asp:Button ID="Button2" runat="server" Text="Main Page" OnClick="Button2_Click" Height="48px" Width="162px" />
                  <asp:Button ID="Button3" runat="server" Text="Add Food" OnClick="Button3_Click" Height="48px" Width="162px" />
                  <asp:Button ID="Button4" runat="server" Text="Edit Food" OnClick="Button4_Click" Height="48px" Width="162px" />
                  <asp:Button ID="Button1" runat="server" Text="Log out" OnClick="Button1_Click" Height="48px" Width="162px" />     
             <asp:ImageButton ID="ImageButton1" runat="server" Height="48px" ImageUrl="~/things/spain.png" Width="115px" OnClick="ImageButton1_Click" /> 
                     <div class = "fondo">
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/things/WhatsApp Image 2020-06-05 at 3.07.32 PM.jpeg" Height="468px" Width="944px" />    
     </div>
  </div>
          
    </form>
</body>
</html>
