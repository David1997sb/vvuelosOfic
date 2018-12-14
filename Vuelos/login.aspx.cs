using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Net;
using System.Web;
using System.Web.Configuration;
using System.Web.Script.Serialization;
using System.Web.UI;

namespace Vuelos
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection();
        SqlCommand cmd;
        Encriptioner encriptioner = new Encriptioner();
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.ConnectionString = WebConfigurationManager.AppSettings["connectionStringServicios"];
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (CaptchaValidate())
            {
                conn.Open();
                //Ejecuta el stored procedure
                cmd = new SqlCommand("pr_login", conn);
                //Se indica que la variable de tipo command va ser de tipo stored procedure
                cmd.CommandType = CommandType.StoredProcedure;
                //Se agregan los valores de los parametros del stored procedure
                cmd.Parameters.Add("@username", SqlDbType.VarChar).Value = txtUser.Text;
                cmd.Parameters.Add("@password", SqlDbType.VarChar).Value = txtPassword.Text;
                //cmd.Parameters.Add("@Result", SqlDbType.VarChar).Value = "";
                //Con la linea siguiente lo que se realiza es obtener el "Output" del query para saber si se ejecut[o correctamente
                cmd.Parameters.Add("@Result", SqlDbType.Bit).Direction = ParameterDirection.Output;
                //Se ejecuta el query
                int rowsAffected = cmd.ExecuteNonQuery();
                //Vamos a tener un valor true o false para verificar si el comando se ejecutó correctamente
                string x = cmd.Parameters["@Result"].Value.ToString();
                if (x.Equals("True"))
                {
                    var z = "exito";
                    Session["usserLogged"] = txtUser.Text;
                    Response.Redirect("index.aspx");
                }
                else
                {
                    var z = "Falló";
                }
                conn.Close();
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(),
            "alertMessage", @"alert('Ingrese el captcha correctamente')", true);
            }
            
        }
        public bool CaptchaValidate()
        {
            string ResponseByGoogle = Request["g-recaptcha-response"];

            string CaptchaSecretKey = "6Le3gX8UAAAAAAuEyOuwfQcVBM5MR8vAcMcL-T9l";
            bool Valid = false;

            HttpWebRequest req = (HttpWebRequest)WebRequest.Create("https://www.google.com/recaptcha/api/siteverify?secret=" + CaptchaSecretKey + "&response=" + ResponseByGoogle);

            try
            {
                using (WebResponse wResponse = req.GetResponse())
                {
                    using (StreamReader readStream = new
                        StreamReader(wResponse.GetResponseStream()))
                    {
                        string jsonResponse = readStream.ReadToEnd();

                        JavaScriptSerializer js = new JavaScriptSerializer();
                        CaptchaValidate data = js.Deserialize<CaptchaValidate>(jsonResponse);

                        Valid = Convert.ToBoolean(data.success);


                    }
                }

                return Valid;
            }
            catch (WebException ex)
            {
                throw ex;
            }

        }
    }
}


