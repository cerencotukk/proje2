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
    public partial class admin_uye : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["kullanici_adi"] == null)
            {
                Response.Redirect("giris.aspx");
            }
            else
            {
                 SqlConnection bag = new SqlConnection("Server=.;Database=anektot;Trusted_Connection=True");
            SqlDataAdapter adt = new SqlDataAdapter("select * from tbl_kullanici", bag);
            DataSet ds = new DataSet();
            bag.Open();
            adt.Fill(ds);
            bag.Close();
            GridView1.DataSource = ds;
            GridView1.DataBind();
            }

          
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlConnection bag = new SqlConnection("Server=.;Database=anektot;Trusted_Connection=True");
            SqlCommand kmt = new SqlCommand();
            kmt.Connection = bag;
            kmt.CommandType = CommandType.Text;
            kmt.CommandText = "insert into tbl_kullanici (kullanici_adi,kullanici_soyadi,kullanici_mail,kullanici_sifre) values(@kullanici_adi,@kullanici_soyadi,@kullanici_mail,@kullanici_sifre)";
            kmt.Parameters.AddWithValue("@kullanici_adi", TextBox1.Text);
            kmt.Parameters.AddWithValue("@kullanici_soyadi", TextBox2.Text);
            kmt.Parameters.AddWithValue("@kullanici_mail", TextBox3.Text);
            kmt.Parameters.AddWithValue("@kullanici_sifre", TextBox4.Text);

            SqlDataAdapter adt = new SqlDataAdapter("Select * From tbl_kullanici", bag);
            DataSet ds = new DataSet();
            bag.Open();
            kmt.ExecuteNonQuery();
            adt.Fill(ds);
            bag.Close();
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            SqlConnection bag = new SqlConnection("Server=.;Database=anektot;Trusted_Connection=True");
            SqlCommand kmt = new SqlCommand();
            kmt.Connection = bag;
            kmt.CommandType = CommandType.Text;
            kmt.CommandText = "update tbl_kullanici set kullanici_adi=@kullanici_adi,kullanici_soyadi=@kullanici_soyadi,kullanici_mail=@kullanici_mail,kullanici_sifre=@kullanici_sifre Where kullanici_id=@kullanici_id";
            kmt.Parameters.AddWithValue("@kullanici_id", TextBox5.Text);
            kmt.Parameters.AddWithValue("@kullanici_adi", TextBox1.Text);
            kmt.Parameters.AddWithValue("@kullanici_soyadi", TextBox2.Text);
            kmt.Parameters.AddWithValue("@kullanici_mail", TextBox3.Text);
            kmt.Parameters.AddWithValue("@kullanici_sifre", TextBox4.Text);
            

            SqlDataAdapter adt = new SqlDataAdapter("Select * From tbl_kullanici", bag);
            DataSet ds = new DataSet();
            bag.Open();
            kmt.ExecuteNonQuery();
            adt.Fill(ds);
            bag.Close();
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void Button7_Click(object sender, EventArgs e)
        {

            SqlConnection bag = new SqlConnection("Server=.;Database=anektot;Trusted_Connection=True");
            SqlCommand kmt = new SqlCommand();
            kmt.Connection = bag;
            kmt.CommandType = CommandType.Text;
            kmt.CommandText = "Delete From tbl_kullanici Where kullanici_id=@kullanici_id";
            kmt.Parameters.AddWithValue("@kullanici_id", TextBox5.Text);

            SqlDataAdapter adt = new SqlDataAdapter("Select * From tbl_kullanici", bag);
            DataSet ds = new DataSet();
            bag.Open();
            kmt.ExecuteNonQuery();
            adt.Fill(ds);
            bag.Close();
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        

    }
}