using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vuelos
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void btn_compra1_Click(object sender, EventArgs e)
        {
            Session["buytUrl"] = "compra.aspx?destino=indonesia&consecutivo=3";
            Response.Redirect("login.aspx");
        }

        protected void btn_reserva1_Click(object sender, EventArgs e)
        {
            Session["renttUrl"] = "reserva.aspx?destino=indonesia&consecutivo=3";
            Response.Redirect("login.aspx");

        }
    }
}