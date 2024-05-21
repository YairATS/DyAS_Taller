<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Views/Site4.Master" CodeBehind="ServiciosView.aspx.vb" Inherits="WebApplication8.ServiciosView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style20 {
        font-family: "Berlin Sans FB";
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" CssClass="auto-style20" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black">
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="Tipo" HeaderText="Tipo" SortExpression="Tipo" />
        <asp:BoundField DataField="Modelo_Coche" HeaderText="Modelo_Coche" SortExpression="Modelo_Coche" />
        <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
        <asp:BoundField DataField="Estado_Servicio" HeaderText="Estado_Servicio" SortExpression="Estado_Servicio" />
        <asp:BoundField DataField="Costo_Estimado" HeaderText="Costo_Estimado" SortExpression="Costo_Estimado" />
        <asp:BoundField DataField="Fecha_Inicio" HeaderText="Fecha_Inicio" SortExpression="Fecha_Inicio" />
        <asp:BoundField DataField="Hora" HeaderText="Hora" SortExpression="Hora" />
        <asp:BoundField DataField="Clientes_Id" HeaderText="Clientes_Id" SortExpression="Clientes_Id" />
        <asp:BoundField DataField="Autos_Id" HeaderText="Autos_Id" SortExpression="Autos_Id" />
        <asp:BoundField DataField="Fecha_Entrega" HeaderText="Fecha_Entrega" SortExpression="Fecha_Entrega" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoTallerConnectionString %>" SelectCommand="SELECT * FROM [Servicio]"></asp:SqlDataSource>
</asp:Content>
