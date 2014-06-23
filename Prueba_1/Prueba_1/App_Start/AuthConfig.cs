using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.Membership.OpenAuth;

namespace Prueba_1
{
    internal static class AuthConfig
    {
        public static void RegisterOpenAuth()
        {
            // Consulte http://go.microsoft.com/fwlink/?LinkId=252803 para obtener más detalles sobre la configuración esta aplicación ASP.NET
            // para que admita el inicio de sesión mediante servicios externos.

            OpenAuth.AuthenticationClients.AddTwitter(
                consumerKey: "628ZaN8tmWQkuwKm7YPm0Ee8l",
                consumerSecret: "fw1K79DlvHWLubbnsA3ZbKPTeC1Aypo68fKt1sJzaOwfkYtv2y");

            //OpenAuth.AuthenticationClients.AddFacebook(
            //    appId: "su id de aplicación de Facebook",
            //    appSecret: "su secreto de aplicación de Facebook");

            //OpenAuth.AuthenticationClients.AddMicrosoft(
            //    clientId: "su id de cliente de cuenta de Microsoft",
            //    clientSecret: "su secreto de cliente de cuenta de Microsoft");

            //OpenAuth.AuthenticationClients.AddGoogle();
        }
    }
}