<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="02-EditarComida.aspx.cs" Inherits="PTC._02_EditarComida" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel = "stylesheet" type ="text/css" href = "login.css"/>
      <link rel = "stylesheet" type ="text/css" href = "menustyle.css"/>
     <link rel = "stylesheet" type ="text/css" href = "crudstyle.css" />
    <title> Agregar Comida </title>

</head>
<body>
    
         <script type="text/javascript">
        function validar(e) { // 1
            tecla = (document.all) ? e.keyCode : e.which; // 2
            if (tecla == 8) return true; // 3
            patron = /[A-Za-z\s]/; // 4
            te = String.fromCharCode(tecla); // 5
            return patron.test(te); // 6
        }
    </script>
    <script type="text/javascript">
        function numeros(nu) { // 1
            tecla = (document.all) ? e.keyCode : e.which; // 2
            if (tecla == 8) return true; // 3
            ppatron = /\d/; // Solo acepta números// 4
            te = String.fromCharCode(tecla); // 5
            return patron.test(te); // 6
        }
    </script>

    <script>
        function NumCheck(e, field) {
            key = e.keyCode ? e.keyCode : e.which
            // backspace
            if (key == 8) return true
            // 0-9
            if (key > 47 && key < 58) {
                if (field.value == "") return true
                regexp = /.[0-9]{2}$/
                return !(regexp.test(field.value))
            }
            // .
            if (key == 46) {
                if (field.value == "") return false
                regexp = /^[0-9]+$/
                return regexp.test(field.value)
            }
            // other key
            return false

        }

    </script>
       <form id="form1" runat="server">

             <div class="menus">
                  <asp:Button ID="Button2" type="submit" runat="server" Text="Página Principal" OnClick="Button2_Click" />
    <a href ="#"> </a>
      <a href ="#"> </a>
      <a href ="#"> </a>
                  <asp:Button ID="Button3" type="submit" runat="server" Text="Agregar Comida" OnClick="Button3_Click" />
       <a href ="#"> </a>
      <a href ="#"> </a>
      <a href ="#"> </a>
                  <asp:Button ID="Button4" type="submit" runat="server" Text="Editar Comida" OnClick="Button4_Click" />
        <a href ="#"> </a>
      <a href ="#"> </a>
      <a href ="#"> </a>
                  <asp:Button ID="Button1" type="submit" runat="server" Text="Cerrar Sesión" OnClick="Button1_Click" />     
       <a href ="#"> </a>
      <a href ="#"> </a>
      <a href ="#"> </a>   
                  <asp:ImageButton ID="ImageButton1" runat="server" Height="37px" ImageUrl="~/things/usa.png" Width="67px" OnClick="ImageButton1_Click" /> 
      

  </div>

     
            <div class="stylecrud">
                                 <h1>Agregar</h1>
                            <asp:Label ID="Label5" runat="server" Text="ID Producto"></asp:Label>
                 <br />
                                <br />
                            <asp:TextBox ID="TextBox1" runat="server" placeholder="ID producto..." type="text" class="form-control" onpaste="return false" onkeypress="return NumCheck(event, this)"></asp:TextBox>
                                  <br />
                                <br />
                                   <asp:Label ID="Label1" runat="server" Text="Producto"></asp:Label>
                                <br />
                                <br />
                                <asp:TextBox ID="TextBox2" runat="server" placeholder="Producto" type="text" class="form-control" onpaste="return false" onkeypress="return validar(event)" minlength="1" MaxLength="12"></asp:TextBox>
                              <br />
                                <br />
                              <asp:Label ID="Label2" runat="server" Text="Marca"></asp:Label>
                                   <br />
                                <br />
                                <asp:TextBox ID="TextBox3" runat="server" placeholder="Marca" type="text" class="form-control" onpaste="return false" onkeypress="return validar(event)" minlength="1" MaxLength="12"></asp:TextBox>
                            <br />
                                <br />
                                 <asp:Label ID="Label3" runat="server" Text="Precio"></asp:Label>
                                   <br />
                                <br />
                                <asp:TextBox ID="TextBox4" runat="server" placeholder="Precio" type="text" class="form-control" onpaste="return false" onkeypress="return NumCheck(event, this)" />
                             <br />
                                <br />
                                 <asp:Label ID="Label4" runat="server" Text="Cantidad"></asp:Label>
                                   <br />
                                <br />
                                <asp:TextBox ID="TextBox5" runat="server" placeholder="Cantidad" type="text" class="form-control" minlength="5" MaxLength="10" />
                             <br />
                                <br />
                            <asp:Button runat="server" Text="Agregar" CssClass="mybtn" OnClick="Unnamed1_Click" Height="38px" Width="130px"></asp:Button>


                      </div>

                        
          
        <div class="container">
            <asp:GridView ID="gvdlista" runat="server" AutoGenerateColumns="False" Width="1004px" Height="270px" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" />
                    <asp:BoundField DataField="Producto" HeaderText="Producto" />
                    <asp:BoundField DataField="Marca" HeaderText="Marca" />
                    <asp:BoundField DataField="Precio" HeaderText="Precio" />
                    <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </div>



        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
        <script src="js/bootstrap.min.js"></script>
    </form>
</body>
</html>
