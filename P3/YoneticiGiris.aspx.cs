using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace P3
{
    public partial class YoneticiGiris : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(@"Data Source=MSI\SQLEXPRESS;Initial Catalog=HMS;Integrated Security=True");
            cmd = new SqlCommand();
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "SELECT * FROM Admin where usrr='" + TextBox1.Text + "' AND pww='" + TextBox2.Text + " ' ";
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Response.Redirect("Admin.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "scriptkey", "Lütfen Bilgilerinizi Kontrol Ediniz.");
            }
            con.Close();
        }
    }
}