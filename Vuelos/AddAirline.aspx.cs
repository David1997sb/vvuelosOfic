using System;
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
    public partial class AddAgency : System.Web.UI.Page
    {
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
            
            cmd = new SqlCommand("sp_getFirst_available_Airline", conn);
            //Se llama el objeto que se encarga de leer el resultado 
            consecutive = dbm.getColumValue1(cmd,conn);
            txt_consecutivo.Text = consecutive;           
            codigo = dbm.getMinMaxConsecutive(conn,consecutive);
            txt_codAerolinea.Text = codigo.ToString();
        }

        protected void btn_aceptar_Click(object sender, EventArgs e)
        {
            try
            {

              conn.Open(); 
              cmd = new SqlCommand("sp_insert_airline", conn);
                //Se indica que la variable de tipo command va ser de tipo stored procedure
                
                //Ejecuta el stored procedure
                cmd.CommandType = CommandType.StoredProcedure;
                //Se agregan los valores de los parametros del stored procedure
              cmd.Parameters.Add("@consecutivo", SqlDbType.VarChar).Value = consecutive;
              cmd.Parameters.Add("@cod_aerolinea", SqlDbType.VarChar).Value =  (txt_codAerolinea.Text);
              cmd.Parameters.Add("@nombre_agencia", SqlDbType.VarChar).Value = (txt_nombreAgencia.Text);
              cmd.Parameters.Add("@imagen_agencia", SqlDbType.VarChar).Value = Server.MapPath(fp_imagen.FileName).ToString();
              //Se ejecuta el query
              cmd.ExecuteNonQuery();
             // dbm.addBitaData(conn, "1", "Agregando agencia", common.getRegistryType(1), "Agregando agencia " + txt_nombreAgencia.Text);
              conn.Close();

                //Se actualiza el valor del tipo consecutivo 
                conn.Open();
                cmd = new SqlCommand("sp_update_tipo_consec", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@consecutivo", SqlDbType.VarChar).Value = consecutive;
                cmd.ExecuteNonQuery();
              ScriptManager.RegisterClientScriptBlock(this, GetType(),
          "alertMessage", @"alert('Datos agregados correctamente')", true);
              conn.Close();

          }
          catch(Exception exe)
          {
                conn.Close();
              //dbm.addErrorData(conn, common.getErrorType(1));
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

        public int getMinMaxConsecutive()
        {

            /*cmd = new SqlCommand("sp_get_min_max_consecutive", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@consecutive", SqlDbType.VarChar).Value = consecutive;
            rangoIni = Convert.ToInt32(dbm.getColumValue1(cmd,conn));
            rangoFin = Convert.ToInt32(dbm.getColumValue2(cmd,conn));
            int value = common.getRandConsecutiveValue(rangoIni, rangoFin);
            return value;    */
            return 1;
        }

        protected void btn_aceptar_Click1(object sender, EventArgs e)
        {

        }
    }
}