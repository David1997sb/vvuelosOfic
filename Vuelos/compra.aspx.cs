using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Web.UI;

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
            //usuario = "dsalas";
            //txt_destino.Text = "vietnam";
            txt_destino.Text = Request.QueryString["destino"].ToString();
            consecutivo = 3;
            //consecutivo = Convert.ToInt32(Request.QueryString["consecutivo"]);
            myDIV.Attributes.Add("style", "display:none");
            div2.Attributes.Add("style", "display:none");
            conn.ConnectionString = WebConfigurationManager.AppSettings["connectionStringPago"];
            conn.Open();
            //Ejecuta el stored procedure
            cmd = new SqlCommand("sp_getUsercards", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@user", SqlDbType.VarChar).Value = Session["usserLogged"].ToString();
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

        public bool verifyFieldsCurrent()
        {
            bool areOk = true;
            if(txt_destino.Text==""|| txt_cantBol.Text == "" || DropDownList1.SelectedItem.Value== "Selccione la tarjeta" || dropdown.SelectedItem.Value== "Selccion el tipo de tarjeta")
            {
                areOk = false;
            }
            return areOk;
        }

        public bool verifyNewCard()
        {
            bool areOk = true;
            if(txt_numTarjeta.Text==""|| txt_ccv.Text=="" || txt_mesExp.Text=="" || txt_anoExp.Text == "")
            {
                areOk = false;
            }
            return areOk;
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
            try
            {

                if (CheckBox2.Checked)
                {
                    if (verifyNewCard())
                    {

                        methods.postUserAccount(Convert.ToInt32(txt_numTarjeta.Text), Convert.ToInt32(txt_mesExp.Text), Convert.ToInt32(txt_anoExp.Text), Convert.ToInt32(txt_ccv.Text), tipoTarjeta.SelectedValue.ToString(), usuario, tipoTarjeta.SelectedValue.ToString());
                        int balance = Convert.ToInt32(methods.getUserBalance(usuario, txt_numTarjeta.Text));
                        int price = getPriceByTicket(1006);
                        int total = Convert.ToInt32(txt_cantBol.Text) * price;
                        string type = methods.getCardType(Convert.ToInt32(txt_numTarjeta.Text));
                        if (type.Trim().Contains("Debito"))
                        {
                            int newTotal = balance - total;
                            methods.updateUserBalance(usuario, txt_numTarjeta.Text, total);
                            txt_total.Text = total.ToString();

                        }
                        else
                        {
                            int newTotal = balance + total;
                            methods.updateUserBalance(usuario, txt_numTarjeta.Text, total);
                            txt_total.Text = total.ToString();
                        }

                    }
                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this, GetType(),
                           "alertMessage", @"alert('Revise la informacion desplegada')", true);
                    }
                }
                else
                {
                    if (verifyFieldsCurrent())
                    {
                        string card = getUserEcriptedCard(DropDownList1.SelectedValue.ToString());
                        int balance = Convert.ToInt32(methods.getUserBalance(usuario, card));
                        int price = getPriceByTicket(1006);
                        int total = Convert.ToInt32(txt_cantBol.Text) * price;
                        txt_total.Text = total.ToString();
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
                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this, GetType(),
                            "alertMessage", @"alert('Revise la informacion desplegada')", true);
                    }

                }
            }
            catch(Exception exe)
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(),
                            "alertMessage", @"alert('Revise la informacion desplegada')", true);
            }
        }

    }
}