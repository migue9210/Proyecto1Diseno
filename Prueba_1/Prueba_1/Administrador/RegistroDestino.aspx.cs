using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using Microsoft.VisualBasic;
using Prueba_1.Usuarios;

namespace Prueba_1.Administrador
{
    public partial class RegistroDestino : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // Este metodo registra el destino
        protected void ButtonRegistrar_Click(object sender, EventArgs e)
        {
{
            try
            {
                using (SqlCommand reserva = new SqlCommand("InsertarDestino", Conexion_SQL.getConexion()))
                {
                    reserva.CommandType = CommandType.StoredProcedure;
                    reserva.Parameters.Add("Nombre", SqlDbType.NVarChar).Value = Name.Text;
                    reserva.Parameters.Add("Descripcion", SqlDbType.NVarChar).Value = Descripcion.Text;
                    reserva.Parameters.Add("Cali", SqlDbType.Int).Value = Cali.Text;
                    reserva.Parameters.Add("URL", SqlDbType.NChar).Value = url.Text;
                    reserva.ExecuteNonQuery();
                    Response.Redirect("~/Administrador/Menu_.aspx");
                }
            }
            catch (Exception ex)
            {
                string sScript = @"";
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "Error Grid", sScript);
            }
        }
    }
    }
}