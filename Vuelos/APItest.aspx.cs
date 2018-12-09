using System;
using System.Net;

namespace Vuelos
{
    public partial class APItest : System.Web.UI.Page
    {
        HttpMethods HttpMethods = new HttpMethods();
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpMethods.postUserAccount(123456789, 12, 2022, 6996, "mastercard", "amartinez");
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
    }
}