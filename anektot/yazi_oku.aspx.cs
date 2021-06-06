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
    public partial class yazi_oku : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            yaziGetir();
        }
        private void yaziGetir()
        {

            string yazi = Request.QueryString["yazi"];

            SqlConnection bag = new SqlConnection("Server=.;Database=anektot;Trusted_Connection=True");
            string sorgu = "select * from tbl_yazi where yazi_id=@yazi";
            SqlCommand kmt = new SqlCommand(sorgu, bag);
            bag.Open();
            kmt.Parameters.AddWithValue("@yazi", yazi);
            SqlDataReader dr = kmt.ExecuteReader();
            yazilar.DataSource = dr;
            yazilar.DataBind();
            bag.Close();
        }

    } 
}