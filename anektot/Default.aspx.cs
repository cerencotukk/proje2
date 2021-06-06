using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace anektot
{
    public partial class anasayfa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            yaziGetir();
        }

        private void yaziGetir()
        {
            SqlConnection bag = new SqlConnection("Server=.;Database=anektot;Trusted_Connection=True");
            string sorgu = "select * from tbl_yazi order by yazi_tarih desc";
            SqlCommand kmt = new SqlCommand(sorgu, bag);
            bag.Open();
            SqlDataReader dr = kmt.ExecuteReader();
            yazilar.DataSource = dr;
            yazilar.DataBind();
            bag.Close();
        }
    }
}