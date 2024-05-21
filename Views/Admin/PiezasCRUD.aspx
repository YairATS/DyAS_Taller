<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site2.Master" CodeBehind="PiezasCRUD.aspx.vb" Inherits="WebApplication8.PiezasCRUD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style19 {
            position: absolute;
            top: 418px;
            left: 401px;
            font-family: "Berlin Sans FB";
        }
        .auto-style20 {
            position: absolute;
            top: 462px;
            left: 401px;
            z-index: 1;
            font-family: "Berlin Sans FB";
        }
        .auto-style21 {
            position: absolute;
            top: 506px;
            left: 401px;
            z-index: 1;
            font-family: "Berlin Sans FB";
        }
        .auto-style22 {
            position: absolute;
            top: 550px;
            left: 401px;
            font-family: "Berlin Sans FB";
        }
        .auto-style23 {
            position: absolute;
            top: 594px;
            left: 401px;
            font-family: "Berlin Sans FB";
        }
        .auto-style24 {
            position: absolute;
            top: 638px;
            left: 401px;
            z-index: 1;
            font-family: "Berlin Sans FB";
        }
        .auto-style25 {
            position: absolute;
            top: 409px;
            left: 538px;
            z-index: 1;
            width: 230px;
        }
        .auto-style26 {
            position: absolute;
            top: 454px;
            left: 538px;
            z-index: 1;
            width: 230px;
        }
        .auto-style27 {
            position: absolute;
            top: 500px;
            left: 538px;
            z-index: 1;
            width: 230px;
        }
        .auto-style28 {
            position: absolute;
            top: 545px;
            left: 538px;
            z-index: 1;
            width: 230px;
        }
        .auto-style29 {
            position: absolute;
            top: 591px;
            left: 538px;
            z-index: 1;
            width: 230px;
        }
        .auto-style30 {
            position: absolute;
            top: 636px;
            left: 538px;
            z-index: 1;
            width: 230px;
        }
    .auto-style33 {
        position: absolute;
        top: 692px;
        left: 421px;
        z-index: 1;
        width: 65px;
        font-family: "Berlin Sans FB";
        color: #FFFFFF;
        background-color: #00CC00;
            height: 29px;
            font-size: xx-small;
        }
    .auto-style34 {
        position: absolute;
        top: 692px;
        left: 510px;
        z-index: 1;
        width: 65px;
        font-family: "Berlin Sans FB";
            height: 29px;
            color: #FFFFFF;
            font-size: xx-small;
            background-color: #000000;
        }
    .auto-style35 {
        position: absolute;
        top: 692px;
        left: 598px;
        z-index: 1;
        width: 65px;
        font-family: "Berlin Sans FB";
            color: #FFFFFF;
            height: 29px;
            font-size: xx-small;
            background-color: #000000;
        }
    .auto-style36 {
        position: absolute;
        top: 692px;
        left: 687px;
        z-index: 1;
        width: 65px;
        font-family: "Berlin Sans FB";
        color: #FFFFFF;
        background-color: #FF0000;
            height: 29px;
            font-size: xx-small;
        }
    .auto-style37 {
        position: absolute;
        top: 733px;
        left: 549px;
        z-index: 1;
        width: 65px;
            font-family: "Berlin Sans FB";
            color: #FFFFFF;
            height: 29px;
            font-size: xx-small;
            background-color: #000000;
        }
        .auto-style38 {
            width: 232px;
            height: 152px;
            position: absolute;
            top: 411px;
            left: 832px;
            z-index: 1;
            font-family: "Berlin Sans FB";
        }
        .auto-style39 {
            position: absolute;
            top: 366px;
            left: 779px;
            z-index: 1;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="Label5" runat="server" CssClass="auto-style19" style="z-index: 1" Text="Id:"></asp:Label>
    <asp:TextBox ID="txtId" runat="server" CssClass="auto-style25"></asp:TextBox>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoTallerConnectionString %>" SelectCommand="SELECT * FROM [Piezas]"></asp:SqlDataSource>
    <br />
    <br />
    <asp:Label ID="Label6" runat="server" CssClass="auto-style20" Text="Nombre:"></asp:Label>
    <asp:TextBox ID="txtNombre" runat="server" CssClass="auto-style26"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label7" runat="server" CssClass="auto-style21" Text="Marca:"></asp:Label>
    <asp:TextBox ID="txtMarca" runat="server" CssClass="auto-style27"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label8" runat="server" CssClass="auto-style22" style="z-index: 1" Text="Proveedor:"></asp:Label>
    <asp:TextBox ID="txtProveedor" runat="server" CssClass="auto-style28"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label9" runat="server" CssClass="auto-style23" style="z-index: 1" Text="Existencias:"></asp:Label>
    <asp:TextBox ID="txtExistencias" runat="server" CssClass="auto-style29"></asp:TextBox>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" CssClass="auto-style38" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
            <asp:BoundField DataField="Marca" HeaderText="Marca" SortExpression="Marca" />
            <asp:BoundField DataField="Proveedor" HeaderText="Proveedor" SortExpression="Proveedor" />
            <asp:BoundField DataField="Existencias" HeaderText="Existencias" SortExpression="Existencias" />
            <asp:BoundField DataField="Precio_Unitario" HeaderText="Precio_Unitario" SortExpression="Precio_Unitario" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <br />
    <asp:Label ID="Label10" runat="server" CssClass="auto-style24" Text="Precio unitario:"></asp:Label>
    <asp:TextBox ID="txtPrecioUnitario" runat="server" CssClass="auto-style30"></asp:TextBox>
    <asp:Label ID="lblMensaje" runat="server" CssClass="auto-style39"></asp:Label>
    <br />
<asp:Button ID="btnRegistrar" runat="server" CssClass="auto-style33" Text="Registrar" />
<asp:Button ID="btnConsultar" runat="server" CssClass="auto-style34" Text="Consultar" />
<asp:Button ID="btnModificar" runat="server" CssClass="auto-style35" Text="Modificar" />
<asp:Button ID="btnBorrar" runat="server" CssClass="auto-style36" Text="Borrar" />
<asp:Button ID="ButtonLimpiar" runat="server" CssClass="auto-style37" Text="Limpiar" />
    <br />
</asp:Content>
