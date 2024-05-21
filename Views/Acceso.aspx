<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="Acceso.aspx.vb" Inherits="WebApplication8.Acceso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            position: absolute;
            top: 411px;
            left: 784px;
            z-index: 1;
            font-family: "Berlin Sans FB";
            font-size: xx-large;
            width: 249px;
        }
        .auto-style12 {
            position: absolute;
            top: 484px;
            left: 855px;
            z-index: 1;
            font-family: "Berlin Sans FB";
            font-size: x-large;
            color: #000000;
            height: 33px;
        }
        .auto-style13 {
            position: absolute;
            top: 532px;
            left: 820px;
            z-index: 1;
            font-family: "Berlin Sans FB";
            font-size: x-large;
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="Label2" runat="server" CssClass="auto-style11" Text="Acceder como:"></asp:Label>
    <br />
    <br />
    <br />
    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="auto-style12">Visitante</asp:LinkButton>
    <br />
    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="auto-style13">Administrador</asp:LinkButton>
    <br />
    <br />
    <br />
</asp:Content>
