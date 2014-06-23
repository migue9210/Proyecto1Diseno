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
    public partial class EliminarDestino : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonRegistrar_Click(object sender, EventArgs e)
        {
            using (SqlCommand reserva = new SqlCommand("dbo.EliminarDestino", Conexion_SQL.getConexion()))
            {
                reserva.CommandType = CommandType.StoredProcedure;
                reserva.Parameters.Add("ID_DESTINO", SqlDbType.Int).Value = ListBoxDestino.SelectedValue;
                reserva.ExecuteNonQuery();
                Response.Redirect("~/Administrador/Menu_.aspx");
            }
        }
    }
}
