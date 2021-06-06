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
    public partial class kayit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection bag = new SqlConnection("Data Source=.; Initial Catalog=anektot; Integrated Security=true");
            
            if (TextBox4.Text == TextBox5.Text)
            {
                SqlCommand kmt = new SqlCommand();
                kmt.Connection = bag;
                kmt.CommandType = CommandType.Text;
                kmt.CommandText = "insert into tbl_kullanici(kullanici_adi, kullanici_soyadi, kullanici_mail,kullanici_sifre) values (@adi,@soyadi,@mail,@sifre)";
                kmt.Parameters.AddWithValue("@adi", TextBox1.Text);
                kmt.Parameters.AddWithValue("@soyadi", TextBox2.Text);
                kmt.Parameters.AddWithValue("@mail", TextBox3.Text);
                kmt.Parameters.AddWithValue("@sifre", TextBox4.Text);
                bag.Open();
                kmt.ExecuteNonQuery();
                Label1.Text = "KAYIT ALINDI. GİRİŞ YAPABİLİRSİNİZ.";
                bag.Close();
               
            }
            else
            {
                Label1.Text = "ŞİFRELER UYUŞMUYOR!";
            }

        }

       
    }
}