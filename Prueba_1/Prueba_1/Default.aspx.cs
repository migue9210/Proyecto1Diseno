using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

 //Pagina de inicio
namespace Prueba_1
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void VisitarButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Destinos/Tortuguero.aspx");
        }

        protected void VisitarButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Destinos/Monteverte.aspx");
        }

        protected void VisitarButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Destinos/Arenal.aspx");
        }

        protected void VisitarButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Destinos/Tamarindo.aspx");
        }

        protected void VisitarButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Destinos/ManuelAntonio.aspx");
        }
    }
}