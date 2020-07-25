<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="01-I4.aspx.cs" Inherits="PTC._01_I4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
       <title> Menu 4 </title>
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

        <div class =" titulo">
            <h1> Menu 4 </h1>
             </div>
                      
                <div class ="letras">
                    <asp:Label ID="Label2" runat="server" Text=" Carne Asada con Ensalada " Height="29px" Width="226px"></asp:Label><br />         
        </div>

            <br />
            <br />
            <br />
                 <div class="letters">
           <asp:Button ID="Button1" runat="server" type="submit" Text="$2.05" Width="321px" Height="47px" /> <br />

       <h1> ¿Que incluye? , este delicioso platillo </h1>
       </div>

                    <div class ="buttons">
            <asp:Image ID="Image1" runat="server" ImageAlign="Right" ImageUrl= "~/menus/4.jpg" position="absolute" Height="250px" Width="275px" style="margin-top: 29px; margin-left: 15px;" BorderColor="Yellow" BorderStyle="Double" ForeColor="#0066FF" />
            </div>

            <div class =" cuadros">
     <asp:Label ID="Label1" runat="server" Text=" - Carne Asada  "></asp:Label>
         <br />
     <asp:Label ID="Label8" runat="server" Text="- Tomate "></asp:Label>
         <br />
     <asp:Label ID="Label3" runat="server" Text="- Gaseosa "></asp:Label>
         <br />
     <asp:Label ID="Label4" runat="server" Text="- Lechuga "></asp:Label>
        <br />
     <asp:Label ID="Label5" runat="server" Text="- Pollo "></asp:Label>
         <br />
     <asp:Label ID="Label6" runat="server" Text="- Ensalada Típica "></asp:Label>
         <br />
     <asp:Label ID="Label7" runat="server" Text="- Pan "></asp:Label>
         <br />
     <asp:Label ID="Label9" runat="server" Text="- Salsas "></asp:Label>
         <br />
     <asp:Label ID="Label10" runat="server" Text="- Vegetales "></asp:Label>
         <br />
        </div>

             <br />
             <br />
         </form>
</body>
</html>
