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
    public partial class DoktorList : System.Web.UI.Page
    {
        SqlConnection connn=new SqlConnection(@"Data Source=MSI\SQLEXPRESS;Initial Catalog=HMS;Integrated Security=True");
        void populate()
        {
            
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            string keyy = Session["Usernamee"].ToString();

            if (Session["UserNamee"] != null)
            {
                
                connn.Open();
                SqlCommand cmd = new SqlCommand("select AdSoyad,TcNo,TelNo,KanGrubu,Sikayet,Tarih,Saat from Patient where Doktor = '" + keyy + "'" , connn);
                SqlDataAdapter daa = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                DataTable dt = new DataTable();
                daa.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else { }
        
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
          
        }
    }
}