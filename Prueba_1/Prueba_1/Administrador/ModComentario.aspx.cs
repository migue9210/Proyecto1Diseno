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
    public partial class ModComentario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Este metodo modifica los comentarios de los usuarios
        protected void ButtonRegistrar_Click(object sender, EventArgs e)
        {
            using (SqlCommand reserva = new SqlCommand("ModComentario", Conexion_SQL.getConexion()))
            {
                reserva.CommandType = CommandType.StoredProcedure;
                reserva.Parameters.Add("ID_COMENTARIO", SqlDbType.Int).Value = ListBoxDestino.SelectedValue;
                reserva.Parameters.Add("MENSAJE", SqlDbType.NVarChar).Value = Descripcion.Text;
                reserva.ExecuteNonQuery();
                Response.Redirect("~/Administrador/Menu_.aspx");
            }
        }
    }
}