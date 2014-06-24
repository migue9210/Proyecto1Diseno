<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ModComentario.aspx.cs" Inherits="Prueba_1.Administrador.ModComentario" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %></h1>
        <h4>Complete el siguiente formulario</h4>
    </hgroup>
        <fieldset>
        <legend>Formulario de registro</legend>
            <ol>
                <li>
                    <asp:Label ID="Label7" runat="server" Text="Destino" style="font-size: 1em; font-weight: 700"></asp:Label>
                    <asp:ListBox ID="ListBoxDestino" runat="server" Height="28px" Width="309px" style="font-size: 1em" DataSourceID="SqlDataSource1" DataTextField="NOMBRE" DataValueField="ID_COMENTARIO"></asp:ListBox>                                
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TuristearConnectionString2 %>" SelectCommand="SELECT DISTINCT DESTINO.NOMBRE, COMENTARIO.ID_COMENTARIO FROM COMENTARIO INNER JOIN DESTINO ON COMENTARIO.ID_DESTINO = DESTINO.ID_DESTINO"></asp:SqlDataSource>
                </li>
                <li>
                    <asp:Label ID="Label6" runat="server" AssociatedControlID="Descripcion">Comentario nuevo:</asp:Label>
                    <asp:TextBox runat="server" ID="Descripcion" Height="68px" Width="294px"  />
                </li>
            </ol>
            <asp:Button ID="ButtonRegistrar" runat="server" CommandName="MoveNext" Text="Modificar" OnClick="ButtonRegistrar_Click"/>
    </fieldset>
</asp:Content>