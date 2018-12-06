using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web;

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

        public void postMethod()
        {
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create("http://localhost:9601/api/Values?param1=1&param2=2");//
            request.Method = "Post";
            request.KeepAlive = true;
            request.ContentType = "appication/json";
            request.Headers.Add("Content-Type", "appication/json");
            //request.ContentType = "application/x-www-form-urlencoded";

            HttpWebResponse response = (HttpWebResponse)request.GetResponse();
            string myResponse = "";
            using (System.IO.StreamReader sr = new System.IO.StreamReader(response.GetResponseStream()))
            {
                myResponse = sr.ReadToEnd();
            }
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
    }
}