using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Account : System.Web.UI.Page
{
    DS_USER.USER_SELECTDataTable userdt = new DS_USER.USER_SELECTDataTable();
    DS_USERTableAdapters.USER_SELECTTableAdapter uadapters = new DS_USERTableAdapters.USER_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {

            userdt = uadapters.SELECT_BY_EMAIL(Session["uname"].ToString());

            ViewState["uid"] = userdt.Rows[0]["UID"].ToString();
            txtfname.Text = userdt.Rows[0]["fname"].ToString();
            txtlname.Text = userdt.Rows[0]["lname"].ToString();
            txtaddd.Text = userdt.Rows[0]["address"].ToString();
            txtcity.Text = userdt.Rows[0]["city"].ToString();
            txtstate.Text = userdt.Rows[0]["state"].ToString();
            txtpincode.Text = userdt.Rows[0]["pincode1"].ToString();
            txtmobile.Text = userdt.Rows[0]["mobile1"].ToString();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        uadapters.Update(Convert.ToInt32(ViewState["uid"].ToString()), txtfname.Text, txtlname.Text, txtaddd.Text, txtcity.Text, txtstate.Text, txtpincode.Text, txtmobile.Text);
        userdt = uadapters.SELECT_BY_EMAIL(Session["uname"].ToString());

        ViewState["uid"] = userdt.Rows[0]["uid"].ToString();
        txtfname.Text = userdt.Rows[0]["fname"].ToString();
        txtlname.Text = userdt.Rows[0]["lname"].ToString();
        txtaddd.Text = userdt.Rows[0]["address"].ToString();
        txtcity.Text = userdt.Rows[0]["city"].ToString();
        txtstate.Text = userdt.Rows[0]["state"].ToString();
        txtpincode.Text = userdt.Rows[0]["pincode1"].ToString();
        txtmobile.Text = userdt.Rows[0]["mobile1"].ToString();
        lblmsg.Text = "Update Successfull";
    }
}