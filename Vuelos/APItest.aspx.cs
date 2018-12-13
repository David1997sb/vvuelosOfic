using System;
using System.Net;
using System.Web.UI.WebControls;

namespace Vuelos
{
    public partial class APItest : System.Web.UI.Page
    {
        HttpMethods HttpMethods = new HttpMethods();
        protected void Page_Load(object sender, EventArgs e)
        {
            //bool a = HttpMethods.getUserCardAsync("dsalas", "111142222");
            //HttpMethods.postUserAccount(123456789, 12, 2022, 6996, "mastercard", "amartinez");
            //HttpMethods.updateUserBalance("dsalas", "1111111", 25000);
            //HttpMethods.getUserBalance("dsalas", "1111111");
            //HttpMethods.getUserBalance();
            //HttpMethods.loginAsync();
            //string a = HttpMethods.getRequest("http://localhost:61978/api/Users");
        }

        public void getRequest()
        {
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create("");
            request.KeepAlive = false;
            request.Method = "GET";
            //request.ContentType = "application/x-www-form-urlencoded";

            HttpWebResponse response = (HttpWebResponse)request.GetResponse();
            string myResponse = "";
            using (System.IO.StreamReader sr = new System.IO.StreamReader(response.GetResponseStream()))
            {
                myResponse = sr.ReadToEnd();
            }
            Response.Write(myResponse);
        }

        protected void GridView1_RowEditing(object sender, EventArgs e)
        {

            GridViewRow gr = GridView1.SelectedRow;
            Label lbl = (Label)GridView1.SelectedRow.Cells[0].FindControl("GridView1");
            Response.Redirect("CreateConsec.aspx?id=" + lbl.Text + "&consecutivo=" + GridView1.SelectedRow.Cells[1].Text);
        }
    }
}