<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="01-I5.aspx.cs" Inherits="PTC._01_I5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title> Menu 5 </title>
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
            <h1> Menu 5 </h1>
        </div>
                         
     
                <div class ="letras">
                    <asp:Label ID="Label2" runat="server" Text=" Sandwich " Height="29px" Width="226px"></asp:Label><br />         
        </div>

            <br />
            <br />
            <br />
                 <div class="letters">
           <asp:Button ID="Button1" runat="server" type="submit" Text="$1.45" Width="321px" Height="47px" /> <br />

       <h1> ¿Que incluye? , este Sandwich </h1>
       </div>

                    <div class ="buttons">
            <asp:Image ID="Image1" runat="server" ImageAlign="Right" ImageUrl= "~/menus/5.jpg" position="absolute" Height="250px" Width="275px" style="margin-top: 29px; margin-left: 15px;" BorderColor="#003300" BorderStyle="Double" ForeColor="#0066FF" />
            </div>

            <div class =" cuadross">
     <asp:Label ID="Label1" runat="server" Text=" - Pan Integral o Pan de Caja  "></asp:Label>
         <br />
     <asp:Label ID="Label8" runat="server" Text="- Huevo Estrellado "></asp:Label>
         <br />
     <asp:Label ID="Label3" runat="server" Text="- Tomate "></asp:Label>
         <br />
     <asp:Label ID="Label4" runat="server" Text="- Lechuga "></asp:Label>
        <br />
     <asp:Label ID="Label5" runat="server" Text="- Pollo "></asp:Label>
         <br />
     <asp:Label ID="Label6" runat="server" Text="- Dips "></asp:Label>
         <br />
          <asp:Label ID="Label9" runat="server" Text="- Jamon "></asp:Label>
         <br />
     <asp:Label ID="Label10" runat="server" Text="- Queso "></asp:Label>
         <br />
     <asp:Label ID="Label7" runat="server" Text="- Incluye : Gaseosa o Jugo "></asp:Label>
         <br />

        </div>

             <br />
             <br />
         </form>
</body>
</html>
