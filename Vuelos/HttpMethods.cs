using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Collections.Specialized;
using System.Text;

namespace Vuelos
{
    public class HttpMethods
    {
        private static readonly HttpClient client = new HttpClient();

        public string getRequest(string url)
        {
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(url);
            request.KeepAlive = false;
            request.Method = "GET";
            //request.ContentType = "application/x-www-form-urlencoded";

            HttpWebResponse response = (HttpWebResponse)request.GetResponse();
            string myResponse = "";
            using (System.IO.StreamReader sr = new System.IO.StreamReader(response.GetResponseStream()))
            {
                myResponse = sr.ReadToEnd();
            }
            return myResponse;
            //Response.Write(myResponse);
        }

        

        public async System.Threading.Tasks.Task loginAsync()
        {

            var values = new Dictionary<string, string>
                {
                   { "userName", "dsalas" },
                   { "password", "admin" }
                };

            var content = new FormUrlEncodedContent(values);

            var response = await client.PostAsync("http://localhost:53069/api/login/getUserAuthentication", content);

            var responseString = await response.Content.ReadAsStringAsync();
        }

        public string getUserBalance(string user, string numeroTarjeta)
        {
            var responseString = "";
            using (var client = new WebClient())
            {
                var values = new NameValueCollection();
                values["usuario"] = user;
                values["num_tarjeta"] = numeroTarjeta;

                var response = client.UploadValues("http://localhost:53069/api/login/getUserBalance", values);

                responseString = Encoding.Default.GetString(response);
            }
            string result = responseString.ToString();
            return result;
        }

        public string updateUserBalance(string user, string numeroTarjeta, Int32 monto)
        {
            var responseString = "";
            using (var client = new WebClient())
            {
                var values = new NameValueCollection();
                values["usuario"] = user;
                values["num_tarjeta"] = numeroTarjeta;
                values["monto"] = monto.ToString();

                var response = client.UploadValues("http://localhost:53069/api/login/updateBalance", values);

                responseString = Encoding.Default.GetString(response);
            }
            string result = responseString.ToString();
            return result;
        }

        public string postUserAccount(int numeroTarjeta, int mesExp, int anoExp, int cvv, string tipo, string usuario)
        {
            var responseString = "";
            using (var client = new WebClient())
            {
                var values = new NameValueCollection();
                values["num_tarjeta"] = numeroTarjeta.ToString();
                values["mes_exp"] = mesExp.ToString();
                values["ano_exp"] = anoExp.ToString();
                values["cvv"] = cvv.ToString();
                values["tipo"] = tipo;
                values["usuario"] = usuario;

                    var response = client.UploadValues("http://localhost:53069/api/login/creatAccount", values);

                responseString = Encoding.Default.GetString(response);
            }
            string result = responseString.ToString();
            return result;
        }
        public string postReservation(string user, string tipo, int monto, string bookId)
        {
            var responseString = "";
            using (var client = new WebClient())
            {
                var values = new NameValueCollection();
                values["usuario"] = user;
                values["monto"] = monto.ToString();
                values["tipo"] = tipo;
                values["bookId"] = tipo;
                var response = client.UploadValues("http://localhost:53069/api/login/bookId", values);
                responseString = Encoding.Default.GetString(response);
            }
            string result = responseString.ToString();
            return result;
        }

        public string easyPayUser(string user, string numCuenta)
        {
            var responseString = "";
            using (var client = new WebClient())
            {
                var values = new NameValueCollection();
                values["usuario"] = user;
                values["num_tarjeta"] = numCuenta;
                var response = client.UploadValues("http://localhost:53069/api/login/getEasyPayUser", values);
                responseString = Encoding.Default.GetString(response);
            }
            string result = responseString.ToString();
            return result;
        }

        public  bool getUserCardAsync(string user, string cardNum)
        {
            bool value = false;
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create("http://localhost:53069/api/pago/hasCard/?user="+user+"&cardNumber="+cardNum);
            request.KeepAlive = false;
            request.Method = "GET";
            //request.ContentType = "application/x-www-form-urlencoded";

            HttpWebResponse response = (HttpWebResponse)request.GetResponse();
            string myResponse = "";
            using (System.IO.StreamReader sr = new System.IO.StreamReader(response.GetResponseStream()))
            {
                myResponse = sr.ReadToEnd();
            }
            value = bool.Parse(myResponse);
            return value;
            
        }
    }
}