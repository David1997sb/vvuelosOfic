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
    public partial class EditPassword : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection();
        SqlCommand cmd;
        SqlDataReader rs;
        SqlDataAdapter adapter;
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.ConnectionString = WebConfigurationManager.AppSettings["connectionStringServicios"];
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "setInter();", true);

        }

        protected void btnCambiaPass_Click(object sender, EventArgs e)
        {
            try {
                conn.Open();
                cmd = new SqlCommand("pr_update_password", conn);
                //Se indica que la variable de tipo command va ser de tipo stored procedure
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@username", SqlDbType.VarChar).Value = txtUsuario.Text;
                cmd.Parameters.Add("@password", SqlDbType.VarChar).Value = txtPass.Text;
                cmd.ExecuteNonQuery();
            } catch (Exception exe)
            {
                var ee = exe; 
             }
            

        }
    }
}