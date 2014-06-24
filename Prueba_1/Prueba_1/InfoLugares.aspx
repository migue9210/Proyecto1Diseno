<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InfoLugares.aspx.cs" Inherits="Prueba_1.InfoLugares" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <fieldset>
                    <legend>Informacion de los lugares:</legend>
                    <ol>
                        <li>
                            <asp:Label ID="Label1" runat="server">Ubicación:</asp:Label>
                            <asp:ListBox ID="ListBoxDestino" runat="server" Height="25px" Width="309px" DataSourceID="SqlDataSource3" DataTextField="NOMBRE_PAIS" DataValueField="ID_PAIS" style="font-size: medium"></asp:ListBox>                                
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:TuristearConnectionString2 %>" SelectCommand="SELECT [ID_PAIS], [NOMBRE_PAIS] FROM [PAIS]"></asp:SqlDataSource>
                        </li>
                    </ol>
                    <asp:Button ID="Button1" runat="server" CommandName="Login" Text="Informacion" OnClick="Button1_Click"/>
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="DESTINO" HeaderText="DESTINO" />
                            <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" />
                            <asp:BoundField DataField="HORARIO" HeaderText="HORARIO" />
                            <asp:BoundField DataField="PRECIO" HeaderText="PRECIO" />
                        </Columns>
                    </asp:GridView>
                    <br />
                    <asp:Button ID="Button2" runat="server" CommandName="Login" Text="Comentar" OnClick="Button2_Click" />
                </fieldset>
</asp:Content>