<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="Roles.aspx.vb" Inherits="WebApplication8.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style9 {
        position: absolute;
        top: 380px;
        left: 771px;
        z-index: 1;
    }
    .auto-style10 {
        position: absolute;
        top: 423px;
        left: 750px;
        z-index: 1;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="auto-style9">Visitante</asp:LinkButton>
<asp:LinkButton ID="LinkButton2" runat="server" CssClass="auto-style10">Administrador</asp:LinkButton>
</asp:Content>
