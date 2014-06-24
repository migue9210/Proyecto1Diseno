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

namespace Prueba_1.Usuarios
{
    public partial class RegistroUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonRegistrar_Click(object sender, EventArgs e)
        {
            {//Este metodo registra los usuarios
                try
                {
                    using (SqlCommand reserva = new SqlCommand("dbo.InsertarUsuario", Conexion_SQL.getConexion()))
                    {
                        reserva.CommandType = CommandType.StoredProcedure;
                        reserva.Parameters.Add("Nombre", SqlDbType.NVarChar).Value = Name.Text;
                        reserva.Parameters.Add("Apellido1", SqlDbType.NVarChar).Value = Apellido1.Text;
                        reserva.Parameters.Add("Apellido2", SqlDbType.NVarChar).Value = Apellido2.Text;
                        reserva.Parameters.Add("Correo", SqlDbType.NVarChar).Value = Email.Text;
                        reserva.Parameters.Add("Edad", SqlDbType.Int).Value = Edad.Text;
                        reserva.Parameters.Add("Telefono", SqlDbType.Int).Value = Phone.Text;
                        reserva.Parameters.Add("Password", SqlDbType.NVarChar).Value = Password.Text;
                        reserva.ExecuteNonQuery();
                        Response.Redirect("~/Administrador/Login.aspx");
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