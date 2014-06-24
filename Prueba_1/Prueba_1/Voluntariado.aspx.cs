using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace Prueba_1
{
    public partial class Voluntariado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                //Esta funcion, hace un llenado del grid
                CargarVoluntariado oCargaGrid = new CargarVoluntariado();
                int pais = Convert.ToInt32(ListBox1.SelectedValue);
                DataSet ds = oCargaGrid.CargaGridPais(pais);
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                string sScript = @"";
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "Error Grid", sScript);
            }
        }

        
        protected void Button2_Click(object sender, System.EventArgs e)
        {
            Response.Redirect("~/Inscripcion.aspx");
        }
    }
}