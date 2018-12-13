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
            txt_consecutivo.Text = Request.QueryString["consecutivo"].ToString();
            txtbox_prefiInput.Text = Request.QueryString["prefijo"].ToString();
            rangoI_Input.Text = Request.QueryString["rangoIni"].ToString();
            rangoF_Input.Text = Request.QueryString["rangoFin"].ToString();

        }

        protected void btn_actualizar_Click(object sender, EventArgs e)
        {

            try
            {
                conn.Open();
                //Ejecuta el stored procedure
                cmd = new SqlCommand("sp_editar_consecutivo", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = Request.QueryString["id"].ToString();//de momento esta quemado, pero debe de ser dinamico
                cmd.Parameters.Add("@consecutivo", SqlDbType.VarChar).Value = txt_consecutivo.Text;
                cmd.Parameters.Add("@prefijo", SqlDbType.VarChar).Value = txtbox_prefiInput.Text;
                cmd.Parameters.Add("@rango_inicial", SqlDbType.Int).Value = rangoI_Input.Text;
                cmd.Parameters.Add("@rango_final", SqlDbType.Int).Value = rangoF_Input.Text;
                //dbm.addBitaData(conn, "2", "Editando consecutivo", common.getRegistryType(2), "Editando consecutivo " + txt_consecutivo.Text);
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