<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ModDestino.aspx.cs" Inherits="Prueba_1.Administrador.ModDestino" %>

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
                                <asp:ListBox ID="ListBoxDestino" runat="server" Height="28px" Width="309px" DataSourceID="SqlDataSource2" DataTextField="NOMBRE" DataValueField="ID_DESTINO" style="font-size: 1em"></asp:ListBox>                                
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TuristearConnectionString %>" SelectCommand="SELECT [NOMBRE], [ID_DESTINO] FROM [DESTINO]"></asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                           </li>
                            <li>
                                <asp:Label ID="Label6" runat="server" AssociatedControlID="Descripcion">Descripcion Nueva:</asp:Label>
                                <asp:TextBox runat="server" ID="Descripcion"  />
                            </li>
                        </ol>
                        <asp:Button ID="ButtonRegistrar" runat="server" CommandName="MoveNext" Text="Modificar" OnClick="ButtonRegistrar_Click"/>
           </fieldset>
</asp:Content>
