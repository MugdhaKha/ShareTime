using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShareTime.controls
{
    public partial class Registration : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["ShareConnection"].ConnectionString;
                        
           // string str = Request.QueryString["keyword"];
            SqlConnection con = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand(" SELECT * FROM userprofile WHERE userId ='" + Session["PassID"] + "'", con);
            if (Request.QueryString["usertype"] == "1")
            {
                OrgName.Visible = false;
                TextBox1.Visible = false;
            }
            else
            {
                txtFirstname.Visible = false;
                txtLastname.Visible = false;
            }
       
            SqlDataAdapter Sqlvar = new SqlDataAdapter();
            DataTable dttable = new DataTable();


            try
            {
                con.Open();
                cmd.ExecuteNonQuery();

                Sqlvar.SelectCommand = cmd;
                Sqlvar.Fill(dttable);
                if (dttable.Rows.Count > 0)
                {
                    txtFirstname.Text = dttable.Rows[0]["FirstName"].ToString();
                    txtLastname.Text = dttable.Rows[0]["LastName"].ToString();
                    OrgName.Text = dttable.Rows[0]["OrgName"].ToString();
                    Address.Text = dttable.Rows[0]["Address"].ToString();
                    Locality.Text = dttable.Rows[0]["Location"].ToString();
                    Email.Text = dttable.Rows[0]["PhNo"].ToString();
                    PhNo.Text = dttable.Rows[0]["UserEmaill"].ToString();
                    Uname.Text = dttable.Rows[0]["userName"].ToString();
                    Password.Text = dttable.Rows[0]["Password"].ToString();
                }


            }

            finally
            {
                con.Close();


            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string connStr = ConfigurationManager.ConnectionStrings["ShareConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            string qry = string.Empty;
            if (Request.QueryString["Action"] == "A")
            {
                qry = "Insert into userprofile values('" + txtFirstname.Text + "','" + txtLastname.Text + "','" + OrgName.Text + "','" + TextBox1.Text + "','" + Address.Text + "','" + Locality.Text + "','" + Email.Text + "','" + PhNo.Text + "','" + Uname.Text + "','" + Password.Text + "','" + Request.QueryString["usertype"] + "')";
            }
            else
            {
                qry = "UPDATE userprofile SET FirstName='" + txtFirstname.Text + "' ,LastName='" + txtLastname.Text + "', OrgName='" + OrgName.Text + "', Address='" + Address.Text + "', Location='" + Locality.Text + "', Phno='" + PhNo.Text + "', Password='" + Password.Text + "' WHERE userId ='" + Session["PassID"].ToString() + "'";
            }
            SqlCommand cmd = new SqlCommand(qry, con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                cmd = new SqlCommand("Select scope_Identity()", con);
                int ID = int.Parse(cmd.ExecuteScalar().ToString());
                DataTable dtUser = new DataTable();
                SqlDataAdapter dAdapter = new SqlDataAdapter();

                SqlConnection conObj = new SqlConnection(ConfigurationManager.ConnectionStrings["ShareConnection"].ConnectionString);
                SqlCommand commandObj = new SqlCommand("Select * from Userprofile where UserID=" + ID, conObj);

                dAdapter.SelectCommand = commandObj;

                dAdapter.Fill(dtUser);
                Session["User"] = dtUser.Rows[0];
                if (Request.QueryString["usertype"] == "1")
                {
                    Response.Redirect("~/aspx/Cont_Home.aspx");
                }
                else
                {
                    Response.Redirect("~/aspx/Org_Home.aspx");
                }
            }
            finally
            {
                con.Close();
            }


        }
    }
}
