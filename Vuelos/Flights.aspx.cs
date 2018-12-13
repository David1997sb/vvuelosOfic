using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vuelos
{
    public partial class Flights : System.Web.UI.Page
    {SqlConnection conn = new SqlConnection();
        String sql;
        SqlCommand cmd;
        SqlDataReader rs;
        SqlDataAdapter adapter;
        DataSet ds = new DataSet();
        Common common = new Common();
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.ConnectionString = WebConfigurationManager.AppSettings["connectionStringServicios"];
            
        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
            conn.Open();
            //Ejecuta el stored procedure
            cmd = new SqlCommand("sp_insert_vuelos", conn);
            //Se indica que la variable de tipo command va ser de tipo stored procedure
            /*cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@vuelo", SqlDbType.VarChar).Value = dropDown_vuelo.SelectedItem.Value;
            cmd.Parameters.Add("@aerolinea", SqlDbType.VarChar).Value = dropDown_Aero.SelectedItem.Value;
            cmd.Parameters.Add("@procedencia", SqlDbType.VarChar).Value = dropDown_Pais.SelectedItem.Value;
            cmd.Parameters.Add("@fecha", SqlDbType.VarChar).Value = common.GetDate();
            cmd.Parameters.Add("@estado", SqlDbType.VarChar).Value = dropDown_tipoPrueta.SelectedItem.Value;
            cmd.Parameters.Add("@puerta", SqlDbType.VarChar).Value = dropDown_numPuerta.SelectedItem.Value;
            cmd.Parameters.Add("@boletos", SqlDbType.VarChar).Value = txtBox_CantBoletos.Text;
            cmd.Parameters.Add("@hora", SqlDbType.VarChar).Value = common.getHour();
            cmd.Parameters.Add("@precio", SqlDbType.VarChar).Value = txt_Precio.Text;
            cmd.ExecuteNonQuery();
            conn.Close();*/
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

       
    }
}