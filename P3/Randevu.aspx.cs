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
    public partial class Randevu : System.Web.UI.Page
    { 
        SqlConnection con=new SqlConnection(@"Data Source=MSI\SQLEXPRESS;Initial Catalog=HMS;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void DropDownList7_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
        { 
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string add=Session["UserName"].ToString();
            string tc1 = Session["Tcc"].ToString();
            if (string.IsNullOrEmpty(TextBox3.Text) || string.IsNullOrEmpty(TextBox5.Text) || string.IsNullOrEmpty(TextBox6.Text) || string.IsNullOrEmpty(DropDownList1.Text) || string.IsNullOrEmpty(DropDownList9.Text) || string.IsNullOrEmpty(DropDownList10.Text) || string.IsNullOrEmpty(DropDownList8.Text))
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "scriptkey", "Lütfen gerekli yerleri doldurunuz.");
            }
            else 
            {
                SqlConnection conn = new SqlConnection(@"Data Source=MSI\SQLEXPRESS;Initial Catalog=HMS;Integrated Security=True");
                conn.Open();
                SqlCommand cmdd = new SqlCommand("insert into Patient values(@AdSoyad,@TcNo,@TelNo,@KanGrubu,@Sikayet,@Tarih,@Saat,@Bölüm,@Doktor)", conn);
                cmdd.Parameters.AddWithValue("AdSoyad", add);
                cmdd.Parameters.AddWithValue("TcNo", tc1);
                cmdd.Parameters.AddWithValue("TelNo", TextBox3.Text);
                cmdd.Parameters.AddWithValue("KanGrubu", DropDownList1.Text);
                cmdd.Parameters.AddWithValue("Sikayet", TextBox5.Text);
                cmdd.Parameters.AddWithValue("Tarih", TextBox6.Text);
                cmdd.Parameters.AddWithValue("Saat", DropDownList8.Text);
                cmdd.Parameters.AddWithValue("Bölüm", DropDownList9.Text);
                cmdd.Parameters.AddWithValue("Doktor", DropDownList10.Text);
                cmdd.ExecuteNonQuery();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "scriptkey", "Randevunuz başarıyla alınmıştır.");
                conn.Close();
            }

        }

        protected void d(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}