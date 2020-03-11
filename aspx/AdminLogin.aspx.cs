using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShareTime.aspx
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conObj = new SqlConnection(ConfigurationManager.ConnectionStrings["ShareConnection"].ConnectionString);


        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection conObj = new SqlConnection(ConfigurationManager.ConnectionStrings["ShareConnection"].ConnectionString);
            SqlCommand cmd = new SqlCommand(" SELECT * FROM UserProfile WHERE Username = '" + Uname.Text + "' AND Password ='" + Password.Text + "'", conObj);
            SqlDataAdapter Sqlvar = new SqlDataAdapter();
            DataTable dttable = new DataTable();
            Sqlvar.SelectCommand = cmd;
            Sqlvar.Fill(dttable);
            if (dttable.Rows.Count > 0)
            {
                            
                    Response.Redirect("~/aspx/Admin_Home.aspx");           
                   Session["PassID"] = dttable.Rows[0]["UserId"].ToString();
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('No Such UserName');", true);
            }


        }
    }
}