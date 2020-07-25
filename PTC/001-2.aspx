<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="001-2.aspx.cs" Inherits="PTC._001_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title> Second Menu </title>
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
            <h1> Menu 2 </h1>
             </div>

                <div class ="letras">
                    <asp:Label ID="Label2" runat="server" Text=" Salad " Height="29px" Width="226px"></asp:Label><br />         
        </div>

            <br />
            <br />
            <br />
                 <div class="letters">
           <asp:Button ID="Button1" runat="server" type="submit" Text="$2.50" Width="321px" Height="47px" /> <br />

       <h1> Ingredients :  </h1>
       </div>

                    <div class ="buttons">
            <asp:Image ID="Image1" runat="server" ImageAlign="Right" ImageUrl= "~/menus/2.jpg" position="absolute" Height="250px" Width="275px" style="margin-top: 29px; margin-left: 15px;" BorderColor="#FF3300" BorderStyle="Double" ForeColor="#0066FF" />
            </div>

            <div class =" cuadrro">
     <asp:Label ID="Label1" runat="server" Text=" - Pickled vegetables  "></asp:Label>
         <br />
     <asp:Label ID="Label8" runat="server" Text="- Rice "></asp:Label>
         <br />
     <asp:Label ID="Label3" runat="server" Text="- Onion"></asp:Label>
         <br />
     <asp:Label ID="Label4" runat="server" Text="- Cucumber "></asp:Label>
        <br />
     <asp:Label ID="Label5" runat="server" Text="- Carrot "></asp:Label>
         <br />
     <asp:Label ID="Label6" runat="server" Text="- Cheese "></asp:Label>
         <br />
     <asp:Label ID="Label7" runat="server" Text="- broccoli"></asp:Label>
         <br />
     <asp:Label ID="Label9" runat="server" Text="-(Extra)Soip "></asp:Label>
         <br />
        </div>

             <br />
             <br />
         </form>
</body>
</html>
