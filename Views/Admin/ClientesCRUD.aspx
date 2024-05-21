<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site2.Master" CodeBehind="ClientesCRUD.aspx.vb" Inherits="WebApplication8.ClientesCRUD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style19 {
        font-family: "Berlin Sans FB";
        position: absolute;
        top: 659px;
        left: 401px;
        z-index: 1;
    }
    .auto-style20 {
        position: absolute;
        top: 392px;
        left: 515px;
        z-index: 1;
        width: 230px;
    }
    .auto-style21 {
        font-family: "Berlin Sans FB";
        position: absolute;
        top: 392px;
        left: 401px;
    }
    .auto-style22 {
        position: absolute;
        top: 434px;
        left: 514px;
        z-index: 1;
        width: 230px;
    }
    .auto-style23 {
        position: absolute;
        top: 479px;
        left: 514px;
        width: 230px;
        z-index: 1;
    }
    .auto-style24 {
        font-family: "Berlin Sans FB";
        position: absolute;
        top: 436px;
        left: 401px;
        z-index: 1;
    }
    .auto-style25 {
        font-family: "Berlin Sans FB";
        position: absolute;
        top: 481px;
        left: 401px;
            z-index: 1;
        }
    .auto-style26 {
        font-family: "Berlin Sans FB";
        position: absolute;
        top: 526px;
        left: 401px;
    }
    .auto-style27 {
        font-family: "Berlin Sans FB";
        position: absolute;
        top: 570px;
        left: 401px;
    }
    .auto-style28 {
        font-family: "Berlin Sans FB";
        position: absolute;
        top: 615px;
        left: 401px;
    }
    .auto-style29 {
        position: absolute;
        top: 527px;
        left: 514px;
        z-index: 1;
        width: 230px;
    }
    .auto-style30 {
        width: 230px;
        height: 22px;
        position: absolute;
        left: 514px;
        top: 570px;
    }
    .auto-style31 {
        position: absolute;
        top: 618px;
        left: 514px;
        z-index: 1;
        width: 230px;
        right: 657px;
    }
    .auto-style32 {
        width: 230px;
        height: 22px;
        position: absolute;
        left: 514px;
        top: 658px;
    }
    .auto-style33 {
        position: absolute;
        top: 720px;
        left: 422px;
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
        top: 720px;
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
        top: 720px;
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
        top: 720px;
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
        top: 774px;
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
            top: 390px;
            left: 794px;
            z-index: 1;
            font-family: "Berlin Sans FB";
        }
        .auto-style39 {
            position: absolute;
            top: 350px;
            left: 728px;
            z-index: 1;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="Label5" runat="server" CssClass="auto-style21" style="z-index: 1" Text="Id:"></asp:Label>
<br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoTallerConnectionString %>" SelectCommand="SELECT * FROM [Clientes]"></asp:SqlDataSource>
<br />
<asp:Label ID="Label6" runat="server" CssClass="auto-style24" Text="Nombre:"></asp:Label>
<asp:TextBox ID="txtNombre" runat="server" CssClass="auto-style22"></asp:TextBox>
<br />
<br />
<asp:Label ID="Label7" runat="server" CssClass="auto-style25" Text="Paterno:"></asp:Label>
<asp:TextBox ID="txtPaterno" runat="server" CssClass="auto-style23"></asp:TextBox>
<br />
<br />
<asp:Label ID="Label8" runat="server" CssClass="auto-style26" style="z-index: 1" Text="Materno:"></asp:Label>
<br />
<asp:TextBox ID="txtMaterno" runat="server" CssClass="auto-style29"></asp:TextBox>
    <asp:GridView ID="GridViewClientes" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" CssClass="auto-style38" DataKeyNames="Id" DataSourceID="SqlDataSource2" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
            <asp:BoundField DataField="Ap_Paterno" HeaderText="Ap_Paterno" SortExpression="Ap_Paterno" />
            <asp:BoundField DataField="Ap_Materno" HeaderText="Ap_Materno" SortExpression="Ap_Materno" />
            <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
            <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
            <asp:BoundField DataField="Frecuente" HeaderText="Frecuente" SortExpression="Frecuente" />
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
<asp:Label ID="Label9" runat="server" CssClass="auto-style27" style="z-index: 1" Text="Dirección:"></asp:Label>
<asp:TextBox ID="txtId" runat="server" CssClass="auto-style20"></asp:TextBox>
<asp:TextBox ID="txtDireccion" runat="server" CssClass="auto-style30"></asp:TextBox>
<asp:TextBox ID="txtTelefono" runat="server" CssClass="auto-style31"></asp:TextBox>
<br />
<asp:Button ID="btnRegistrar" runat="server" CssClass="auto-style33" Text="Registrar" />
<asp:Button ID="Button2" runat="server" CssClass="auto-style34" Text="Consultar" />
<asp:Button ID="btnModificar" runat="server" CssClass="auto-style35" Text="Modificar" />
<br />
<asp:Label ID="Label10" runat="server" CssClass="auto-style28" style="z-index: 1" Text="Teléfono:"></asp:Label>
<br />
<asp:Button ID="btnBorrar" runat="server" CssClass="auto-style36" Text="Borrar" />
<asp:Button ID="Button5" runat="server" CssClass="auto-style37" Text="Limpiar" />
    <br />
    <asp:Label ID="lblMensaje" runat="server" CssClass="auto-style39"></asp:Label>
    <br />
<br />
<asp:Label ID="Label11" runat="server" CssClass="auto-style19" Text="Frecuente:"></asp:Label>
<asp:TextBox ID="txtFrecuente" runat="server" CssClass="auto-style32"></asp:TextBox>
<br />
</asp:Content>
