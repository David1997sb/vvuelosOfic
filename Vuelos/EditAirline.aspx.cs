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
    public partial class EditAirline : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection();
        SqlCommand cmd;
        SqlDataReader rs;
        DataBaseManagement dbm = new DataBaseManagement();
        Common common = new Common();

        protected void Page_Load(object sender, EventArgs e)
        {
            conn.ConnectionString = WebConfigurationManager.AppSettings["connectionStringServicios"];
        }

        protected void btn_aceptar_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                //Ejecuta el stored procedure
                cmd = new SqlCommand("sp_edit_airline", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@code", SqlDbType.VarChar).Value = txt_codAerolinea.Text;//de momento esta quemado, pero debe de ser dinamico
                cmd.Parameters.Add("@agency_name", SqlDbType.VarChar).Value = txt_nombreAgencia.Text;
                var a = cmd.Parameters.Add("@image_path", SqlDbType.VarChar).Value = Server.MapPath(fp_imagen.FileName).ToString();
                int rowsAffected = cmd.ExecuteNonQuery();
                dbm.addBitaData(conn, "2", "Editando Aerolinea", common.getRegistryType(2), "Editando aerolinea " + txt_nombreAgencia.Text);
                ScriptManager.RegisterClientScriptBlock(this, GetType(),
            "alertMessage", @"alert('Datos actualizados correctamente')", true);
                conn.Close();
            }
            catch (Exception exe)
            {
                dbm.addErrorData(conn, common.getErrorType(2));
                ScriptManager.RegisterClientScriptBlock(this, GetType(),
            "alertMessage", @"alert('Error al ingresar los datos')", true);
            }
        }

        protected void btn_borrar_Click(object sender, EventArgs e)
        {
            txt_codAerolinea.Text = "";
            txt_nombreAgencia.Text = "";
            fp_imagen.Attributes.Clear();
        }
    }
}