using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace P3
{
    public partial class HastaP : System.Web.UI.Page
    {
        
        SqlConnection con= new SqlConnection(@"Data Source=MSI\SQLEXPRESS;Initial Catalog=HMS;Integrated Security=True");
       
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if(!IsPostBack)
            {
                string userName = (Session["UserName"] == null ? string.Empty : (string)Session["UserName"]);
                Label1.Text = userName;
            }
            
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Randevu.aspx");
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Ziyaret.aspx");
        }
    }
}