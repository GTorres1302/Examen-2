<%@ Page Title="" Language="C#" MasterPageFile="~/menu.Master" AutoEventWireup="true" CodeBehind="Equipos.aspx.cs" Inherits="TiendaUH.Equipos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class = "container text-center">
        <h1>
            EQUIPOS
        </h1>
    </div>

    <div>
        <br />
        <asp:GridView runat="server" ID="datagrid" PageSize="10" HorizontalAlign="Center"
            CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header"
            RowStyle-CssClass="rows" AllowPaging="True" ForeColor = "White" />
        <br />
    </div>

<button>AGREGAR</button>
<button>BORRAR</button>
<button>CONSULTAR</button>
<button>MODIFICAR</button>

</asp:Content>
