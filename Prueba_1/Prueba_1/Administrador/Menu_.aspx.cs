using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prueba_1.Administrador
{
    public partial class Menu_ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonRegistrar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Administrador/RegistroDestino.aspx");
        }

        protected void ButtonRegis_Voluntario_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Administrador/ResgistoVoluntariado.aspx");
        }

        protected void ButtonEliminar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Administrador/EliminarDestino.aspx");
        }

        protected void ButtonModificar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Administrador/ModDestino.aspx");
        }
    }
}