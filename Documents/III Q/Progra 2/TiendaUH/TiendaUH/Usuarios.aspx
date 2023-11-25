<%@ Page Title="" Language="C#" MasterPageFile="~/menu.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="TiendaUH.Usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class = "container text-center">
        <h1>
            USUARIOS
        </h1>
    </div>

     <div>
        <br />
        <asp:GridView runat="server" ID="datagrid" PageSize="10" HorizontalAlign="Center"
            CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header"
            RowStyle-CssClass="rows" AllowPaging="True" ForeColor = "White" />
        <br />
     </div>

    
    <div>
        class = "container text-center"
        Usuario: <asp:TextBox ID="tusuario" class="form-control" runat="server"></asp:TextBox>
        Nombre: <asp:TextBox ID="tnombre" class="form-control" runat="server"></asp:TextBox>
        Correo: <asp:TextBox ID="tcorreo" class="form-control" runat="server"></asp:TextBox>
        Numero: <asp:TextBox ID="tnumero" class="form-control" runat="server"></asp:TextBox>
    </div>

 <button>AGREGAR</button>
 <button>BORRAR</button>
 <button>CONSULTAR</button>
 <button>MODIFICAR</button>

</asp:Content>
