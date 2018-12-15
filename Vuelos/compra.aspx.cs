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
        HttpMethods methods = new HttpMethods();
        DataBaseManagement manage = new DataBaseManagement();
        Common common = new Common();
        List<Int32> cards = new List<int>();
        List<Int32> oldCards = new List<int>();
        int consecutivo = 0;
        string usuario = "";
        int balance = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            usuario = Session["usserLogged"].ToString();
            txt_destino.Text = Request.QueryString["destino"].ToString();
            consecutivo = Convert.ToInt32(Request.QueryString["consecutivo"]);
            myDIV.Attributes.Add("style", "display:none");
            div2.Attributes.Add("style", "display:none");
            conn.ConnectionString = WebConfigurationManager.AppSettings["connectionStringPago"];
            conn.Open();
            //Ejecuta el stored procedure
            cmd = new SqlCommand("sp_getUsercards", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@user", SqlDbType.VarChar).Value = "dsalas";
            conn.Close();
            cards = management.getCardsByUser(cmd, conn);
            getLastCardDigits(cards);
            cmd = new SqlCommand("getAllcards", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@usuario", SqlDbType.VarChar).Value = usuario;
            conn.Close();
            oldCards = management.getAllCardsByUser(cmd, conn);
            insertDataIntoDropDown();
            conn.ConnectionString = WebConfigurationManager.AppSettings["connectionStringServicios"];


        }


        public string getUserEcriptedCard(string cardNumb)
        {
            string cardNumber = "";
            string number = cardNumb.Replace("x", "").ToString();
            for (int i = 0; i < oldCards.Count; i++)
            {
                var a = oldCards[i].ToString();

                if (oldCards[i].ToString().Contains(number))
                {
                    cardNumber =oldCards[i].ToString();
                }
            }
            return cardNumber;
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

       
        private int getUserBalance(string user, string card)
        {
            int currentBalance = Convert.ToInt32(methods.getUserBalance(user, card));
            return balance;

        }
        private bool isUserWithMoney(int balance, int total)
        {
            bool isWithMoney = false;
            int totalValue = balance - total;
            if (totalValue > 0)
            {
                isWithMoney = true;
            }
            return isWithMoney;

        }

        public int getTickets(int consecutivo)
        {
            conn.Open();
            cmd = new SqlCommand("sp_getAvailableTickets", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@consecutivo", SqlDbType.Int).Value = consecutivo;
            conn.Close();
            int value = Convert.ToInt32(manage.getColumValue1(cmd, conn));
            return value;
        }

        public void setTicketVuelo(int consecutivo)
        {
            conn.Open();
            cmd = new SqlCommand("sp_updateTickets", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@consecutivo", SqlDbType.Int).Value = consecutivo;
            cmd.Parameters.Add("@cantidadDisponible", SqlDbType.Int).Value = consecutivo;
            cmd.ExecuteNonQuery();
            conn.Close();
           
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (CheckBox2.Checked)
            {

                methods.postUserAccount(Convert.ToInt32(txt_numTarjeta.Text),Convert.ToInt32(txt_mesExp.Text),Convert.ToInt32(txt_anoExp.Text),Convert.ToInt32(txt_ccv.Text),tipoTarjeta.SelectedValue.ToString(),usuario,tipoTarjeta.SelectedValue.ToString());
                int balance = Convert.ToInt32(methods.getUserBalance(usuario, txt_numTarjeta.Text));
                int price = getPriceByTicket(1);
                int total =  Convert.ToInt32(txt_cantBol.Text) * price;
                string type = methods.getCardType(Convert.ToInt32(txt_numTarjeta.Text));
                if (type.Trim().Contains("Debito"))
                {
                    int newTotal = balance - total;
                    methods.updateUserBalance(usuario, txt_numTarjeta.Text, total);

                }
                else
                {
                    int newTotal = balance + total;
                    methods.updateUserBalance(usuario, txt_numTarjeta.Text, total);

                }

            }
            else
            {
                string card = getUserEcriptedCard(DropDownList1.SelectedValue.ToString());
                int balance = Convert.ToInt32(methods.getUserBalance(usuario, card));
                int price = getPriceByTicket(1);
                int total = Convert.ToInt32(txt_cantBol.Text) * price;
                string type = methods.getCardType(Convert.ToInt32(card));
                if (type.Trim().Contains("Debito"))
                {
                    int newTotal = balance - total;
                    methods.updateUserBalance(usuario, txt_numTarjeta.Text, total);

                }
                else
                {
                    int newTotal = balance + total;
                    methods.updateUserBalance(usuario, txt_numTarjeta.Text, total);

                }
            }
        }

    }
}