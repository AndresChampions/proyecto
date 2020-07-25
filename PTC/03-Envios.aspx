<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="03-Envios.aspx.cs" Inherits="PTC._03_Envios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
         <link rel = "stylesheet" type ="text/css" href = "login.css"/>
      <link rel = "stylesheet" type ="text/css" href = "menustyle.css"/>
    <link rel = "stylesheet" type ="text/css" href = "crudstyle.css"/>
    <title> Envios</title>
</head>
<body>
    <form id="form1" runat="server">
         <div class="desplegable">
          <a href= "03-Inicio.aspx"> Página Principal </a>
                    <a href ="#"> </a>
                     <a href ="#"> </a>
               <a href= "03-Envios.aspx">Envios AHORA</a>
                      <a href ="#"> </a>
                     <a href ="#"> </a>
                <a href= "LoginDeli.aspx">Cerrar Sesión</a>
                           <a href ="#"> </a>
                           <a href ="#"> </a>
   <asp:ImageButton ID="ImageButton1" runat="server" Height="37px" ImageUrl="~/things/usa.png" Width="67px" OnClick="ImageButton1_Click" /> 
          
            
</div>  

 <div class="delivery">
     <asp:Image ID="Image1" runat="server" ImageUrl="~/things/map.jpg" Height="627px" Width="956px" />


     <div class="space1">
           <asp:Label ID="Label2" runat="server" Text=" Tienes 1 pedido para llevar "></asp:Label>
     </div>
   

     <div class ="space">
         <asp:Label ID="Label1" runat="server" Text="Restaurante Spicy Delicius Food"></asp:Label>
     </div>


     <div class = "space2">
        <h1>Dirección : </h1> <br /> <br />
        <asp:Label ID="Label3" runat="server" Text="Colonia Escalon Pasaje 22 Norte , Calle Carretas , Casa 88A "></asp:Label>
       </div>



     </div>
    </form>
</body>
</html>
