﻿using System;
using System.Collections.Generic;
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

namespace Prueba_1
{
    public partial class Inscripcion1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonRegistrar_Click(object sender, EventArgs e)
        {
        //Este funcion, me llama el SP, el cual me permite insertar en la BD la inscripcion
            using (SqlCommand reserva = new SqlCommand("InsertarInscripcion", Conexion_SQL.getConexion()))
            {
                reserva.CommandType = CommandType.StoredProcedure;
                reserva.Parameters.Add("ID_DESTINO", SqlDbType.Int).Value = ListBoxDestino.SelectedValue;
                reserva.Parameters.Add("DISPONIBILIDAD", SqlDbType.NVarChar).Value = Descripcion.Text;
                reserva.Parameters.Add("Detalle", SqlDbType.NVarChar).Value = Perfil.Text;
                reserva.ExecuteNonQuery();
                Response.Redirect("~/Default.aspx");
            }
        }
    }
}