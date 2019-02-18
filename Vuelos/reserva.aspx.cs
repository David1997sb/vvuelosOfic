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
    public partial class reserva : System.Web.UI.Page
    {
        Common common = new Common();
        HttpMethods methods = new HttpMethods();
        SqlConnection conn = new SqlConnection();
        SqlCommand cmd;
        SqlDataAdapter adapter;
        DataSet ds = new DataSet();
        DataBaseManagement management = new DataBaseManagement();
        List<string> encriptedCards = new List<string>();
        DataBaseManagement manage = new DataBaseManagement();
        List<Int32> cards = new List<int>();
        List<Int32> oldCards = new List<int>();
        int consecutivo = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            string a = common.generateBookId();
            int rand = common.getRandConsecutiveValue(1, 1000000);
            txtBox_BookId.Text = a;
            txtBox_numReserva.Text = rand.ToString();
             consecutivo = Convert.ToInt32(Request.QueryString["consecutivo"]);

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (verifyFields())
            {
                conn.ConnectionString = WebConfigurationManager.AppSettings["connectionStringServicios"];

                int vueloConsecutivo = getPriceByTicket(consecutivo);
                //methods.postReservation("dsalas", "reservacion", Convert.ToInt32(txtMonto.Text) * vueloConsecutivo, txtBox_BookId.Text,txtBox_numReserva.Text);

            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(),
                      "alertMessage", @"alert('Verifique la información desplegada')", true);
            }

        }

        public int getPriceByTicket(int consecutivo)
        {

            conn.Open();
            cmd = new SqlCommand("sp_getPriceByTicket", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@consecutivo", SqlDbType.Int).Value = consecutivo;
            conn.Close();
            int price = Convert.ToInt32(manage.getColumValue1(cmd, conn));
            return price;
        }

        public bool verifyFields()
        {
            bool areGood = true;
            if(txtMonto.Text=="" || txtMonto.Text == 0.ToString())
            {
                areGood = false;
            }
            return areGood;
        }

    }
}