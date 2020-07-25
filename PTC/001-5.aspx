<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="001-5.aspx.cs" Inherits="PTC._001_5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Fifth Menu</title>
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
         
        </div>
       <div class =" titulo">
            <h1> Fifth Menu  </h1>
        </div>
                         
     
                <div class ="letras">
                    <asp:Label ID="Label2" runat="server" Text=" Sandwich " Height="29px" Width="226px"></asp:Label><br />         
        </div>

            <br />
            <br />
            <br />
                 <div class="letters">
           <asp:Button ID="Button1" runat="server" type="submit" Text="$1.45" Width="321px" Height="47px" /> <br />

       <h1> What does it include? This sandwich. </h1>
       </div>

                    <div class ="buttons">
            <asp:Image ID="Image1" runat="server" ImageAlign="Right" ImageUrl= "~/menus/5.jpg" position="absolute" Height="250px" Width="275px" style="margin-top: 29px; margin-left: 15px;" BorderColor="#003300" BorderStyle="Double" ForeColor="#0066FF" />
            </div>

            <div class =" cuadross">
     <asp:Label ID="Label1" runat="server" Text=" - Wholemeal Bread or Boxed Bread  "></asp:Label>
         <br />
     <asp:Label ID="Label8" runat="server" Text="- Fried Egg "></asp:Label>
         <br />
     <asp:Label ID="Label3" runat="server" Text="- Tomatoes "></asp:Label>
         <br />
     <asp:Label ID="Label4" runat="server" Text="- Lettuce "></asp:Label>
        <br />
     <asp:Label ID="Label5" runat="server" Text="- Chicken "></asp:Label>
         <br />
     <asp:Label ID="Label6" runat="server" Text="- Dips "></asp:Label>
         <br />
          <asp:Label ID="Label9" runat="server" Text="- Ham "></asp:Label>
         <br />
     <asp:Label ID="Label10" runat="server" Text="- Cheese "></asp:Label>
         <br />
     <asp:Label ID="Label7" runat="server" Text="- Includes : Soda or Juice "></asp:Label>
         <br />

        </div>

             <br />
             <br />
         </form>
</body>
</html>
