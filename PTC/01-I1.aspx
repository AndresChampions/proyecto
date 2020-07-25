<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="01-I1.aspx.cs" Inherits="PTC._01_I1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title> Menu 1 </title>
     <link rel = "stylesheet" type ="text/css" href = "menustyle.css"/>
    <style type="text/css">
        .letters {
            width: 363px;
        }
    </style>
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

         <asp:ImageButton ID="ImageButton2" runat="server" Height="37px" ImageUrl="~/things/usa.png" Width="67px" OnClick="ImageButton1_Click" /> 
     
  </div>
     <br />

        <div class = "titulo">
            <h1> Menu 1 </h1>
             </div>
 
         <div class ="letras">
                    <asp:Label ID="Label2" runat="server" Text=" Comida China " Height="29px" Width="226px"></asp:Label><br />         
        </div>

            <br />
            <br />
            <br />
                 <div class="letters">
           <asp:Button ID="Button1" runat="server" type="submit" Text="$3.50" Width="321px" Height="47px" /> <br />

       <h1> Ingredientes :  </h1>
       </div>

                    <div class ="buttons">
            <asp:Image ID="Image1" runat="server" ImageAlign="Right" ImageUrl= "~/menus/1.jpg" position="absolute" Height="250px" Width="275px" style="margin-top: 29px; margin-left: 15px;" />
            </div>

            <div class =" cuadro">
     <asp:Label ID="Label1" runat="server" Text=" - Verduras encurtidas  "></asp:Label>
         <br />
     <asp:Label ID="Label8" runat="server" Text="- Fideos"></asp:Label>
         <br />
     <asp:Label ID="Label3" runat="server" Text="- Cebolla"></asp:Label>
         <br />
     <asp:Label ID="Label4" runat="server" Text="- Jenjibre "></asp:Label>
        <br />
     <asp:Label ID="Label5" runat="server" Text="- Brotes de bambú en conserva"></asp:Label>
         <br />
     <asp:Label ID="Label6" runat="server" Text="- Carne "></asp:Label>
         <br />
     <asp:Label ID="Label7" runat="server" Text="- Vinagre de Arroz"></asp:Label>
         <br />
     <asp:Label ID="Label9" runat="server" Text="- Doufu "></asp:Label>
         <br />
      <asp:Label ID="Label10" runat="server" Text="- Salsa o acite con Chile"></asp:Label>
         <br />
      <asp:Label ID="Label11" runat="server" Text="-Salsa de Soya"></asp:Label>
         <br />
        </div>

             <br />
             <br />

        
         </form>
</body>
</html>
