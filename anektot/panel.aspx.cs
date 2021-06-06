using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace anektot
{
    public partial class panel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["kullanici_adi"] == null)
            {
                Response.Redirect("giris.aspx");
            }
            else {
                Label1.Text = Session["kullanici_adi"].ToString();
            }
            
        }
    }
}