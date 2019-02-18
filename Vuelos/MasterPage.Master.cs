using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vuelos
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Session["usserLogged"] as string))
            {
                btn_inicioSesion.Text = "Iniciar sesion";
            }
            else
            {
                btn_inicioSesion.Text = "Cerrar sesion";

                txt_bienvenido.Text = "Bienvenido " + Session["usserLogged"].ToString();
            }
            
        }

        protected void btn_inicioSesion_Click(object sender, EventArgs e)
        {

            Response.Redirect("login.aspx");
        }
    }
}