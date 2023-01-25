using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace P3
{
    
    public partial class Hasta : System.Web.UI.Page
    {
        string add;
        SqlConnection conn;
        SqlCommand cmdd;
        SqlDataReader drr;
        protected void Page_Load(object sender, EventArgs e)
        {
      
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(@"Data Source=MSI\SQLEXPRESS;Initial Catalog=HMS;Integrated Security=True");
            cmdd = new SqlCommand();
            conn.Open();
            cmdd.Connection = conn;
            cmdd.CommandText = "SELECT * FROM Login where ad='" + TextBox1.Text + "' AND usr='" + TextBox2.Text + "' AND pw='" + TextBox3.Text + "' ";
            
            drr=cmdd.ExecuteReader();
            if(drr.Read())
            {
                string userName = TextBox1.Text.Trim();
                Session["UserName"] = userName;
                string Tc = TextBox2.Text.Trim();
                Session["Tcc"] = Tc;
                Response.Redirect("HastaP.aspx");
            }
            else
                Page.ClientScript.RegisterStartupScript(this.GetType(), "scriptkey", "Lütfen Bilgilerinizi Kontrol Ediniz.");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("HastaKayıt.aspx");
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            

        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            
        }
    }
}