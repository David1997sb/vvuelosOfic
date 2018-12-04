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
    public partial class EditConsecutive : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection();
        String sql;
        SqlCommand cmd;
        SqlDataReader rs;
        DataBaseManagement dbm = new DataBaseManagement();
        Common common = new Common();
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.ConnectionString = WebConfigurationManager.AppSettings["connectionStringServicios"];
            
           
        }

        protected void btn_actualizar_Click(object sender, EventArgs e)
        {

            try
            {
                conn.Open();
                //Ejecuta el stored procedure
                cmd = new SqlCommand("sp_editar_consecutivo", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@code", SqlDbType.VarChar).Value = "1";//de momento esta quemado, pero debe de ser dinamico
                cmd.Parameters.Add("@description", SqlDbType.VarChar).Value = "Consecutivo";
                cmd.Parameters.Add("@consec", SqlDbType.VarChar).Value = txt_consecutivo.Text;
                cmd.Parameters.Add("@prefix", SqlDbType.Char).Value = txtbox_prefiInput.Text;
                cmd.Parameters.Add("@init_range", SqlDbType.Int).Value = Convert.ToInt32(rangoI_Input.Text);
                cmd.Parameters.Add("@final_range", SqlDbType.Int).Value = Convert.ToInt32(rangoF_Input.Text);
                dbm.addBitaData(conn, "2", "Editando consecutivo", common.getRegistryType(2), "Editando consecutivo " + txt_consecutivo.Text);
                cmd.ExecuteNonQuery();
                conn.Close();
            }
            catch (Exception se)
            {
                dbm.addErrorData(conn, common.getErrorType(2));
                var x = se.ToString();
            }
        }
    }
}