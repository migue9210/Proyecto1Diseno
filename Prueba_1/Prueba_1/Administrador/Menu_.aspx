﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Menu_.aspx.cs" Inherits="Prueba_1.Administrador.Menu_" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>Cuenta&nbsp; de Administrador</h1>
    </hgroup>
<asp:Button ID="ButtonRegistrar" runat="server" Text="Registrar Destino" OnClick="ButtonRegistrar_Click" Width="222px" />
    <br />
    <br />
<asp:Button ID="ButtonModificar" runat="server" CommandName="MoveNext" Text="Modificar Destino" OnClick="ButtonModificar_Click" Width="222px" />
    <br />
    <br />
<asp:Button ID="ButtonEliminar" runat="server" CommandName="MoveNext" Text="Eliminar Destino" OnClick="ButtonEliminar_Click" Width="222px" />
    <br />
    <br />
<asp:Button ID="ButtonRegis_Voluntario" runat="server" CommandName="MoveNext" Text="Registrar Voluntariado" OnClick="ButtonRegis_Voluntario_Click" Width="222px" />
    <br />
    <br />
<asp:Button ID="Button1" runat="server" Text="Modificar Comentario" OnClick="Button1_Click" Width="222px"/>
    <br />
    <br />
<asp:Button ID="Button2" runat="server" CommandName="MoveNext" Text="Eliminar Comentario" Width="222px"/>



</asp:Content> 