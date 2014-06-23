<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ResgistoVoluntariado.aspx.cs" Inherits="Prueba_1.Administrador.ResgistoVoluntariado" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %></h1>
        <h4>Complete el siguiente formulario</h4>
    </hgroup>  
    <fieldset>
                        <legend>Formulario de registro</legend>
                        <ol>
                            <li>
                                <asp:Label ID="Label1" runat="server" AssociatedControlID="Descripcion">Destino:</asp:Label>
                                <asp:ListBox ID="ListBoxDestino" runat="server" Height="28px" Width="309px" DataSourceID="SqlDataSource1" DataTextField="NOMBRE" DataValueField="ID_DESTINO"></asp:ListBox>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TURISTEAR_CRConnectionString %>" SelectCommand="SELECT [ID_DESTINO], [NOMBRE] FROM [DESTINO]"></asp:SqlDataSource>
                            </li>
                            <li>
                                <asp:Label ID="Label5" runat="server" AssociatedControlID="Descripcion">Tipo de voluntariado:</asp:Label>
                                <asp:ListBox ID="ListBoxTipo" runat="server" Height="28px" Width="309px" DataSourceID="SqlDataSource2" DataTextField="NOMBRE" DataValueField="ID_TIPO_VOLUNTARIADO"></asp:ListBox>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TURISTEAR_CRConnectionString %>" SelectCommand="SELECT [ID_TIPO_VOLUNTARIADO], [NOMBRE] FROM [TIPO_VOLUNTARIADO]"></asp:SqlDataSource>
                            </li>
                            <li>
                                <asp:Label ID="Label7" runat="server" AssociatedControlID="Descripcion">Horas:</asp:Label>
                                <asp:ListBox ID="ListBoxHoras" runat="server" Height="24px" Width="309px">
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                    <asp:ListItem>7</asp:ListItem>
                                    <asp:ListItem>8</asp:ListItem>
                                    <asp:ListItem>9</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                </asp:ListBox>
                            </li>
                            <li>
                                <asp:Label ID="Label2" runat="server" AssociatedControlID="Descripcion">Descripcion:</asp:Label>
                                <asp:TextBox runat="server" ID="Descripcion" />
                            </li>
                            <li>
                                <asp:Label ID="Label8" runat="server" AssociatedControlID="Perfil">Perfil del voluntariado:</asp:Label>
                                <asp:TextBox runat="server" ID="Perfil"  />
                            </li>
                              <li>
                                <asp:Label ID="Label3" runat="server" AssociatedControlID="Vacantes">Vacantes:</asp:Label>
                                <asp:TextBox runat="server" ID="Vacantes" TexMode="Number" />
                            </li>
                            <li>
                                <asp:Label ID="Label4" runat="server" AssociatedControlID="Encargado">Encargado:</asp:Label>
                                <asp:TextBox runat="server" ID="Encargado"/>
                            </li>
                        </ol>
                        <asp:Button ID="ButtonRegistrar" runat="server" CommandName="MoveNext" Text="Registrarse" OnClick="ButtonRegistrar_Click"/>
           </fieldset>
</asp:Content>

