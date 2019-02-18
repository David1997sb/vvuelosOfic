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
            txtFecha.Text = common.getHour();


        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
           
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnCrearVuelo_Click(object sender, EventArgs e)
        {
            try
            {

                if (verifyFields())
                {

                    conn.Open();
                    //Ejecuta el stored procedure
                    cmd = new SqlCommand("sp_insert_vuelos", conn);
                    //Se indica que la variable de tipo command va ser de tipo stored procedure
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@aerolinea", SqlDbType.VarChar).Value = dropDown_Aero.SelectedItem.Value;
                    cmd.Parameters.Add("@procedencia", SqlDbType.VarChar).Value = dropDown_Pais.SelectedItem.Value;
                    cmd.Parameters.Add("@fecha", SqlDbType.VarChar).Value = common.GetDate();
                    cmd.Parameters.Add("@estado", SqlDbType.VarChar).Value = dropDown_tipoPuerta.SelectedItem.Value;
                    cmd.Parameters.Add("@puerta", SqlDbType.VarChar).Value = dropDown_numPuerta.SelectedItem.Value;
                    cmd.Parameters.Add("@boletos", SqlDbType.VarChar).Value = txtBox_CantBoletos.Text;
                    cmd.Parameters.Add("@hora", SqlDbType.VarChar).Value = txtFecha.Text;
                    cmd.Parameters.Add("@precio", SqlDbType.VarChar).Value = txt_Precio.Text;
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, GetType(),
                               "alertMessage", @"alert('Revise la informacion desplegada')", true);
                }
            }
            catch(Exception exe)
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(),
                               "alertMessage", @"alert('Revise la informacion desplegada')", true);
            }


        }

        public bool verifyFields()
        {
            bool areGood = true;
            if(dropDown_numPuerta.SelectedItem.Value == "Seleccione el tipo de puerta"||txtBox_CantBoletos.Text==""||txt_Precio.Text=="")
            {
                areGood = false;
            }
            return areGood;
        }
    }
}