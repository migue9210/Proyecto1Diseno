<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistroDestino.aspx.cs" Inherits="Prueba_1.Administrador.RegistroDestino" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %></h1>
        <h4>Complete el siguiente formulario</h4>
    </hgroup>  
    <fieldset>
                        <legend>Formulario de registro</legend>
                        <ol>
                            <li>
                                <asp:Label ID="Label1" runat="server" AssociatedControlID="Name">Nombre:</asp:Label>
                                <asp:TextBox runat="server" ID="Name"  />
                            </li>
                            <li>
                                <asp:Label ID="Label5" runat="server" AssociatedControlID="Pais">Pais:</asp:Label>
                                <asp:TextBox runat="server" ID="Pais"  />
                            </li>
                            <li>
                                <asp:Label ID="Label6" runat="server" AssociatedControlID="Descripcion">Descripcion:</asp:Label>
                                <asp:TextBox runat="server" ID="Descripcion"  />
                            </li>
                            <li>
                                <asp:Label ID="Label2" runat="server" AssociatedControlID="Cali">Calificacion:</asp:Label>
                                <asp:TextBox runat="server" ID="Cali" />
                            </li>
                            <li>
                                <asp:Label ID="Label8" runat="server" AssociatedControlID="Url">URL:</asp:Label>
                                <asp:TextBox runat="server" ID="url" TextMode="Url"  />
                            </li>
                        </ol>
                        <asp:Button ID="ButtonRegistrar" runat="server" CommandName="MoveNext" Text="Registrarse" OnClick="ButtonRegistrar_Click" />
           </fieldset>
</asp:Content>
