<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site2.Master" CodeBehind="AutosCRUD.aspx.vb" Inherits="WebApplication8.AutosCRUD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style19 {
            position: absolute;
            top: 418px;
            left: 401px;
            z-index: 1;
            font-family: "Berlin Sans FB";
        }
        .auto-style20 {
            position: absolute;
            top: 462px;
            left: 401px;
            font-family: "Berlin Sans FB";
        }
        .auto-style21 {
            position: absolute;
            top: 506px;
            left: 401px;
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
            font-family: "Berlin Sans FB";
        }
        .auto-style25 {
            position: absolute;
            top: 416px;
            left: 523px;
            z-index: 1;
            width: 230px;
        }
        .auto-style26 {
            position: absolute;
            top: 460px;
            left: 523px;
            z-index: 1;
            width: 230px;
        }
        .auto-style27 {
            position: absolute;
            top: 504px;
            left: 523px;
            z-index: 1;
            width: 230px;
        }
        .auto-style28 {
            position: absolute;
            top: 548px;
            left: 523px;
            z-index: 1;
            width: 230px;
        }
        .auto-style29 {
            position: absolute;
            top: 591px;
            left: 523px;
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
            top: 414px;
            left: 823px;
            z-index: 1;
            font-family: "Berlin Sans FB";
        }
        .auto-style39 {
            position: absolute;
            top: 372px;
            left: 696px;
            z-index: 1;
        }
        .auto-style40 {
            position: absolute;
            top: 633px;
            left: 524px;
            z-index: 1;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="Label5" runat="server" CssClass="auto-style19" Text="Matricula:"></asp:Label>
    <asp:TextBox ID="txtId" runat="server" CssClass="auto-style25"></asp:TextBox>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoTallerConnectionString %>" SelectCommand="SELECT * FROM [Clientes]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoTallerConnectionString %>" SelectCommand="SELECT * FROM [Autos]"></asp:SqlDataSource>
    <br />
    <br />
    <asp:Label ID="Label6" runat="server" CssClass="auto-style20" style="z-index: 1" Text="Marca:"></asp:Label>
    <asp:TextBox ID="txtMarca" runat="server" CssClass="auto-style26"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label7" runat="server" CssClass="auto-style21" style="z-index: 1" Text="Modelo:"></asp:Label>
    <asp:TextBox ID="txtModelo" runat="server" CssClass="auto-style27"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label8" runat="server" CssClass="auto-style22" style="z-index: 1" Text="Color:"></asp:Label>
    <asp:TextBox ID="txtColor" runat="server" CssClass="auto-style28"></asp:TextBox>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" CssClass="auto-style38" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Marca" HeaderText="Marca" SortExpression="Marca" />
            <asp:BoundField DataField="Modelo" HeaderText="Modelo" SortExpression="Modelo" />
            <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
            <asp:BoundField DataField="Tipo" HeaderText="Tipo" SortExpression="Tipo" />
            <asp:BoundField DataField="Clientes_Id" HeaderText="Clientes_Id" SortExpression="Clientes_Id" />
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
    <asp:Label ID="Label9" runat="server" CssClass="auto-style23" style="z-index: 1" Text="Tipo:"></asp:Label>
    <asp:TextBox ID="txtTipo" runat="server" CssClass="auto-style29"></asp:TextBox>
    <br />
    <asp:Label ID="lblMensaje" runat="server" CssClass="auto-style39"></asp:Label>
    <br />
    <asp:Label ID="Label10" runat="server" CssClass="auto-style24" style="z-index: 1" Text="Id dueño:"></asp:Label>
    <asp:DropDownList ID="DropClientesId" runat="server" AutoPostBack="True" CssClass="auto-style40" DataSourceID="SqlDataSource2" DataTextField="Nombre" DataValueField="Id">
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <br />
<asp:Button ID="btnRegistrar" runat="server" CssClass="auto-style33" Text="Registrar" />
<asp:Button ID="btnConsultar" runat="server" CssClass="auto-style34" Text="Consultar" />
<asp:Button ID="btnModificar" runat="server" CssClass="auto-style35" Text="Modificar" />
<asp:Button ID="btnBorrar" runat="server" CssClass="auto-style36" Text="Borrar" />
<asp:Button ID="ButtonLimpiar" runat="server" CssClass="auto-style37" Text="Limpiar" />
    <br />
</asp:Content>
