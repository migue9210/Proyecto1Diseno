using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data;
using System.Data.SqlClient;


namespace Prueba_1.Usuarios
{
     public class Conexion_SQL
    {
        public static SqlConnection getConexion()
        {
            try
            {
                SqlConnection cn = new SqlConnection("Data Source=qqyjnm19qw.database.windows.net,1433;Initial Catalog=Turistear;User ID=Turistear@qqyjnm19qw;Password=Solaris2014");
                cn.Open();
                return cn;
            }
            catch (Exception ex)
            {
                return null;
            }
        }
    }
}