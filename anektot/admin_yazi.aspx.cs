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
    public partial class admin : System.Web.UI.Page
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
                SqlDataAdapter adt = new SqlDataAdapter("select * from tbl_yazi", bag);
                DataSet ds = new DataSet();
                bag.Open();
                adt.Fill(ds);
                bag.Close();
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection bag = new SqlConnection("Server=.;Database=anektot;Trusted_Connection=True");
            SqlCommand kmt = new SqlCommand();
            kmt.Connection = bag;
            kmt.CommandType = CommandType.Text;
            kmt.CommandText = "insert into tbl_yazi(yazi_adi,yazi_icerik,yazi_ozet,yazi_turu,yazi_tarih,yazi_resim,yazi_resim2) values(@yazi_adi,@yazi_icerik,@yazi_ozet,@yazi_turu,@yazi_tarih,@yazi_resim,@yazi_resim2)";
            kmt.Parameters.AddWithValue("@yazi_adi", TextBox1.Text);
            kmt.Parameters.AddWithValue("@yazi_icerik", TextBox2.Text);
            kmt.Parameters.AddWithValue("@yazi_ozet", TextBox3.Text);
            kmt.Parameters.AddWithValue("@yazi_turu", TextBox4.Text);
            kmt.Parameters.AddWithValue("@yazi_tarih", TextBox6.Text);
            kmt.Parameters.AddWithValue("@yazi_resim", TextBox7.Text);
            kmt.Parameters.AddWithValue("@yazi_resim2", TextBox8.Text);

            SqlDataAdapter adt = new SqlDataAdapter("Select * From tbl_yazi", bag);
            DataSet ds = new DataSet();
            bag.Open();
            kmt.ExecuteNonQuery();
            adt.Fill(ds);
            bag.Close();
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection bag = new SqlConnection("Server=.;Database=anektot;Trusted_Connection=True");
            SqlCommand kmt = new SqlCommand();
            kmt.Connection = bag;
            kmt.CommandType = CommandType.Text;
            kmt.CommandText = "Delete From tbl_yazi Where yazi_id=@yazi_id";
            kmt.Parameters.AddWithValue("@yazi_id", TextBox5.Text);

            SqlDataAdapter adt = new SqlDataAdapter("Select * From tbl_yazi", bag);
            DataSet ds = new DataSet();
            bag.Open();
            kmt.ExecuteNonQuery();
            adt.Fill(ds);
            bag.Close();
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection bag = new SqlConnection("Server=.;Database=anektot;Trusted_Connection=True");
            SqlCommand kmt = new SqlCommand();
            kmt.Connection = bag;
            kmt.CommandType = CommandType.Text;
            kmt.CommandText = "update tbl_yazi set yazi_adi=@yazi_adi,yazi_icerik=@yazi_icerik,yazi_ozet=@yazi_ozet,yazi_turu=@yazi_turu,yazi_tarih=@yazi_tarih,yazi_resim=@yazi_resim,yazi_resim2=@yazi_resim2 Where yazi_id=@yazi_id";
            kmt.Parameters.AddWithValue("@yazi_adi", TextBox1.Text);
            kmt.Parameters.AddWithValue("@yazi_icerik", TextBox2.Text);
            kmt.Parameters.AddWithValue("@yazi_ozet", TextBox3.Text);
            kmt.Parameters.AddWithValue("@yazi_turu", TextBox4.Text);
            kmt.Parameters.AddWithValue("@yazi_tarih", TextBox6.Text);
            kmt.Parameters.AddWithValue("@yazi_resim", TextBox7.Text);
            kmt.Parameters.AddWithValue("@yazi_resim2", TextBox8.Text);
            kmt.Parameters.AddWithValue("@yazi_id", TextBox5.Text);

            SqlDataAdapter adt = new SqlDataAdapter("Select * From tbl_yazi", bag);
            DataSet ds = new DataSet();
            bag.Open();
            kmt.ExecuteNonQuery();
            adt.Fill(ds);
            bag.Close();
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_yazi.aspx");
        }

        
    }
}