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
    public partial class Consecutive : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection();
        SqlCommand cmd;
        SqlDataReader rs;
        SqlDataAdapter adapter;
        DataSet ds = new DataSet();
        Encriptioner encriptioner =new Encriptioner();
        protected void Page_Load(object sender, EventArgs e)
        {

                conn.ConnectionString = WebConfigurationManager.AppSettings["connectionStringServicios"];
                conn.Open();
                //Ejecuta el stored procedure
                cmd = new SqlCommand("sp_valores_consecutivo", conn);
                //Se indica que la variable de tipo command va ser de tipo stored procedure
                cmd.CommandType = CommandType.StoredProcedure;
                adapter = new SqlDataAdapter(cmd);
                adapter.Fill(ds);
                conn.Close();
                //GridView1.DataSource = ds.Tables[0];
                //GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateConsec.aspx");
        }
        protected void grd_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = GridView1.SelectedRow;


            Response.Redirect("EditConsecutive.aspx?id=" + gr.Cells[1].Text + "&consecutivo=" + gr.Cells[2].Text+ "&prefijo=" + gr.Cells[3].Text+ "&rangoIni="+gr.Cells[4].Text+ "&rangoFin="+ gr.Cells[5].Text);
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("CreateConsec.aspx");
        }
    }
}