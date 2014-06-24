<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Prueba_1.Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>Contactenos.</h1>
    </hgroup>

    <section class="contact">
        <header>
            <h3>Teléfono:</h3>
        </header>
        <p>
            <span class="label">Principal:</span>
            (506)8615-0813</p>
    </section>
    <section class="contact">
        <header>
            <h3>Correo electrónico:</h3>
        </header>
        <p>
            <span class="label">Fernanda Fernandez Ocampo:</span>
            sferx22@gmail.com
        </p>
        <p>
            <span class="label">Miguel Angel Gonzalez: </span>
            migue9210@gmail.com
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Dirección:</h3>
        </header>
        <p>
            Tecnologico de Costa Rica, Sede Central Cartago,Costa Rica</p>
    </section>

    <ul>
            <li><a id="A1" runat="server" href="~/">Home</a></li>
            <li><a id="A2" runat="server" href="~/About">About</a></li>
            <li><a id="A3" runat="server" href="~/Contact">Contact</a></li>
        </ul>
</asp:Content>