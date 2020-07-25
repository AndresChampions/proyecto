<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="02-Inicio.aspx.cs" Inherits="PTC._02_Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link rel = "stylesheet" type ="text/css" href = "login.css"/>
      <link rel = "stylesheet" type ="text/css" href = "menustyle.css"/>
    <title> Página Principal</title>
</head>
<body>
    <form id="form1" runat="server">
  <div class="menuarriba">
                  <asp:Button ID="Button2" runat="server" type="submit" Text="Menu Principal" OnClick="Button2_Click" />
                  <asp:Button ID="Button3" runat="server" type="submit" Text="Agregar Comida" OnClick="Button3_Click" />
                  <asp:Button ID="Button4" runat="server" type="submit" Text="Editar Comida" OnClick="Button4_Click" />
                  <asp:Button ID="Button1" runat="server" type="submit" Text="Cerrar Sesión" OnClick="Button1_Click" />    
      <asp:ImageButton ID="ImageButton1" runat="server" Height="37px" ImageUrl="~/things/usa.png" Width="67px" OnClick="ImageButton1_Click" /> 
             

  </div>
                    <div class = "fondo">
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/things/WhatsApp Image 2020-06-05 at 3.07.32 PM.jpeg" Height="468px" Width="944px" />    
     </div>
    </form>
</body>
</html>
