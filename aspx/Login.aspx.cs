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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dtUser = new DataTable();
            SqlDataAdapter dAdapter = new SqlDataAdapter();

            SqlConnection conObj = new SqlConnection(ConfigurationManager.ConnectionStrings["ShareConnection"].ConnectionString);
            SqlCommand commandObj = new SqlCommand("select top 1 * from UserProfile", conObj);

            dAdapter.SelectCommand = commandObj;

            dAdapter.Fill(dtUser);
            if (dtUser.Rows.Count > 0)
            {
                Session["User"] = dtUser.Rows[0];
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["ShareConnection"].ConnectionString;
            Response.Redirect("Cont_Reg.aspx?usertype=1&Action=A");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["ShareConnection"].ConnectionString;
            Response.Redirect("Org_Reg.aspx?usertype=2&Action=A");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection conObj = new SqlConnection(ConfigurationManager.ConnectionStrings["ShareConnection"].ConnectionString);
            SqlCommand cmd = new SqlCommand(" SELECT * FROM UserProfile WHERE Username = '" + Uname.Text.Trim() + "' AND Password ='" + Password.Text.Trim() + "'", conObj);
            SqlDataAdapter Sqlvar = new SqlDataAdapter();
            DataTable dttable = new DataTable();
            Sqlvar.SelectCommand = cmd;
            Sqlvar.Fill(dttable);
            if (dttable.Rows.Count > 0)
                
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('No Such UserName');", true);
                if (dttable.Rows[0]["userType"].ToString().Trim() == "1")
                {

                    Response.Redirect("~/aspx/Cont_Home.aspx");
                }
                else if (dttable.Rows[0]["userType"].ToString().Trim() == "2")
                {
                    Response.Redirect("~/aspx/Org_Home.aspx");
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('No Such UserName');", true);
            }


        }


    }
    
}