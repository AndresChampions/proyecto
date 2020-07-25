<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="001-Featured.aspx.cs" Inherits="PTC._001_Featured" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Featured</title>
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
<br />
                      
        <br />
                       <div> <table style="width:100%;">
               <tr>
                    <td>Name </td>
                    <td> Range </td>
                    <td>Image </td>
               </tr>

               <tr>
                     <td> Salad</td>
                     <td> 1° </td>
                     <td><asp:Image ID="Image1" runat="server" Height="118px" ImageUrl="~/comida/dest22.jpg" Width="174px" /> </td>
               </tr>

                <tr>
                     <td>Cabbage with Salads</td>
                     <td> 2° </td>
                     <td><asp:Image ID="Image2" runat="server" Height="118px" ImageUrl="~/comida/destacados88.jpg" Width="174px" /> </td>
               </tr>

                 
                <tr>
                     <td>Sauces</td>
                     <td> 3° </td>
                     <td><asp:Image ID="Image3" runat="server" Height="118px" ImageUrl="~/comida/dest3.jpg" Width="174px" /> </td>
               </tr>

                <tr>
                     <td>Fruits</td>
                     <td> 4° </td>
                     <td><asp:Image ID="Image4" runat="server" Height="118px" ImageUrl="~/comida/dest5.jpg" Width="174px" /> </td>
               </tr>


                <tr>
                     <td>Fish</td>
                     <td> 5° </td>
                     <td><asp:Image ID="Image5" runat="server" Height="118px" ImageUrl="~/comida/dest4.jpeg" Width="174px" /> </td>
               </tr>


                 <tr>
                     <td>Vegetables with Fruit</td>
                     <td> 6° </td>
                     <td><asp:Image ID="Image6" runat="server" Height="118px" ImageUrl="~/comida/dest6.jpg" Width="174px" /> </td>
               </tr>

                      
       </table></div>
    </form>
</body>
</html>
