<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="001-Menus.aspx.cs" Inherits="PTC._001_Menus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
       <title>Main Page</title>
    
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
        <div class ="letras">
                    <asp:Label ID="Label1" runat="server" Text=" Menus Available " Height="60px" Width="226px"></asp:Label>
        </div>
             <br />
             <br />

        <div class ="buttons">
            <asp:Image ID="Image1" runat="server" ImageAlign="Right" ImageUrl= "~/things/WhatsApp Image 2020-06-05 at 3.07.32 PM.jpeg" Height="500px" Width="500px" />
        <asp:Button ID="Button1" runat="server" type="submit" Text="First Menu" Width="444px" Height="47px" OnClick="Button1_Click"/> <br />
         <br />
             <br />

        <asp:Button ID="Button2" runat="server" type="submit" Text="Second Menu" Width="444px" Height="47px" OnClick="Button2_Click"/> <br />
             <br />
             <br />

        <asp:Button ID="Button3" runat="server" type="submit" Text="Thrid Menu" Width="444px" Height="47px" OnClick="Button3_Click" /> <br />
             <br />
             <br />

        <asp:Button ID="Button4" runat="server" type="submit" Text="Fourth Menu" Width="444px" Height="47px" OnClick="Button4_Click"/> <br />
             <br />
             <br />


        <asp:Button ID="Button5" runat="server" type="submit" Text="Fifth Menu" Width="444px" Height="47px" OnClick="Button5_Click" /> <br />
             <br />
             <br />
        </div>
    </form>
</body>
</html>
