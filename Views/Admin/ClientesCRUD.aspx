<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="ClientesCRUD.aspx.vb" Inherits="WebApplication8.ClientesCRUD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            position: absolute;
            top: 242px;
            left: 397px;
            z-index: 1;
        }
        .auto-style10 {
            position: absolute;
            top: 287px;
            left: 397px;
            z-index: 1;
        }
        .auto-style11 {
            position: absolute;
            top: 330px;
            left: 399px;
            z-index: 1;
        }
        .auto-style12 {
            position: absolute;
            top: 373px;
            left: 399px;
            z-index: 1;
        }
        .auto-style13 {
            position: absolute;
            top: 419px;
            left: 398px;
            z-index: 1;
        }
        .auto-style14 {
            position: absolute;
            top: 464px;
            left: 397px;
            z-index: 1;
        }
        .auto-style15 {
            position: absolute;
            top: 505px;
            left: 397px;
            z-index: 1;
        }
        .auto-style16 {
            position: absolute;
            top: 556px;
            left: 439px;
            z-index: 1;
            width: 79px;
            color: #FFFFFF;
            background-color: #33CC33;
        }
        .nuevoEstilo1 {
            border: 1px ridge #FFFFFF;
        }
        .auto-style17 {
            position: absolute;
            top: 243px;
            left: 184px;
        }
        .auto-style18 {
            position: absolute;
            top: 287px;
            left: 184px;
        }
        .auto-style19 {
            position: absolute;
            top: 331px;
            left: 184px;
        }
        .auto-style20 {
            position: absolute;
            top: 375px;
            left: 184px;
        }
        .auto-style21 {
            position: absolute;
            top: 419px;
            left: 184px;
        }
        .auto-style22 {
            position: absolute;
            top: 463px;
            left: 184px;
        }
        .auto-style23 {
            position: absolute;
            top: 507px;
            left: 184px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="Label2" runat="server" CssClass="auto-style17" style="z-index: 1" Text="Id:"></asp:Label>
    <asp:TextBox ID="txtId" runat="server" CssClass="auto-style9"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" CssClass="auto-style18" style="z-index: 1" Text="Nombre:"></asp:Label>
    <asp:TextBox ID="txtNombre" runat="server" CssClass="auto-style10"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" CssClass="auto-style19" style="z-index: 1" Text="Apellido paterno:"></asp:Label>
    <asp:TextBox ID="txtApPaterno" runat="server" CssClass="auto-style11"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" CssClass="auto-style20" style="z-index: 1" Text="Apellido materno:"></asp:Label>
    <asp:TextBox ID="txtApMaterno" runat="server" CssClass="auto-style12"></asp:TextBox>
    <br />
    <asp:Button ID="btnRegistrar" runat="server" CssClass="auto-style16" Text="Registrar" />
    <br />
    <asp:Label ID="Label6" runat="server" CssClass="auto-style21" style="z-index: 1" Text="Dirección:"></asp:Label>
    <asp:TextBox ID="txtDireccion" runat="server" CssClass="auto-style13"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label7" runat="server" CssClass="auto-style22" style="z-index: 1" Text="Teléfono:"></asp:Label>
    <asp:TextBox ID="txtTelefono" runat="server" CssClass="auto-style14"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label8" runat="server" CssClass="auto-style23" style="z-index: 1" Text="Frecuente:"></asp:Label>
    <asp:TextBox ID="txtFrecuente" runat="server" CssClass="auto-style15"></asp:TextBox>
    <br />
    <br />
</asp:Content>
