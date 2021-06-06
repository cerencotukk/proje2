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
    public partial class iletiler : System.Web.UI.Page
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
            SqlDataAdapter adt = new SqlDataAdapter("Select * From tbl_iletisim", bag);
            DataSet ds = new DataSet();
            bag.Open();
            adt.Fill(ds);
            bag.Close();
            GridView1.DataSource = ds;
            GridView1.DataBind();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection bag = new SqlConnection("Server=.;Database=anektot;Trusted_Connection=True");
            SqlCommand kmt = new SqlCommand();
            kmt.Connection = bag;
            kmt.CommandType = CommandType.Text;
            kmt.CommandText = "Delete From tbl_iletisim Where iletisim_id=@iletisim_id";
            kmt.Parameters.AddWithValue("@iletisim_id", TextBox5.Text);

            SqlDataAdapter adt = new SqlDataAdapter("Select * From tbl_iletisim", bag);
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
            TextBox5.Text = " ";
            Response.Redirect("iletiler.aspx");
        }

    }
}