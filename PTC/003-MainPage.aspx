<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="003-MainPage.aspx.cs" Inherits="PTC._003_MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
           <link rel = "stylesheet" type ="text/css" href = "login.css"/>
      <link rel = "stylesheet" type ="text/css" href = "menustyle.css"/>
    <link rel = "stylesheet" type ="text/css" href = "crudstyle.css"/>
    <title> Main Page Delivery </title>
</head>
<body>
    <form id="form1" runat="server">

         <div class="desplegable">
          <a href= "003-MainPage.aspx"> Main Page </a>
                    <a href ="#"> </a>
                     <a href ="#"> </a>
               <a href= "003-Send.aspx">Sends NOW</a>
                      <a href ="#"> </a>
                     <a href ="#"> </a>
                <a href= "LoginDeling.aspx">Sign off</a>
                           <a href ="#"> </a>
                           <a href ="#"> </a>
   <asp:ImageButton ID="ImageButton1" runat="server" Height="37px" ImageUrl="~/things/spain.png" Width="67px" OnClick="ImageButton1_Click" /> 
          
</div>     
             <div class = "fondo">
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/things/WhatsApp Image 2020-06-05 at 3.07.32 PM.jpeg" Height="468px" Width="944px" />    
     </div>
   

    </form>
</body>
</html>
