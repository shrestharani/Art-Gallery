using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    DS_USER.USER_SELECTDataTable userdt = new DS_USER.USER_SELECTDataTable();
    DS_USERTableAdapters.USER_SELECTTableAdapter uadapters = new DS_USERTableAdapters.USER_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        userdt = uadapters.SELECT_FOR_LOGIN(txtusername.Text, txtpassword.Text);
        if (userdt.Rows.Count > 0)
        {
            Session["uname"] = txtusername.Text;
            Session["uname1"] = userdt.Rows[0]["fname"].ToString() + " " + userdt.Rows[0]["lname"].ToString();
            Session["uid"] = userdt.Rows[0]["UID"].ToString();
            if (Session["idd"] == null)
            {
                Response.Redirect("User/Home.aspx");
            }
            else
            {
                Response.Redirect("User/View.aspx?idd=" +Session["idd"]);
            }
        }
        else
        {
            lblmsg.Text = "Error !!!";
        }
    }
}