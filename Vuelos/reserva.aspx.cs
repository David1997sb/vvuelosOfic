using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vuelos
{
    public partial class reserva : System.Web.UI.Page
    {
        Common common = new Common();

        protected void Page_Load(object sender, EventArgs e)
        {
            string a = common.generateBookId();
            int rand = common.getRandConsecutiveValue(1, 1000000);
            txtBox_BookId.Text = a;
            txtBox_numReserva.Text = rand.ToString();

        }
    }
}