<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterResting.aspx.cs" Inherits="PTC.RegisterResting" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Restaurant Register </title>
        <link rel = "stylesheet" type ="text/css" href = "login.css"/>
    <link rel = "stylesheet" type ="text/css" href = "menustyle.css"/>
</head>
<body>
    <form id="form1" runat="server">
             <div class="desplegable">
                            <a href= "1ing.aspx">Main Menu</a>
                      <a href ="#"> </a>
                     <a href ="#"> </a>

          <a href= "LoginResting.aspx"> Restaurante Login </a>
                    <a href ="#"> </a>
                     <a href ="#"> </a>

               <a href= "RegisterResting.aspx">Restaurant Register</a>
                      <a href ="#"> </a>
                     <a href ="#"> </a>

  </div>
        <div class="stylerestING">
            <asp:ImageButton ID="ImageButton1" runat="server" Height="37px" ImageUrl="~/things/spain.png" Width="67px" OnClick="ImageButton1_Click" /> 
             <br />
             <br />

             <asp:Image ID="Image1" runat="server" Height="177px" ImageAlign="Middle" ImageUrl="~/things/user.png" Width="183px" />
             <br />
            <br />

            <h1> Register </h1>
            <br />

             <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            <br />
            <br />

            <asp:TextBox ID="TextBox1" runat="server" placeholder="Add your name" ></asp:TextBox>
            <br />
            <br />

            <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
            <br />
            <br />

            <asp:TextBox ID="TextBox2" runat="server" placeholder="Add your Last Name" ></asp:TextBox>
            <br />
            <br />


             <asp:Label ID="Label3" runat="server" Text="ID User"></asp:Label>
            <br />
            <br />

            <asp:TextBox ID="TextBox3" runat="server" placeholder="Add your ID User" ></asp:TextBox>
            <br />
            <br />


            
      <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label><br />     <br />
              <asp:TextBox ID="passwordfield" runat="server" type ="password" name="contra" placeholder="Write your password" Width="194px"></asp:TextBox>
             <br />
              <br />
  
              <asp:Label ID="Label7" runat="server" Text="Confirm your password"></asp:Label><br /><br />
              <asp:TextBox ID="confpasswordfield" type="password" name="contra" runat="server" placeholder="Write again your password" Width="189px"></asp:TextBox><br />
               <asp:Label ID="viewpassword" runat="server" Text="" style="font-size: 20px">&#128065;</asp:Label>
                          <script type="text/javascript"> 

                              var buttonPass = document.getElementById("passwordfield");
                              var buttonConfPass = document.getElementById("confpasswordfield");
                              document.getElementById("viewpassword").onclick = function () {
                                  viewPassword();
                              }


                              function viewPassword() {

                                  if (buttonPass.type == "text") {
                                      buttonPass.type = "password";
                                      document.getElementById("viewpassword").innerHTML = "<strike>&#128065;</strike>"
                                  } else if (buttonConfPass.type == "text") {
                                      buttonConfPass.type = "password";
                                      document.getElementById("viewpassword").innerHTML = "<strike>&#128065;</strike>"
                                  } else {
                                      document.getElementById("viewpassword").innerHTML = "&#128065;";
                                      buttonConfPass.type = "text";
                                      buttonPass.type = "text";
                                  }

                                  //button.Pass.type, se oculta con 2 click
                                  //buttonPass.type , se oculta en 1 click 

                                  if ((buttonPass.type == "text" && buttonConfPass.type != "text") || (buttonPass.type != "text" && buttonConfPass.type == "text")) {
                                      document.getElementById("viewpassword").innerHTML = "&#128065;";
                                      buttonPass.type = "password";
                                      buttonConfPass.type = "password";
                                  } else {
                                      document.getElementById("viewpassword").innerHTML = "<strike>&#128065;</strike>";
                                      buttonPass.type = "text";
                                      buttonConfPass.type = "text";
                                  }
                              }

                              setInterval(function () {
                                  if (buttonPass.type != "text" && buttonPass.type != "password") {
                                      buttonPass.type = "password"
                                      alert("Esa acciones no está permitida");
                                  } if (buttonConfPass.type != "text" && buttonConfPass.type != "password") {
                                      buttonConfPass.type = "password";
                                      alert("Esa accion no está permitida");
                                  }

                              }, 500);


                          </script>


            <br />
            <br />

            <asp:Label ID="Label5" runat="server" Text="E-mail"></asp:Label>
            <br />
            <br />

            <asp:TextBox ID="TextBox5" runat="server" placeholder="Add your e-mail" ></asp:TextBox>
            <br />
            <br />

             <asp:Button ID="Button1" runat="server" type="submit" Text="Continue" Height="37px" Width="266px" OnClick="Button1_Click" />
             <br />
            <br />
        </div>
    </form>
</body>
</html>
