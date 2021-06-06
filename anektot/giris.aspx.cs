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
    public partial class giris1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection("Data Source=.; Initial Catalog=anektot; Integrated Security=true");
            baglanti.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_kullanici where kullanici_mail='" + TextBox1.Text + "' and kullanici_sifre='" + TextBox2.Text + "'", baglanti);
            SqlDataReader dt = cmd.ExecuteReader();
            if (dt.Read())
            {
                if (TextBox1.Text != null)
                {
                    Session["kullanici_adi"] = TextBox1.Text;
                    Response.Redirect("panel.aspx");
                }
                else {
                    Session["kullanici_adi"] ="bos";
                }
            }
            else { Label1.Text = "Kullanıcı adın veya Şifren yanlış!"; }
        }
    }
}
