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
    public partial class Countries : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection();
        SqlCommand cmd;
        SqlDataAdapter adapter;
        DataSet ds = new DataSet();


        protected void Page_Load(object sender, EventArgs e)
        {
            conn.ConnectionString = WebConfigurationManager.AppSettings["connectionStringServicios"];
            //Ejecuta el stored procedure
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddCountry");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = GridView1.SelectedRow;
            Response.Redirect("EditCountry.aspx?consecutivo=" + gr.Cells[1].Text + "&codPais=" + gr.Cells[2].Text + "&nombrePais=" + gr.Cells[3].Text + "&imagen=" + gr.Cells[4].Text);
        }
    }
}