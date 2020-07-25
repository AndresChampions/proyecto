<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="001-Inicio.aspx.cs" Inherits="PTC._001_Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Main Page</title>
     <link rel = "stylesheet" type ="text/css" href = "menustyle.css"/>
</head>
<body>
      <form id="form1" runat="server">
         <div class="desplegable">
          <a href= "001-Inicio.aspx"> Main Page</a>
                    <a href ="#"> </a>
                     <a href ="#"> </a>
               <a href= "001-Promo.aspx">Promotions</a>
                      <a href ="#"> </a>
                     <a href ="#"> </a>
               <a href="001-Featured.aspx">Featured Products</a>      
                      <a href ="#"> </a>
                     <a href ="#"> </a>
                <a href= "001-Menus.aspx">Menus</a>
                           <a href ="#"> </a>
                           <a href ="#"> </a>
              <a href= "LoginIngles.aspx"> Sign Off</a>
                           <a href ="#"> </a>
                           <a href ="#"> </a>
        <asp:ImageButton ID="ImageButton1" runat="server" Height="37px" ImageUrl="~/things/spain.png" Width="67px" OnClick="ImageButton1_Click" /> 
                           <br />
           <br />
           <br />
           <br />

                  <div class = "fondo">
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/things/WhatsApp Image 2020-06-05 at 3.07.32 PM.jpeg" Height="468px" Width="944px" />    
     </div>
    </div>
     </form>
</body>
</html>
