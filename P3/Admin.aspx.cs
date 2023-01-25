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
    public partial class Admin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=MSI\SQLEXPRESS;Initial Catalog=HMS;Integrated Security=True");
        SqlCommand cmd;
        void populate()
        {

        }
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(string.IsNullOrEmpty(TextBox1.Text) || string.IsNullOrEmpty(TextBox2.Text) || string.IsNullOrEmpty(TextBox3.Text) || string.IsNullOrEmpty(TextBox4.Text) || string.IsNullOrEmpty(TextBox5.Text) || string.IsNullOrEmpty(TextBox6.Text))
                Page.ClientScript.RegisterStartupScript(this.GetType(), "scriptkey", "Lütfen Gerekli Yerlere Verileri Giriniz.");
            else
            {
                con.Open();
                cmd = new SqlCommand("insert into Doc values(@DocId,@DocName,@DocExp,@DocPass,@DocSal,@DocDep)", con);
                cmd.Parameters.AddWithValue("DocId", TextBox1.Text);
                cmd.Parameters.AddWithValue("DocName", TextBox2.Text);
                cmd.Parameters.AddWithValue("DocExp", TextBox3.Text);
                cmd.Parameters.AddWithValue("DocPass", TextBox4.Text);
                cmd.Parameters.AddWithValue("DocSal", TextBox5.Text);
                cmd.Parameters.AddWithValue("DocDep", TextBox6.Text);
                cmd.ExecuteNonQuery();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "scriptkey", "Yeni Doktor Eklendi.");
                con.Close();
                
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if(string.IsNullOrEmpty(TextBox1.Text))
                Page.ClientScript.RegisterStartupScript(this.GetType(), "scriptkey", "Çıkarmak istediğiniz doktorun kimlik numarasını yazınız.");
            else
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("DELETE FROM Doc WHERE DocId= '" + TextBox1.Text+"'", con);
                cmd.ExecuteNonQuery();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "scriptkey", "Doktor başarıyla silindi.");
                con.Close();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            if (string.IsNullOrEmpty(TextBox2.Text) || string.IsNullOrEmpty(TextBox3.Text) || string.IsNullOrEmpty(TextBox4.Text) || string.IsNullOrEmpty(TextBox5.Text) || string.IsNullOrEmpty(TextBox6.Text))
                Page.ClientScript.RegisterStartupScript(this.GetType(), "scriptkey", "Lütfen Gerekli Yerleri Doldurunuz.");
            else
            {
                string q1 = "update Doc set DocName = ' " + TextBox2.Text + " ',DocExp = ' " + TextBox3.Text + " ',DocPass = ' " + TextBox4.Text + " ',DocSal = ' " + TextBox5.Text + " ',DocDep =' " + TextBox6.Text + " ' where DocId =" + TextBox1.Text + "";
                SqlCommand cmd = new SqlCommand(q1, con);
                cmd.ExecuteNonQuery();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "scriptkey", "Güncelleme işlemi tamamlandı.");
                con.Close();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }
    }
}