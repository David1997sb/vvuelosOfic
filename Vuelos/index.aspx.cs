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
            Session["currentUrl"] = "compra.aspx?destino=vietnam&consecutivo=3";
            Response.Redirect("login.aspx");
        }

        protected void btn_reserva1_Click(object sender, EventArgs e)
        {
            Session["currentUrl"] = "reserva.aspx?destino=vietnam&consecutivo=3";
            Response.Redirect("login.aspx");

        }

        protected void btn_compra2_Click(object sender, EventArgs e)
        {
            Session["currentUrl"] = "compra.aspx?destino=singapur&consecutivo=2";
            Response.Redirect("login.aspx");
        }

        protected void btn_reserva2_Click(object sender, EventArgs e)
        {
            Session["currentUrl"] = "reserva.aspx?destino=singapur&consecutivo=2";
            Response.Redirect("login.aspx");
        }

        protected void btn_compra3_Click(object sender, EventArgs e)
        {
            Session["currentUrl"] = "compra.aspx?destino=indonesia&consecutivo=3";
            Response.Redirect("login.aspx");
        }

        protected void btn_reserva3_Click(object sender, EventArgs e)
        {
            Session["currentUrl"] = "reserva.aspx?destino=indonesia&consecutivo=3";
            Response.Redirect("login.aspx");
        }

        protected void btn_compra4_Click(object sender, EventArgs e)
        {
            Session["currentUrl"] = "compra.aspx?destino=italia&consecutivo=5";
            Response.Redirect("login.aspx");
        }

        protected void btn_reserva4_Click(object sender, EventArgs e)
        {
            Session["currentUrl"] = "reserva.aspx?destino=italia&consecutivo=5";
            Response.Redirect("login.aspx");
        }

        protected void btn_compra5_Click(object sender, EventArgs e)
        {
            Session["currentUrl"] = "compra.aspx?destino=polonia&consecutivo=1";
            Response.Redirect("login.aspx");
        }

        protected void btn_reserva5_Click(object sender, EventArgs e)
        {
            Session["currentUrl"] = "reserva.aspx?destino=polonia&consecutivo=1";
            Response.Redirect("login.aspx");
        }
    }
}