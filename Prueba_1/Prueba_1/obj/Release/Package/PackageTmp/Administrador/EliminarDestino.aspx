<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EliminarDestino.aspx.cs" Inherits="Prueba_1.Administrador.EliminarDestino" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %></h1>
        <h4>Complete el siguiente formulario</h4>
    </hgroup>  
    <fieldset>
              <legend>Formulario de registro</legend>
                <ol>
                    <li>
                        <asp:Label ID="Label1" runat="server">Destino:</asp:Label>
                        <asp:ListBox ID="ListBoxDestino" runat="server" Height="28px" Width="309px" DataSourceID="SqlDataSource2" DataTextField="NOMBRE" DataValueField="ID_DESTINO"></asp:ListBox>                                
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TuristeAHWo1bw5FConnectionString %>" SelectCommand="SELECT [ID_DESTINO], [NOMBRE] FROM [DESTINO]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TURISTEAR_CRConnectionString %>" SelectCommand="SELECT [ID_DESTINO], [NOMBRE] FROM [DESTINO]"></asp:SqlDataSource>
                   </li>
                </ol>    
                <asp:Button ID="ButtonRegistrar" runat="server" CommandName="MoveNext" Text="Eliminar" OnClick="ButtonRegistrar_Click"/>
           </fieldset>
</asp:Content>

