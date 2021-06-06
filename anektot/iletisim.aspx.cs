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
    public partial class iletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection bag = new SqlConnection("Server=.;Database=anektot;Trusted_Connection=True");
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection bag = new SqlConnection("Server=.;Database=anektot;Trusted_Connection=True");
            SqlCommand kmt = new SqlCommand();
            kmt.Connection = bag;
            kmt.CommandType = CommandType.Text;
            kmt.CommandText = "insert into tbl_iletisim (iletisim_konu,iletisim_ad,iletisim_mail,iletisim_aciklama) values(@konu,@ad,@mail,@aciklama)";

                kmt.Parameters.AddWithValue("@konu", TextBox3.Text);
                kmt.Parameters.AddWithValue("@ad", TextBox1.Text);
                kmt.Parameters.AddWithValue("@mail", TextBox2.Text);
                kmt.Parameters.AddWithValue("@aciklama", TextBox4.Text);
                bag.Open();
                kmt.ExecuteNonQuery();
                Label1.Text = "MESAJINIZ İLETİLDİ!";
                bag.Close();
            
        }

        }
    }