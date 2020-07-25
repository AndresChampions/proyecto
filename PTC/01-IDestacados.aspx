<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="01-IDestacados.aspx.cs" Inherits="PTC._01_IDestacados" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Destacados</title>
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
<br />
                      
        <br />
                       <div> <table style="width:100%;">
               <tr>
                    <td>Nombre </td>
                    <td> Rango </td>
                    <td>Imagen </td>
               </tr>

               <tr>
                     <td>Ensaladas</td>
                     <td> 1° </td>
                     <td><asp:Image ID="Image1" runat="server" Height="118px" ImageUrl="~/comida/dest22.jpg" Width="174px" /> </td>
               </tr>

                <tr>
                     <td>Repollo con ensalasas</td>
                     <td> 2° </td>
                     <td><asp:Image ID="Image2" runat="server" Height="118px" ImageUrl="~/comida/destacados88.jpg" Width="174px" /> </td>
               </tr>

                 
                <tr>
                     <td>Salsas</td>
                     <td> 3° </td>
                     <td><asp:Image ID="Image3" runat="server" Height="118px" ImageUrl="~/comida/dest3.jpg" Width="174px" /> </td>
               </tr>

                <tr>
                     <td>Frutas</td>
                     <td> 4° </td>
                     <td><asp:Image ID="Image4" runat="server" Height="118px" ImageUrl="~/comida/dest5.jpg" Width="174px" /> </td>
               </tr>


                <tr>
                     <td>Pescado</td>
                     <td> 5° </td>
                     <td><asp:Image ID="Image5" runat="server" Height="118px" ImageUrl="~/comida/dest4.jpeg" Width="174px" /> </td>
               </tr>


                 <tr>
                     <td>Vegetales con Frutas</td>
                     <td> 6° </td>
                     <td><asp:Image ID="Image6" runat="server" Height="118px" ImageUrl="~/comida/dest6.jpg" Width="174px" /> </td>
               </tr>

                      
       </table></div>
    </form>
</body>
</html>
