<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Inscripcion.aspx.cs" Inherits="Prueba_1.Inscripcion1" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %></h1>
        <h4>Complete el siguiente formulario</h4>
    </hgroup>  
        <fieldset>
            <legend>Formulario de inscripcion</legend>
            <ol>
                <li>
                    <asp:Label ID="Label1" runat="server" AssociatedControlID="Descripcion">Destino:</asp:Label>
                    <asp:ListBox ID="ListBoxDestino" runat="server" Height="25px" Width="309px" DataSourceID="SqlDataSource1" DataTextField="NOMBRE" DataValueField="ID_DESTINO" style="font-size: medium"></asp:ListBox>
                   
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TuristearConnectionString2 %>" SelectCommand="SELECT [ID_DESTINO], [NOMBRE] FROM [DESTINO]"></asp:SqlDataSource>
                   
                </li>
                <li>
                    <asp:Label ID="Label5" runat="server" AssociatedControlID="Descripcion">Tipo de voluntariado:</asp:Label>
                    <asp:ListBox ID="ListBoxTipo" runat="server" Height="23px" Width="309px" DataSourceID="SqlDataSource2" DataTextField="NOMBRE" DataValueField="ID_TIPO_VOLUNTARIADO" style="font-size: medium"></asp:ListBox>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TURISTEAR_CRConnectionString %>" SelectCommand="SELECT [ID_TIPO_VOLUNTARIADO], [NOMBRE] FROM [TIPO_VOLUNTARIADO]"></asp:SqlDataSource>
                </li>
                <li>
                    <asp:Label ID="Label2" runat="server" AssociatedControlID="Descripcion">Disponibilidad:</asp:Label>
                    <asp:TextBox runat="server" ID="Descripcion" Width="295px" />
                </li>
                <li>
                    <asp:Label ID="Label8" runat="server" AssociatedControlID="Perfil">Detalles:</asp:Label>
                    <asp:TextBox runat="server" ID="Perfil" Width="293px"  />
                </li>
            </ol>
            <asp:Button ID="ButtonRegistrar" runat="server" CommandName="MoveNext" Text="Inscripcion" OnClick="ButtonRegistrar_Click"/>
    </fieldset>
</asp:Content>
