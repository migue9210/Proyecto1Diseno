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
    public class CargarDestinos
    {
        public DataSet CargaGridCompleto(int ciudad, int provincia, int pais)
        {
            SqlDataAdapter da = new SqlDataAdapter("dbo.CargarDestinos", Conexion_SQL.getConexion());
            da.SelectCommand.CommandTimeout = 0;
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.Add("@idCiudad", SqlDbType.Int).Value = ciudad;
            da.SelectCommand.Parameters.Add("@idProvincia", SqlDbType.Int).Value = provincia;
            da.SelectCommand.Parameters.Add("@idPais", SqlDbType.Int).Value = pais;
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

        public DataSet CargaGridPP(int provincia, int pais)
        {

            SqlDataAdapter da = new SqlDataAdapter("dbo.CargarDestinosXpp", Conexion_SQL.getConexion());
            da.SelectCommand.CommandTimeout = 0;
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            //da.SelectCommand.Parameters.Add("@idCiudad", SqlDbType.Int).Value = ciudad;
            da.SelectCommand.Parameters.Add("@idProvincia", SqlDbType.Int).Value = provincia;
            da.SelectCommand.Parameters.Add("@idPais", SqlDbType.Int).Value = pais;
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

        public DataSet CargaGridPais(int pais)
        {

            SqlDataAdapter da = new SqlDataAdapter("CargarDestinosXpais", Conexion_SQL.getConexion());
            da.SelectCommand.CommandTimeout = 0;
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
           // da.SelectCommand.Parameters.Add("@idCiudad", SqlDbType.Int).Value = ciudad;
           // da.SelectCommand.Parameters.Add("@idProvincia", SqlDbType.Int).Value = provincia;
            da.SelectCommand.Parameters.Add("@idPais", SqlDbType.Int).Value = pais;
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