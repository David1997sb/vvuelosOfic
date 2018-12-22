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
    public partial class AddCountry : System.Web.UI.Page
    {
        //sp_insert_country
        SqlConnection conn = new SqlConnection();
        SqlCommand cmd;
        Encriptioner encriptioner = new Encriptioner();
        Common common = new Common();
        DataBaseManagement dbm = new DataBaseManagement();
        string consecutive;
        int codigo;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.ConnectionString = WebConfigurationManager.AppSettings["connectionStringServicios"];
            cmd = new SqlCommand("sp_getFirst_available_country", conn);
            consecutive = dbm.getColumValue1(cmd, conn);
            txt_consecutivo.Text = consecutive;
            codigo = dbm.getMinMaxConsecutive(conn, consecutive);
            txt_codPais.Text = codigo.ToString();
            //consecutive = dbm.getColumValue1(cmd, conn);
            //txt_consecutivo.Text = consecutive;
        }

      

        protected void btn_limpiar_Click(object sender, EventArgs e)
        {
        }

        protected void btn_aceptar_Click1(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                //Ejecuta el stored procedure
                cmd = new SqlCommand("sp_create_country", conn);
                //Se indica que la variable de tipo command va ser de tipo stored procedure
                cmd.CommandType = CommandType.StoredProcedure;
                //Se agregan los valores de los parametros del stored procedure
                cmd.Parameters.Add("@consecutivo", SqlDbType.VarChar).Value = consecutive;
                cmd.Parameters.Add("@name_country", SqlDbType.VarChar).Value = (txt_nombrePais.Text);
                cmd.Parameters.Add("@image_country", SqlDbType.VarChar).Value = Server.MapPath(fp_imagen.FileName).ToString();
                cmd.Parameters.Add("@code", SqlDbType.VarChar).Value = (txt_codPais.Text);
                //Se ejecuta el query
                cmd.ExecuteNonQuery();
                conn.Close();
                dbm.addBitaData(conn, "1", "Agregando pais", common.getRegistryType(1), "Agregando pais " + txt_nombrePais.Text);
                ScriptManager.RegisterClientScriptBlock(this, GetType(),
            "alertMessage", @"alert('Datos actualizados correctamente')", true);
                conn.Close();

            }
            catch (Exception exe)
            {
                conn.Close();
                dbm.addErrorData(conn, common.getErrorType(1));
                ScriptManager.RegisterClientScriptBlock(this, GetType(),
            "alertMessage", @"alert('Error al ingresar los datos')", true);
            }
        }

        protected void btn_limpiar_Click1(object sender, EventArgs e)
        {

            txt_nombrePais.Text = "";
            txt_codPais.Text = "";
            fp_imagen.Attributes.Clear();
        }

        protected void btn_borrar_Click(object sender, EventArgs e)
        {

            txt_nombrePais.Text = "";
            txt_codPais.Text = "";
            fp_imagen.Attributes.Clear();
        }
        
        protected void btn_cerrar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Countries.aspx");
        }
    }
}