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
    public partial class ResgistoVoluntariado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Este metodo registra el voluntariado
        protected void ButtonRegistrar_Click(object sender, EventArgs e)
        {
            try
                {
                    using (SqlCommand reserva = new SqlCommand("dbo.InsertarVoluntariado", Conexion_SQL.getConexion()))
                    {
                        reserva.CommandType = CommandType.StoredProcedure;
                        reserva.Parameters.Add("ID_DESTINO", SqlDbType.Int).Value = ListBoxDestino.SelectedValue;
                        reserva.Parameters.Add("ID_TIPO_VOLUNTARIADO", SqlDbType.Int).Value = ListBoxTipo.SelectedValue;
                        reserva.Parameters.Add("HORAS_SEMANALES", SqlDbType.Int).Value = ListBoxHoras.SelectedValue;
                        reserva.Parameters.Add("DESCRIPCION", SqlDbType.VarChar).Value = Descripcion.Text;
                        reserva.Parameters.Add("PERFIL_VOLUNTARIADO", SqlDbType.VarChar).Value = Perfil.Text;
                        reserva.Parameters.Add("VACANTES", SqlDbType.Int).Value = Vacantes.Text;
                        reserva.Parameters.Add("ENCARGADO", SqlDbType.VarChar).Value = Encargado.Text;
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
