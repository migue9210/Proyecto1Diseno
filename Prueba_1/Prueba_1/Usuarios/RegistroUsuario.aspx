<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistroUsuario.aspx.cs" Inherits="Prueba_1.Usuarios.RegistroUsuario" %>

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
                                <asp:Label ID="Label5" runat="server" AssociatedControlID="Apellido1">Primer Apellido</asp:Label>
                                <asp:TextBox runat="server" ID="Apellido1"  />
                            </li>
                            <li>
                                <asp:Label ID="Label6" runat="server" AssociatedControlID="Apellido2">Segundo Apellido</asp:Label>
                                <asp:TextBox runat="server" ID="Apellido2"  />
                            </li>
                            <li>
                                <asp:Label ID="Label2" runat="server" AssociatedControlID="Email">Dirección de correo electrónico</asp:Label>
                                <asp:TextBox runat="server" ID="Email" TextMode="Email" />
                            </li>
                            <li>
                                <asp:Label ID="Label7" runat="server" AssociatedControlID="Edad">Edad</asp:Label>
                                <asp:TextBox runat="server" ID="Edad"/>
                            </li>
                            <li>
                                <asp:Label ID="Label8" runat="server" AssociatedControlID="Phone">Telefono</asp:Label>
                                <asp:TextBox runat="server" ID="Phone" TextMode="Phone"  />
                            </li>
                            <li>
                                <asp:Label ID="Label3" runat="server" AssociatedControlID="Password">Contraseña</asp:Label>
                                <asp:TextBox runat="server" ID="Password" TextMode="Password" />
                            </li>
                        </ol>
                        <asp:Button ID="ButtonRegistrar" runat="server" CommandName="MoveNext" Text="Registrarse" OnClick="ButtonRegistrar_Click" />
           </fieldset>
</asp:Content>
