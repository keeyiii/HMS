using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace P3
{
    public partial class HastaKayıt : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(TextBox3.Text!=TextBox4.Text)
               Page.ClientScript.RegisterStartupScript(this.GetType(), "scriptkey", "Lütfen Şifreleri Aynı Girdiğinizden Emin Olun.");
            else if(string.IsNullOrEmpty(TextBox1.Text))
                Page.ClientScript.RegisterStartupScript(this.GetType(), "scriptkey", "Lütfen Ad ve Soyadınızı Giriniz.");
            else if(string.IsNullOrEmpty(TextBox2.Text))
                Page.ClientScript.RegisterStartupScript(this.GetType(), "scriptkey", "Lütfen Kimlik Numaranızı Giriniz.");
            else
            {
                con = new SqlConnection(@"Data Source=MSI\SQLEXPRESS;Initial Catalog=HMS;Integrated Security=True");
                con.Open();
                cmd = new SqlCommand("insert into Login values(@usr,@ad,@pw)", con);
                cmd.Parameters.AddWithValue("ad", TextBox1.Text);
                cmd.Parameters.AddWithValue("usr",TextBox2.Text);
                cmd.Parameters.AddWithValue("pw", TextBox3.Text);
               
                cmd.ExecuteNonQuery();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "scriptkey", "Başarıyla kayıt oldunuz.");
               
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Hasta.aspx");
        }
    }
}