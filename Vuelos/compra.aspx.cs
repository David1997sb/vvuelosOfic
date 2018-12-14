using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;


namespace Vuelos
{
    public partial class compra : System.Web.UI.Page
    {

        SqlConnection conn = new SqlConnection();
        SqlCommand cmd;
        SqlDataAdapter adapter;
        DataSet ds = new DataSet();
        DataBaseManagement management = new DataBaseManagement();
        List<string> encriptedCards = new List<string>();
        protected void Page_Load(object sender, EventArgs e)
        {
            myDIV.Attributes.Add("style", "display:none");
            div2.Attributes.Add("style", "display:none");
            conn.ConnectionString = WebConfigurationManager.AppSettings["connectionStringPago"];
            conn.Open();
            //Ejecuta el stored procedure
            cmd = new SqlCommand("sp_getUsercards", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@user", SqlDbType.VarChar).Value = "dsalas";
            conn.Close();
            List<Int32> cards = management.getCardsByUser(cmd, conn);
            getLastCardDigits(cards);

        }


        public void getLastCardDigits(List<Int32> cardNums)
        {
            string mystring = "";
            for (int i = 0; i < cardNums.Count; i++)
            {
                string generic = "xxxxxxxxxxxx";
                mystring = cardNums[i].ToString();
                generic += mystring.Substring(mystring.Length - 5);
                 
                var a = generic;
                encriptedCards.Add(generic);
            }
        }

        protected void CheckBox_TarjetasUsuario_CheckedChanged(object sender, EventArgs e)
        {
            myDIV.Attributes.Add("style", "display:block");
            insertDataIntoDropDown();
        }

        public void insertDataIntoDropDown()
        {
            for (int i = 0; i < encriptedCards.Count; i++)
            {
                DropDownList1.Items.Add(encriptedCards[i]);
            }
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            div2.Attributes.Add("style", "display:block");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}