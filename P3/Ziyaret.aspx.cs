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
    public partial class Ziyaret : System.Web.UI.Page
    {
        SqlConnection connn = new SqlConnection(@"Data Source=MSI\SQLEXPRESS;Initial Catalog=HMS;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            string tc = Session["Tcc"].ToString();

            if (Session["Tcc"] != null)
            {

                connn.Open();
                SqlCommand cmd = new SqlCommand("select * from Patient where TcNo = '" + tc + "'", connn);
                SqlDataAdapter daa = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                DataTable dt = new DataTable();
                daa.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else { }
        }
    }
}