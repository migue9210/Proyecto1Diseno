<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Voluntariado.aspx.cs" Inherits="Prueba_1.Voluntariado" %>

<asp:Content runat="server" ID="Content1" ContentPlaceHolderID="MainContent">
    <fieldset>
        <legend>Informacion de los lugares:</legend>
        <ol>
            <li>
                <asp:Label ID="Label1" runat="server">Destino:</asp:Label>
                <asp:ListBox ID="ListBox1" runat="server" Height="23px" Width="309px" DataSourceID="SqlDataSource1" DataTextField="NOMBRE" DataValueField="ID_DESTINO" style="font-size: medium"></asp:ListBox>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TuristearConnectionString2 %>" SelectCommand="SELECT [ID_DESTINO], [NOMBRE] FROM [DESTINO]"></asp:SqlDataSource>
            </li>
            <li>
                <asp:Label ID="Label2" runat="server">Tipo de voluntariado:</asp:Label>
                <asp:ListBox ID="ListBox2" runat="server" Height="24px" Width="309px" DataSourceID="SqlDataSource2" DataTextField="NOMBRE" DataValueField="ID_TIPO_VOLUNTARIADO" style="font-size: medium"></asp:ListBox>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TuristearConnectionString2 %>" SelectCommand="SELECT [ID_TIPO_VOLUNTARIADO], [NOMBRE] FROM [TIPO_VOLUNTARIADO]"></asp:SqlDataSource>
            </li>
            <asp:Button ID="Button1" runat="server" CommandName="Login" Text="Voluntariados Disponibles" OnClick="Button1_Click"/>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                <Columns> 
                    <asp:BoundField DataField="DESTINO" HeaderText="DESTINO" />
                    <asp:BoundField DataField="PERFIL" HeaderText="PERFIL" />
                    <asp:BoundField DataField="VACANTES" HeaderText="VACANTES" />
                    <asp:BoundField DataField="ENCARGADO" HeaderText="ENCARGADO" />
                </Columns>
            </asp:GridView>
            <asp:Button ID="Button2" runat="server" CommandName="Login" Text="Realizar la inscripción" OnClick="Button2_Click"/>
        </ol>
    </fieldset>
</asp:Content>
   