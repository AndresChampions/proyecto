<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="001-Promo.aspx.cs" Inherits="PTC._001_Promo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Promotions</title>
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
       <br />

                    <div> <table style="width:100%;">
               <tr>
                    <td>Name </td>
                    <td> Currency </td>
                    <td> Price </td>
                    <td>Image </td>
               </tr>

               <tr>
                     <td>Burger </td>
                     <td> $ </td>
                     <td> 1.99 </td>
                     <td><asp:Image ID="Image1" runat="server" Height="118px" ImageUrl="~/comida/burger.jpg" Width="174px" /> </td>
               </tr>

               <tr>
                     <td> Pizza</td>
                     <td> $ </td>
                     <td> 1.99 </td>
                     <td><asp:Image ID="Image2" runat="server" Height="118px" ImageUrl="~/comida/pizza.jpg" Width="174px" /> </td>
               </tr>

               <tr>
                     <td> Pop-Corn </td>
                     <td> $ </td>
                     <td> 1.50 </td>
                     <td><asp:Image ID="Image3" runat="server" Height="118px" ImageUrl="~/comida/pop.corn.jpg" Width="174px" /> </td>
               </tr>


           <tr>
                     <td> Donuts </td>
                     <td> $ </td>
                     <td> 0.99 </td>
                     <td><asp:Image ID="Image4" runat="server" Height="118px" ImageUrl="~/comida/donuts.jpg" Width="174px" /> </td>
               </tr>


            <tr>
                     <td> Ice-Cream </td>
                     <td> $ </td>
                     <td> 0.50 </td>
                     <td><asp:Image ID="Image5" runat="server" Height="118px" ImageUrl="~/comida/icecream.jpg" Width="174px" /> </td>
               </tr>


       </table></div>
           </form>
</body>
</html>
