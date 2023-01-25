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
    public partial class Doktor : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        SqlConnection connn = new SqlConnection(@"Data Source=MSI\SQLEXPRESS;Initial Catalog=HMS;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(@"Data Source=MSI\SQLEXPRESS;Initial Catalog=HMS;Integrated Security=True");
            cmd = new SqlCommand();
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "SELECT * FROM Doc where DocName='" + TextBox1.Text + "' AND DocId='"+TextBox2.Text+"'AND DocPass='"+TextBox3.Text+"'";
             dr = cmd.ExecuteReader();
            if(dr.Read())
            {
                string userNamee = TextBox1.Text.Trim();
                Session["UserNamee"] = userNamee;
                Response.Redirect("DoktorList.aspx"); 
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "scriptkey", "Lütfen Bilgilerinizi Kontrol Ediniz.");
            }
            
            con.Close();

        }
        

        }
    }
