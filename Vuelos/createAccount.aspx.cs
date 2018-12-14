using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Configuration;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Vuelos
{
    public partial class createAccount : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection();
        SqlCommand cmd;
        SqlDataReader rs;
        Encriptioner encript = new Encriptioner();
        Common common = new Common();
        DataBaseManagement dbm = new DataBaseManagement();
        HttpMethods http = new HttpMethods();
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.ConnectionString = WebConfigurationManager.AppSettings["connectionStringServicios"];
        }
        protected void btnCrear_Click(object sender, EventArgs e)
        {
            if (CaptchaValidate())
            {
                try
                {
                    conn.Open();
                    //Ejecuta el stored procedure
                    cmd = new SqlCommand("sp_insert_user", conn);
                    //Se indica que la variable de tipo command va ser de tipo stored procedure
                    cmd.CommandType = CommandType.StoredProcedure;
                    //Se agregan los valores de los parametros del stored procedure
                    cmd.Parameters.Add("@nombre", SqlDbType.VarChar).Value = (txtNombre.Text);
                    cmd.Parameters.Add("@primer_apellido", SqlDbType.VarChar).Value = (txtApellido1.Text);
                    cmd.Parameters.Add("@segundo_apellido", SqlDbType.VarChar).Value = (txtApellido2.Text);
                    cmd.Parameters.Add("@usuario", SqlDbType.VarChar).Value = (txtNombreUsuario.Text);
                    cmd.Parameters.Add("@correo", SqlDbType.VarChar).Value = (txtCorreo.Text);
                    cmd.Parameters.Add("@rol", SqlDbType.VarChar).Value = ("Administrador");
                    cmd.Parameters.Add("@contrasena", SqlDbType.VarChar).Value = (txtPassword.Text);
                    int rowsAffected = cmd.ExecuteNonQuery();
                    Session["usserLogged"] = txtNombreUsuario.Text;
                    dbm.addBitaData(conn, "1", "Agregando usuario", common.getRegistryType(1), "Agregando al usuario " + txtNombreUsuario.Text);
                    conn.Close();
                }
                catch (Exception se)
                {
                    //dbm.addErrorData(conn, common.getErrorType(1));
                    var x = se.ToString();
                }
            }

        }

        protected void btnVerificar_Click(object sender, EventArgs e)
        {
            List<string> posibleNames = new List<string>();
            bool isAvailable = http.getUserNameAvailable(txtNombreUsuario.Text);
            if (!isAvailable)
            {
                for (int i = 0; i < 3; i++)
                {
                    posibleNames.Add(common.getUserName());
                }
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Este usuario no se encuentra disponible se le sugieren los siguientes:" + posibleNames[0] + " ," + posibleNames[1] + " ," + posibleNames[2] + "');", true);

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