<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InsertarConsejo.aspx.cs" Inherits="Prueba_1.Comentarios.InsertarComentario" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %></h1>
        <h4>Complete el siguiente formulario</h4>
    </hgroup>  
        <fieldset>
            <legend>Formulario</legend>
                <ol>
                    <li>
                        <asp:Label ID="Label1" runat="server" AssociatedControlID="Descripcion">Destino:</asp:Label>
                        <asp:ListBox ID="ListBoxDestino" runat="server" Height="28px" Width="321px" DataSourceID="SqlDataSource2" DataTextField="NOMBRE" DataValueField="ID_DESTINO" style="font-size: medium"></asp:ListBox>                                
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TuristearConnectionString %>" SelectCommand="SELECT [NOMBRE], [ID_DESTINO] FROM [DESTINO]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                    </li>
                    <li>
                        <asp:Label ID="Label6" runat="server" AssociatedControlID="Descripcion">Comentario:</asp:Label>
                        <asp:TextBox runat="server" ID="Descripcion" Height="79px" Width="321px"  />
                    </li>
                    <li>
                        <asp:Label ID="Label7" runat="server" AssociatedControlID="Descripcion">Calificación:</asp:Label>
                        <asp:ListBox ID="ListBoxHoras" runat="server" Height="24px" Width="321px" style="font-size: medium">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:ListBox>
                    </li>
                </ol>
                <asp:Button ID="ButtonRegistrar" runat="server" CommandName="MoveNext" Text="Comentar" OnClick="ButtonRegistrar_Click" />

<a href="https://twitter.com/share" class="twitter-share-button" data-url="https://wwww.turistear.azurewebsites.com" data-related="Descripcion" data-via="TuristearCR" data-lang="">Tweet</a>
<script>!function (d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0]; if (!d.getElementById(id)) {
        js = d.createElement(s); js.id = id;
        js.src = "https://platform.twitter.com/widgets.js"; fjs.parentNode.insertBefore(js, fjs);
    }
}(document, "script", "twitter-wjs");

</script>
        </fieldset>
</asp:Content>
