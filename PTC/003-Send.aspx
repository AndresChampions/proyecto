<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="003-Send.aspx.cs" Inherits="PTC._003_Send" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
               <link rel = "stylesheet" type ="text/css" href = "login.css"/>
      <link rel = "stylesheet" type ="text/css" href = "menustyle.css"/>
    <link rel = "stylesheet" type ="text/css" href = "crudstyle.css"/>
    <title> Sends NOW </title>
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

 <div class="delivery">
     <asp:Image ID="Image1" runat="server" ImageUrl="~/things/map.jpg" Height="627px" Width="956px" />


     <div class="space1">
           <asp:Label ID="Label2" runat="server" Text=" You have 1 order to go "></asp:Label>
     </div>
   

     <div class ="space">
         <asp:Label ID="Label1" runat="server" Text="Spicy Delicius Food Restaurant"></asp:Label>
     </div>


     <div class = "space2">
        <h1>Address: </h1> <br /> <br />
        <asp:Label ID="Label3" runat="server" Text="Passage Escalon 22 North , Carretas Street , House 88A "></asp:Label>
       </div>



     </div>
    </form>
</body>
</html>
