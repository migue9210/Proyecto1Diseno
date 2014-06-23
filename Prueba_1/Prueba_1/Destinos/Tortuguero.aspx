<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tortuguero.aspx.cs" Inherits="Prueba_1.Destinos.Tortuguero" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>Parque Nacional Tortuguero, Limon</h1>
    </hgroup>
    <section id="loginForm">
        
        <p>
            &nbsp;</p>
        <p>
            <img alt="Tortuguero Canal" src="http://www.govisitcostarica.co.cr/images/photos/mlg-Tortuguero-Canal.jpg" /></p>
        <p>
            <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">Registrarse</asp:HyperLink>
            si no tiene una cuenta.
        </p>
    </section>

    <section id="socialLoginForm">
        <h2>&nbsp;</h2>
        <div class="auto-style1">
        <br />
       Frecuentado por turistas de todo el mundo, El parque Nacional Tortuguero es otro yacimiento de anidación para las tortugas en Costa Rica. Es una de las áreas mas importantes para anidar del hemisferio Occidental de la tortuga verde en via de extinción. El contundente Parque Nacional Tortuguero yace en la hermosa costa Caribe de Costa Rica en la región nor-oriental del país a aproximadamente 50 millas al norte de Limón. Limita con el Océano Atlántico hacia el oriente, y se encuentra adyacente al Refugio Barra del Colorado hacia el norte. 

Protegiendo mas de 22 millas de playa comenzando desde la boca del Rió Tortuguero hasta Parisimina, este Parque Nacional de 19,000 hectáreas es un área clave para la animación de las tortugas marinas con coraza afelpada y asi como otras tortugas que lo visitan todos los años. Fue declarado Parque Nacional en 1970 con el objetivo de proteger la población de tortugas verdes del mundo, y es tambien una reserva de micos, jaguares y una variedad de mamíferos, pájaros y reptiles.           <br />
            <br />
            Lugar para hospedaje recomendado:
                    <a href="http://www.manatuscostarica.com/es">Hotel Manatus</a><br />
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
