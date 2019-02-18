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
    public partial class EditCountry : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection();
        SqlCommand cmd;
        SqlDataReader rs;
        DataBaseManagement dbm = new DataBaseManagement();
        Common common = new Common();
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.ConnectionString = WebConfigurationManager.AppSettings["connectionStringServicios"];
            txt_codPais.Text = Request.QueryString["codPais"].ToString();
            txt_nombrePais.Text = Request.QueryString["nombrePais"].ToString();
        }

        protected void btn_aceptar_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                //Ejecuta el stored procedure
                cmd = new SqlCommand("sp_edit_country", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@consecutivo", SqlDbType.VarChar).Value = Request.QueryString["consecutivo"].ToString();//de momento esta quemado, pero debe de ser dinamico
                cmd.Parameters.Add("@code", SqlDbType.VarChar).Value = txt_codPais.Text;//de momento esta quemado, pero debe de ser dinamico
                cmd.Parameters.Add("@country_name", SqlDbType.VarChar).Value = txt_nombrePais.Text;
                var a = cmd.Parameters.Add("@image_path", SqlDbType.VarChar).Value = Server.MapPath(fp_imagen.FileName).ToString();
                int rowsAffected = cmd.ExecuteNonQuery();
                //dbm.addBitaData(conn, "2", "Editando país", common.getRegistryType(2), "Editando país " + txt_nombrePais.Text);
                conn.Close();
                ScriptManager.RegisterClientScriptBlock(this, GetType(),
            "alertMessage", @"alert('Datos actualizados correctamente')", true);
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
            txt_codPais.Text = "";
            txt_nombrePais.Text = "";
            fp_imagen.Attributes.Clear();
        }

        protected void btn_limpiar_Click(object sender, EventArgs e)
        {
            
        }

        protected void btn_limpiar_Click1(object sender, EventArgs e)
        {
            txt_codPais.Text = "";
            txt_nombrePais.Text = "";
            fp_imagen.Attributes.Clear();
        }

        protected void btn_borrar_Click1(object sender, EventArgs e)
        {
            txt_codPais.Text = "";
            txt_nombrePais.Text = "";
            fp_imagen.Attributes.Clear();
        }

        protected void btn_cerrar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Countries.aspx");
        }
    }
}