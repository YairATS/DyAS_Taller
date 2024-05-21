<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site2.Master" CodeBehind="ServiciosCRUD.aspx.vb" Inherits="WebApplication8.ServiciosCRUD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style19 {
            position: absolute;
            top: 402px;
            left: 401px;
            font-family: "Berlin Sans FB";
        }
        .auto-style20 {
            position: absolute;
            top: 396px;
            left: 547px;
        }
        .auto-style21 {
            position: absolute;
            top: 450px;
            left: 401px;
            font-family: "Berlin Sans FB";
        }
        .auto-style22 {
            position: absolute;
            top: 444px;
            left: 547px;
        }
        .auto-style23 {
            position: absolute;
            top: 498px;
            left: 401px;
            font-family: "Berlin Sans FB";
        }
        .auto-style24 {
            position: absolute;
            top: 492px;
            left: 547px;
        }
        .auto-style25 {
            position: absolute;
            top: 546px;
            left: 401px;
            font-family: "Berlin Sans FB";
        }
        .auto-style26 {
            position: absolute;
            top: 540px;
            left: 547px;
        }
        .auto-style27 {
            position: absolute;
            top: 594px;
            left: 401px;
            font-family: "Berlin Sans FB";
        }
        .auto-style28 {
            position: absolute;
            top: 588px;
            left: 547px;
        }
        .auto-style29 {
            position: absolute;
            top: 642px;
            left: 401px;
            font-family: "Berlin Sans FB";
        }
        .auto-style30 {
            position: absolute;
            top: 638px;
            left: 547px;
            z-index: 1;
        }
        .auto-style31 {
            position: absolute;
            top: 418px;
            left: 753px;
            z-index: 1;
            font-family: "Berlin Sans FB";
        }
        .auto-style32 {
            position: absolute;
            top: 416px;
            left: 912px;
            z-index: 1;
        }
        .auto-style33 {
            position: absolute;
            top: 702px;
            left: 421px;
            z-index: 1;
            width: 46px;
            height: 29px;
            font-size: xx-small;
            color: #FFFFFF;
            background-color: #009933;
        }
        .auto-style34 {
            position: absolute;
            top: 506px;
            left: 753px;
            font-family: "Berlin Sans FB";
        }
        .auto-style35 {
            position: absolute;
            top: 550px;
            left: 753px;
            font-family: "Berlin Sans FB";
        }
        .auto-style36 {
            position: absolute;
            top: 594px;
            left: 753px;
            z-index: 1;
            font-family: "Berlin Sans FB";
        }
        .auto-style37 {
            position: absolute;
            top: 456px;
            left: 912px;
        }
        .auto-style40 {
            position: absolute;
            top: 592px;
            left: 912px;
            z-index: 1;
        }
        .auto-style41 {
            position: absolute;
            top: 460px;
            left: 753px;
            z-index: 1;
            width: 46px;
            height: 22px;
            font-family: "Berlin Sans FB";
        }
        .auto-style42 {
            position: absolute;
            top: 702px;
            left: 498px;
            font-family: "Berlin Sans FB";
            color: #FFFFFF;
            width: 65px;
            font-size: xx-small;
            background-color: #000000;
        }
        .auto-style43 {
            position: absolute;
            top: 702px;
            left: 575px;
            font-family: "Berlin Sans FB";
            font-size: xx-small;
            color: #FFFFFF;
            background-color: #000000;
        }
        .auto-style44 {
            position: absolute;
            top: 702px;
            left: 654px;
            z-index: 1;
            font-family: "Berlin Sans FB";
            font-size: xx-small;
            color: #FFFFFF;
            right: 690px;
            background-color: #FF0000;
        }
        .auto-style45 {
            position: absolute;
            top: 742px;
            left: 540px;
            font-family: "Berlin Sans FB";
            color: #FFFFFF;
            font-size: xx-small;
            background-color: #000000;
        }
        .auto-style46 {
            width: 232px;
            height: 152px;
            position: absolute;
            top: 796px;
            left: 403px;
            z-index: 1;
            font-family: "Berlin Sans FB";
        }
        .auto-style47 {
            position: absolute;
            top: 343px;
            left: 774px;
            z-index: 1;
        }
        .auto-style49 {
            position: absolute;
            top: 416px;
            left: 1324px;
            z-index: 1;
            font-family: "Berlin Sans FB";
            font-size: xx-small;
            color: #FFFFFF;
            height: 24px;
            background-color: #000000;
        }
        .auto-style50 {
            position: absolute;
            top: 417px;
            left: 1142px;
            z-index: 1;
            width: 150px;
            bottom: 336px;
            height: 63px;
        }
        .auto-style51 {
            position: absolute;
            top: 375px;
            left: 1196px;
            z-index: 1;
            font-family: "Berlin Sans FB";
        }
        .auto-style52 {
            position: absolute;
            top: 342px;
            left: 1200px;
            z-index: 1;
        }
        .auto-style53 {
            position: absolute;
            top: 637px;
            left: 745px;
            z-index: 1;
            font-family: "Berlin Sans FB";
            font-size: xx-small;
            color: #FFFFFF;
            background-color: #0000FF;
        }
        .auto-style54 {
            position: absolute;
            top: 640px;
            left: 933px;
            z-index: 1;
            font-size: xx-small;
        }
        .auto-style55 {
            position: absolute;
            top: 507px;
            left: 912px;
            z-index: 1;
        }
        .auto-style56 {
            position: absolute;
            top: 550px;
            left: 912px;
            z-index: 1;
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="Label5" runat="server" CssClass="auto-style19" style="z-index: 1" Text="Id:"></asp:Label>
    <asp:Label ID="Label11" runat="server" CssClass="auto-style31" Text="Fecha de inicio:"></asp:Label>
    <asp:TextBox ID="txtFechaInicio" runat="server" CssClass="auto-style32" ForeColor="Black">yyyy-mm-dd</asp:TextBox>
    <asp:TextBox ID="txtId" runat="server" CssClass="auto-style20" style="z-index: 1"></asp:TextBox>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoTallerConnectionString %>" SelectCommand="SELECT * FROM [Servicio]"></asp:SqlDataSource>
    <asp:Label ID="lblMensaje2" runat="server" CssClass="auto-style52"></asp:Label>
    <br />
    <asp:Label ID="Label6" runat="server" CssClass="auto-style21" style="z-index: 1" Text="Tipo:"></asp:Label>
    <asp:TextBox ID="txtTipo" runat="server" CssClass="auto-style22" style="z-index: 1"></asp:TextBox>
    <asp:Label ID="Label12" runat="server" CssClass="auto-style41" Text="Hora:"></asp:Label>
    <asp:TextBox ID="txtHora" runat="server" CssClass="auto-style37" style="z-index: 1"></asp:TextBox>
    <asp:DropDownList ID="DropDownListPiezas" runat="server" AutoPostBack="True" CssClass="auto-style50" DataSourceID="SqlDataSource2" DataTextField="Nombre" DataValueField="Id">
    </asp:DropDownList>
    <br />
    <br />
    <asp:Label ID="Label7" runat="server" CssClass="auto-style23" style="z-index: 1" Text="Modelo coche:"></asp:Label>
    <asp:TextBox ID="txtModeloCoche" runat="server" CssClass="auto-style24" style="z-index: 1"></asp:TextBox>
    <asp:Label ID="Label13" runat="server" CssClass="auto-style34" style="z-index: 1" Text="Cliente:"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label8" runat="server" CssClass="auto-style25" style="z-index: 1" Text="Descripción:"></asp:Label>
    <asp:TextBox ID="txtDescripcion" runat="server" CssClass="auto-style26" style="z-index: 1"></asp:TextBox>
    <asp:Label ID="Label14" runat="server" CssClass="auto-style35" style="z-index: 1" Text="Mat. Coche:"></asp:Label>
    <asp:DropDownList ID="DropDownListCliente" runat="server" AutoPostBack="True" CssClass="auto-style55" DataSourceID="SqlDataSource3" DataTextField="Nombre" DataValueField="Id">
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoTallerConnectionString %>" SelectCommand="SELECT * FROM [Clientes]"></asp:SqlDataSource>
    <br />
    <br />
    <asp:Label ID="Label9" runat="server" CssClass="auto-style27" style="z-index: 1" Text="Estado servicio:"></asp:Label>
    <asp:TextBox ID="txtEstadoServicio" runat="server" CssClass="auto-style28" style="z-index: 1"></asp:TextBox>
    <asp:TextBox ID="txtFechaEntrega" runat="server" CssClass="auto-style40">yyyy-mm-dd</asp:TextBox>
    <asp:Label ID="Label16" runat="server" CssClass="auto-style51" Text="Asignar piezas al servicio"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoTallerConnectionString %>" SelectCommand="SELECT * FROM [Piezas]"></asp:SqlDataSource>
    <asp:Button ID="btnAgregarPiezas" runat="server" CssClass="auto-style49" Text="Agregar Piezas" />
    <asp:DropDownList ID="DropDownListCoche" runat="server" AutoPostBack="True" CssClass="auto-style56" DataSourceID="SqlDataSource4" DataTextField="Modelo" DataValueField="Id">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoTallerConnectionString %>" SelectCommand="SELECT * FROM [Autos] WHERE ([Clientes_Id] = @Clientes_Id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownListCliente" Name="Clientes_Id" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Label ID="Label15" runat="server" CssClass="auto-style36" Text="Fecha de entrega:"></asp:Label>
    <br />
    <asp:Label ID="Label10" runat="server" CssClass="auto-style29" style="z-index: 1" Text="Costo estimado:"></asp:Label>
    <asp:TextBox ID="txtCostoEstimado" runat="server" CssClass="auto-style30"></asp:TextBox>
    <br />
    <asp:Label ID="lblMensaje" runat="server" CssClass="auto-style47"></asp:Label>
    <br />
    <br />
    <asp:Button ID="btnCalcular" runat="server" CssClass="auto-style53" Text="Calcular costo" />
    <asp:Label ID="lblCostoEstimado" runat="server" CssClass="auto-style54"></asp:Label>
    <br />
    <br />
<asp:Button ID="ButtonLimpiar" runat="server" CssClass="auto-style45" Text="Limpiar" height="29px" width="65px" />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style46" DataKeyNames="Id" DataSourceID="SqlDataSource1" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
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
    <br />
<asp:Button ID="btnBorrar" runat="server" CssClass="auto-style44" Text="Borrar" height="29px" width="65px" />
    <br />
<asp:Button ID="btnRegistrar" runat="server" CssClass="auto-style33" Text="Registrar" width="65px" />
<asp:Button ID="btnConsultar" runat="server" CssClass="auto-style42" Text="Consultar" height="29px" width="65px" />
<asp:Button ID="btnModificar" runat="server" CssClass="auto-style43" Text="Modificar" height="29px" width="65px" />
    <br />
    <br />
    <br />
</asp:Content>
