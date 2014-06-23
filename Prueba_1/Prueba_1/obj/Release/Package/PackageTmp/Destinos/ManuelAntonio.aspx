<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManuelAntonio.aspx.cs" Inherits="Prueba_1.Destinos.ManuelAntonio" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>Parque Nacional Manuel Antonio, Puntarenas Norte</h1>
    </hgroup>
    <section id="loginForm">
        
        <p>
            &nbsp;</p>
        <p>
            <img alt="Monteverde Cloud Forest in the clouds" src="http://www.govisitcostarica.co.cr/images/photos/mlg-perfect-cloudforest-monteverde.jpg" style="width: 536px" /></p>
        <p>
            <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">Registrarse</asp:HyperLink>
            si no tiene una cuenta.
        </p>
    </section>

    <section id="socialLoginForm">
        <h2>&nbsp;</h2>
        <div class="auto-style1">
        <br />
El parque nacional más popular en Costa Rica, el Parque Nacional Manuel Antonio es el parque más visitado del país. Creado en 1972 y abarca una superficie aproximada de 682 hectáreas, este parque es uno de los lugares más diversos y hermosos de la región.Considerado como uno de los más pequeños parques nacionales en Costa Rica, lo que este parque le falta en tamaño, lo compensa con la belleza natural. 
            <br />
            <br />
            Lugar para hospedaje recomendado:
                    <a href="http://gaiahr.com/">Hotel Gaiahr</a><br />
            <br />
&nbsp;<br />
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