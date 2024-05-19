<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="Login.aspx.vb" Inherits="WebApplication8.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style10 {
        position: absolute;
        top: 388px;
        left: 530px;
        z-index: 1;
        width: 94px;
        height: 31px;
        font-family: "Berlin Sans FB";
        font-size: x-large;
    }
    .auto-style12 {
        position: absolute;
        top: 453px;
        left: 531px;
        z-index: 1;
        font-family: "Berlin Sans FB";
        font-size: x-large;
    }
    .auto-style14 {
        position: absolute;
        top: 514px;
        left: 775px;
        z-index: 1;
        height: 31px;
        width: 93px;
    }
        .auto-style15 {
            position: absolute;
            top: 444px;
            left: 704px;
            width: 309px;
            height: 36px;
            z-index: 1;
        }
        .auto-style16 {
            width: 309px;
            height: 36px;
            position: absolute;
            top: 385px;
            left: 703px;
            z-index: 1;
        }
        .auto-style17 {
            position: absolute;
            top: 328px;
            left: 795px;
            z-index: 1;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="Label2" runat="server" CssClass="auto-style10" Text="Nombre:"></asp:Label>
<asp:Label ID="Label3" runat="server" CssClass="auto-style12" Text="Contraseña:"></asp:Label>
    <asp:TextBox ID="txtContraseña" runat="server" CssClass="auto-style15"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" CssClass="auto-style14" Text="Ingresar" />
    <asp:TextBox ID="txtNombre" runat="server" CssClass="auto-style16"></asp:TextBox>
    <asp:Label ID="lblError" runat="server" CssClass="auto-style17"></asp:Label>
</asp:Content>
