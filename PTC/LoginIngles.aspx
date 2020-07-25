<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginIngles.aspx.cs" Inherits="PTC.LoginIngles" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel = "stylesheet" type ="text/css" href = "login.css"/>
     <link rel = "stylesheet" type ="text/css" href = "menustyle.css"/>
    <title> Sign up </title>
</head>
<body>
    <form id="form1" runat="server">

           <div class="desplegable">
                        <a href= "1ing.aspx">Main Menu</a>
                      <a href ="#"> </a>
                     <a href ="#"> </a>

          <a href= "LoginIngles.aspx"> Login User</a>
                    <a href ="#"> </a>
                     <a href ="#"> </a>

               <a href= "Register.aspx">Register User</a>
                      <a href ="#"> </a>
                     <a href ="#"> </a>

  </div>


                <div class="style">


            <asp:ImageButton ID="ImageButton1" runat="server" Height="37px" ImageUrl="~/things/spain.png" Width="67px" OnClick="ImageButton1_Click" /> 
             <br />
             <br />

            <asp:Image ID="Image1" runat="server" Height="206px" ImageAlign="Middle" ImageUrl="~/things/delivery1.png" Width="207px" />
             <br />


            <h1>Sign up </h1>
            <br />

            <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
            <br />
            <br />

            <asp:TextBox ID="TextBox1" runat="server" placeholder="Add your user name" ></asp:TextBox>
            <br />
            <br />

            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            <br />
            <br />

            <asp:TextBox ID="TextBox2" type="password" runat="server" placeholder="Add your password"></asp:TextBox>
                    <asp:CheckBox ID="CheckBox1" runat="server" type="checkbox"/>

    <script type ="text/javascript ">
        var button = document.getElementById("TextBox2");
        document.getElementById("CheckBox1").onclick = function () {
            viewPassword();
        }
        function viewPassword() {
            if (button.type == "text") {
                button.type = "password";
            } else {
                button.type = "text";
            }
        }
    </script>

            <br />
            <br />

            <asp:Button ID="Button1" runat="server" type="submit" Text="Continue" Height="37px" Width="266px" />
             <br />
            <br />

            <a href ="Register.aspx" > ¿Do you have an account? Sign up </a><br />
</div>
    </form>
</body>
</html>
