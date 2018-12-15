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
    public partial class Airlines : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection();
        SqlCommand cmd;
        SqlDataReader rs;
        SqlDataAdapter adapter;
        DataSet ds = new DataSet();
        Encriptioner encriptioner = new Encriptioner();
        //sp_airlines
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.ConnectionString = WebConfigurationManager.AppSettings["connectionStringServicios"];
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddAirline.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = GridView1.SelectedRow;
            Response.Redirect("EditAirline.aspx?consecutivo=" + gr.Cells[1].Text + "&codAero=" + gr.Cells[2].Text + "&nombreAgencia=" + gr.Cells[3].Text + "&imagen=" + gr.Cells[4].Text);
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("AddAirline.aspx");
        }
    }
}