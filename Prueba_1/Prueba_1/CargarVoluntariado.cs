using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data;
using System.Data.SqlClient;
using Prueba_1.Usuarios;

namespace Prueba_1
{
    public class CargarVoluntariado
    {
        public DataSet CargaGridPais(int pais)
        {
            //Este funcion hace un llenado del data grid view
            SqlDataAdapter da = new SqlDataAdapter("CargarVoluntariado", Conexion_SQL.getConexion());
            da.SelectCommand.CommandTimeout = 0;
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.Add("@ID_DESTINO", SqlDbType.Int).Value = pais;
            DataSet ds = new DataSet();
            try
            {
                da.Fill(ds);
                da.Dispose();
                return ds;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}