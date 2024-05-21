<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="Login.aspx.vb" Inherits="WebApplication8.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            position: absolute;
            top: 456px;
            left: 516px;
            z-index: 1;
            font-family: "Berlin Sans FB";
            font-size: x-large;
        }
        .auto-style12 {
            position: absolute;
            top: 522px;
            left: 516px;
            z-index: 1;
            font-family: "Berlin Sans FB";
            font-size: x-large;
        }
        .auto-style13 {
            position: absolute;
            top: 523px;
            left: 678px;
            z-index: 1;
            width: 250px;
            height: 30px;
            font-family: "Berlin Sans FB";
            font-size: large;
        }
        .auto-style14 {
            position: absolute;
            top: 461px;
            left: 678px;
            z-index: 1;
            width: 250px;
            height: 30px;
            font-family: "Berlin Sans FB";
            font-size: large;
        }
        .auto-style16 {
            position: absolute;
            top: 410px;
            left: 772px;
            z-index: 1;
        }
        .auto-style17 {
            position: absolute;
            top: 586px;
            left: 659px;
            z-index: 1;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="Label2" runat="server" CssClass="auto-style11" Text="Nombre: "></asp:Label>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style12" Text="Contraseña:"></asp:Label>
    <asp:TextBox ID="txtContraseña" runat="server" CssClass="auto-style13"></asp:TextBox>
    <asp:Label ID="lblError" runat="server" CssClass="auto-style16"></asp:Label>
    <asp:TextBox ID="txtNombre" runat="server" CssClass="auto-style14"></asp:TextBox>
    <asp:Button ID="btnIngresar" runat="server" CssClass="auto-style17" Text="Ingresar" />
</asp:Content>
