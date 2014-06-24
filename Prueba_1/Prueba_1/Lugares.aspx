<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Lugares.aspx.cs" Inherits="Prueba_1.Lugares" %>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
        <p>
    Seleccione el pais para realizar la busqueda:
    </p>
    <p>
       <asp:ListBox ID="ListBoxPais" runat="server" Height="26px" Width="121px"></asp:ListBox>
       <asp:Button ID="Button2" runat="server" Text="Buscar Destino" Height="33px" Width="109px"/>
    </p>
     <p>
    En caso, de buscar algo mas especifico utilice las siguientes:
        </p>
    <p style="text-align: center">
        <span class="label">Provincia: </span>
        <asp:ListBox ID="ListBoxProvincia" runat="server" Height="21px" Width="121px" DataSourceID="SqlDataSource2" DataTextField="NOMBRE_PROVINCIA" DataValueField="ID_PROVINCIA"></asp:ListBox>
        <asp:Button ID="BuscarDestino0" runat="server" Text="Buscar Destino" Height="33px"  Width="109px" OnClick="BuscarDestino0_Click" />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TuristearConnectionString %>" SelectCommand="SELECT [ID_PROVINCIA], [NOMBRE_PROVINCIA] FROM [PROVINCIA]"></asp:SqlDataSource>
        </p>
    <p style="text-align: center">
        <span class="label">Ciudad:</span><asp:ListBox ID="ListBoxCiudad" runat="server" Height="26px" Width="121px" DataSourceID="SqlDataSource3" DataTextField="NOMBRE_CIUDAD" DataValueField="ID_CIUDAD"></asp:ListBox>
        <asp:Button ID="Button1" runat="server" Text="Buscar Destino" Height="33px" Width="109px" OnClick="Button1_Click" />
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:TuristearConnectionString %>" SelectCommand="SELECT [ID_CIUDAD], [NOMBRE_CIUDAD] FROM [CIUDAD]"></asp:SqlDataSource>
    </p>
    <p style="text-align: center">
        &nbsp;</p>
        <hgroup class="title">
        <h2>Destino de la zona:<br />
            <asp:GridView ID="GridViewDestinos" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" />
                    <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" />
                    <asp:BoundField DataField="CLASIFICACION" HeaderText="CLASIFICACION" />
                    <asp:BoundField DataField="URL" HeaderText="URL" />
                </Columns>
            </asp:GridView>
            <br />
            <br />
            <br />
            </h2>
    </hgroup>
</asp:Content>