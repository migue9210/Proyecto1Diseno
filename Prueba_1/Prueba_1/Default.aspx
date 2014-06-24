<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Prueba_1._Default" %>


<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1 class="auto-style5">TURISTEARCR:</h1>
            </hgroup>
            <p style="text-align: justify" class="auto-style4">
                <strong>Costa Rica es un país centroamericano de gran potencial turístico que está valorado como uno de los destinos internacionales más visitados. Una de sus principales fuentes de ingreso es el turismo. DEMOCRACIA, PAZ, PAIS SIN EJERCITO DESDE 1949.
            </strong>
            </p>
            <p style="text-align: justify" class="auto-style1">
                <strong><span class="auto-style3">Aunque el país es pequeño y cubre solo el 0.03% de la superficie del planeta, tiene el privilegio de ser el hábitat del 5% de la biodiversidad existente en todo el mundo. El 25.58% de su territorio está protegido bajo diversas formas de conservación. Costa Rica, ofrece además un excelente escenario para las inversiones y el establecimiento de importantes empresas internacionales, gracias al reconocido nivel académico de su población, al buen estándar de servicios modernos y a su estabilidad sociopolítica.&quot;</span> </strong>
            </p>
        </div>
    </section>
</asp:Content>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>Destino destacados:</h3>
    <ol class="round">
        <li class="one">
            <h5>Reserva de Bosque Nuboso de Monteverde</h5>
            <asp:Button ID="VisitarButton" runat="server" Text="Visitar" Width="136px" Height="31px" OnClick="VisitarButton_Click"/>   
        </li>
    </ol>
    <ol class="round">
        <li class="two">
            <h5>Parque Nacional Volcan Arenal </h5>
            <asp:Button ID="VisitarButton2" runat="server" Text="Visitar" Width="136px" Height="31px" OnClick="VisitarButton2_Click"/> 
        </li>
    </ol>
    <ol class="round">
        <li class="three">
            <h5>Playa Tamarindo</h5>
            <asp:Button ID="VisitarButton3" runat="server" Text="Visitar" Width="136px" Height="31px" OnClick="VisitarButton3_Click"/> 
        </li>
    </ol> 
    <ol class="round">
        <li class="four">
            <h5> Parque Nacional Manuel Antonio</h5>
            <asp:Button ID="VisitarButton4" runat="server" Text="Visitar" Width="136px" Height="31px" OnClick="VisitarButton4_Click"/> 
        </li>
    </ol>  
    <ol class="round">
        <li class="five">
            <h5>Parque Nacional Tortuguero</h5>
            <asp:Button ID="VisitarButton5" runat="server" Text="Visitar" Width="136px" Height="31px" OnClick="VisitarButton5_Click"/> 
        </li>
    </ol>            
</asp:Content>

<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .auto-style1
        {
            color: #FFFFFF;
            font-family: Rockwell, Consolas, "Courier New", Courier, monospace;
            font-size: large;
            margin: 0;
        }
        .auto-style2
        {
            color: #FFFFFF;
        }
        .auto-style3 {
            font-size: medium;
        }
        .auto-style4 {
            color: #FFFFFF;
            font-family: Rockwell, Consolas, "Courier New", Courier, monospace;
            font-size: medium;
            margin: 0;
        }
        .auto-style5 {
            color: #FFFFFF;
            font-size: x-large;
        }
    </style>
</asp:Content>

