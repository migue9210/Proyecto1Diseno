<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tamarindo.aspx.cs" Inherits="Prueba_1.Destinos.Tamarindo" %>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>Tamarindo, Guanacaste</h1>
    </hgroup>
    <section id="loginForm">
        
        <p>
            &nbsp;</p>
        <p>
            <img src="http://www.remax-oceansurf-cr.com/sites/www.remax-oceansurf-cr.com/files/images/tamarindo-beach.jpg" style="height: 350px; width: 558px" /></p>
        <p>
            <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">Registrarse</asp:HyperLink>
            si no tiene una cuenta.
        </p>
    </section>

    <section id="socialLoginForm">
        <h2>&nbsp;</h2>
        <div class="auto-style1">
        <br />
Situada a lo largo de la Costa Pacifico Norte de Costa Rica, Tamarindo es una de las ciudades de playa de más fácil acceso en la región. Con aguas cristalinas de color turquesa y el clima ideal, Tamarindo es uno de los destinos turísticos más populares por una buena razón. Caminos pavimentados llevan a los viajeros a un paraíso tropical en Guanacaste. Al ser una de las ciudades más desarrolladas de la región, Tamarindo tiene algo que ofrecer para todos los gustos. Si una familia está en busca de una escapada de aventura o una pareja está tratando de relajarse en su luna de miel, esta ciudad cuenta con las comodidades y la serenidad en una sola localidad. Tamarindo puede ser un destino turístico, pero todavía ofrece un ambiente relajado al estilo tradicional Costarricense. La extensa playa hace que incluso los días más concurridos sean relajantes.    
            <br />
            <br />
            Lugar para hospedaje recomendado:
                    <a href="http://www.losaltosdeeros.com/">Los altos de Eros</a><br />
            <br />
<br />
            <br />

        </div>
       
    </section>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .auto-style1
        {
            text-align: justify;
        }
    </style>
</asp:Content>