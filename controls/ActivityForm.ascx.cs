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
    public partial class ActivityForm : System.Web.UI.UserControl
    {
        private string PageAction = string.Empty;
        private static DataRow dRowUser = null;


        protected void Page_Load(object sender, EventArgs e)
        {
            PageAction = Request.QueryString["Action"];
            if (!Page.IsPostBack)
            {
                dRowUser = (DataRow)Session["User"];
                PageAction = "A";
                BindData();
                if (Request.QueryString["Action"] == "E")
                {
                    btnSubmit.Text = "Update";


                    DataTable dtUser = new DataTable();
                    SqlDataAdapter dAdapter = new SqlDataAdapter();

                    SqlConnection conObj = new SqlConnection(ConfigurationManager.ConnectionStrings["ShareConnection"].ConnectionString);
                    SqlCommand commandObj = new SqlCommand("Select * from Activity where ID=" + Request.QueryString["ID"], conObj);

                    dAdapter.SelectCommand = commandObj;

                    dAdapter.Fill(dtUser);

                    if (dtUser != null && dtUser.Rows.Count > 0)
                    {
                        txtActivityName.Text = dtUser.Rows[0]["ActivityName"].ToString();
                        ddlCity.SelectedValue = dtUser.Rows[0]["City"].ToString();
                        ddlOrgName.SelectedIndex = ddlOrgName.Items.IndexOf(ddlOrgName.Items.FindByValue(dtUser.Rows[0]["f"].ToString()));
                        ddlActivityType.SelectedValue = dtUser.Rows[0]["ActivityType"].ToString();
                        txtDate.Text = dtUser.Rows[0]["ActivityDate"].ToString();
                        txtStartTime.Text = dtUser.Rows[0]["StartTime"].ToString();
                        txtEndTime.Text = dtUser.Rows[0]["EndTime"].ToString();
                    }
                }
                if (Request.QueryString["AllowEdit"] == "F")
                {
                    btnSubmit.Enabled = false;
                }
            }

        }

        protected void page_Prerender(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                if (Request.QueryString["Action"] == "E")
                {
                    InitializeData();
                }
            }
        }

        protected void ddlCity_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindOrganization();
        }

        public void InitializeData()
        {

            DataTable dtUser = new DataTable();
            SqlDataAdapter dAdapter = new SqlDataAdapter();

            SqlConnection conObj = new SqlConnection(ConfigurationManager.ConnectionStrings["ShareConnection"].ConnectionString);
            SqlCommand commandObj = new SqlCommand("Select * from Activity where ID=" + Request.QueryString["ID"], conObj);

            dAdapter.SelectCommand = commandObj;

            dAdapter.Fill(dtUser);
            if (dtUser != null && dtUser.Rows.Count > 0)
            {
                txtActivityName.Text = dtUser.Rows[0]["ActivityName"].ToString();
                ddlCity.SelectedValue = dtUser.Rows[0]["City"].ToString();
                BindOrganization();
                ddlOrgName.SelectedIndex = ddlOrgName.Items.IndexOf(ddlOrgName.Items.FindByValue(dtUser.Rows[0]["organization"].ToString()));
                ddlActivityType.SelectedValue = dtUser.Rows[0]["ActivityType"].ToString();
                txtDate.Text = DateTime.Parse(dtUser.Rows[0]["ActivityDate"].ToString()).ToShortDateString();
                txtStartTime.Text = DateTime.Parse(dtUser.Rows[0]["StartTime"].ToString()).ToShortTimeString();
                txtEndTime.Text = DateTime.Parse(dtUser.Rows[0]["EndTime"].ToString()).ToShortTimeString();
                txtDescription.Text = dtUser.Rows[0]["description"].ToString();
            }
        }
        public void BindOrganization()
        {
            DataTable dt = new DataTable();
            SqlDataAdapter dAdapter = new SqlDataAdapter();

            SqlConnection conObj = new SqlConnection(ConfigurationManager.ConnectionStrings["ShareConnection"].ConnectionString);
            SqlCommand commandObj = new SqlCommand("Select * from Organizations where CityNum='" + ddlCity.SelectedValue + "'", conObj);

            dAdapter.SelectCommand = commandObj;

            dAdapter.Fill(dt);
            ddlOrgName.Items.Clear();
            ddlOrgName.Items.Add(new ListItem("Please Select", "0"));
            if (dt.Rows.Count > 0)
            {
                ddlOrgName.DataSource = dt;
                ddlOrgName.DataBind();
            }
        }
        public void BindData()
        {


            DataTable dt = new DataTable();
            SqlDataAdapter dAdapter = new SqlDataAdapter();

            SqlConnection conObj = new SqlConnection(ConfigurationManager.ConnectionStrings["ShareConnection"].ConnectionString);
            SqlCommand commandObj = new SqlCommand("Select * from Cities", conObj);

            dAdapter.SelectCommand = commandObj;

            dAdapter.Fill(dt);
            ddlCity.DataSource = dt;
            ddlCity.DataBind();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (PageAction == "A")
            {

                string qry = "Insert into Activity values('" + dRowUser["USerID"].ToString() + "','" + ddlActivityType.SelectedValue + "' ,'" + txtDate.Text + "' ,'" + txtStartTime.Text + "' , '" + txtEndTime.Text + "','" + txtDescription.Text + "', GetDate(),GetDate(),'" + txtActivityName.Text + "','" + ddlOrgName.SelectedValue + "','" + ddlCity.SelectedValue + "','P')";
                SqlConnection conObj = new SqlConnection(Session["ShareConnection"].ToString());
                SqlCommand commandObj = new SqlCommand(qry, conObj);
                conObj.Open();
                commandObj.ExecuteNonQuery();
                conObj.Close();
            }
            else
            {

                string qry = "update Activity Set ActivityType='" + ddlActivityType.SelectedValue + "' ,ActivityDate='" + txtDate.Text + "' ,StartTime='" + txtStartTime.Text + "' , Endtime='" + txtEndTime.Text + "',Description ='" + txtDescription.Text + "', DateUpdated=GetDate(),ActivityName='" + txtActivityName.Text + "' where ID=" + Request.QueryString["ID"];
                SqlConnection conObj = new SqlConnection(Session["ShareConnection"].ToString());
                SqlCommand commandObj = new SqlCommand(qry, conObj);
                conObj.Open();
                commandObj.ExecuteNonQuery();
                conObj.Close();
            }
        }
    }
        
}