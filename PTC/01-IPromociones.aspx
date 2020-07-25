<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="01-IPromociones.aspx.cs" Inherits="PTC._01_IPromociones" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
       <title>Promociones</title>
 
    <link rel = "stylesheet" type ="text/css" href = "menustyle.css"/>
</head>
<body>
   <form id="form1" runat="server">
         <div class="desplegable">
          <a href= "Inicio.aspx"> Página Principal</a>
                    <a href ="#"> </a>
                     <a href ="#"> </a>
               <a href= "01-IPromociones.aspx">Promociones</a>
                      <a href ="#"> </a>
                     <a href ="#"> </a>
               <a href="01-IDestacados.aspx">Destacados</a>      
                      <a href ="#"> </a>
                     <a href ="#"> </a>
               <a href= "01-I-Menus.aspx">Menus</a>
                           <a href ="#"> </a>
                           <a href ="#"> </a>
                <a href= "Login.aspx">Cerrar Sesión</a>
                           <a href ="#"> </a>
                           <a href ="#"> </a>
                   <asp:ImageButton ID="ImageButton1" runat="server" Height="37px" ImageUrl="~/things/usa.png" Width="67px" OnClick="ImageButton1_Click" /> 
     
  </div>
        <br />

                    <div> <table style="width:100%;">
               <tr>
                    <td>Nombre </td>
                    <td> Moneda </td>
                    <td> Precio </td>
                    <td>Imagen </td>
               </tr>

               <tr>
                     <td>Hamburguesa </td>
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
                     <td> Palomitas de Maíz </td>
                     <td> $ </td>
                     <td> 1.50 </td>
                     <td><asp:Image ID="Image3" runat="server" Height="118px" ImageUrl="~/comida/pop.corn.jpg" Width="174px" /> </td>
               </tr>


           <tr>
                     <td> Donas </td>
                     <td> $ </td>
                     <td> 0.99 </td>
                     <td><asp:Image ID="Image4" runat="server" Height="118px" ImageUrl="~/comida/donuts.jpg" Width="174px" /> </td>
               </tr>


            <tr>
                     <td> Helado </td>
                     <td> $ </td>
                     <td> 0.50 </td>
                     <td><asp:Image ID="Image5" runat="server" Height="118px" ImageUrl="~/comida/icecream.jpg" Width="174px" /> </td>
               </tr>


       </table></div>
           </form>
</body>
</html>
