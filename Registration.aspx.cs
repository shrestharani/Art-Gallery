using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration : System.Web.UI.Page
{
    DS_USER.USER_SELECTDataTable userdt = new DS_USER.USER_SELECTDataTable();
    DS_USERTableAdapters.USER_SELECTTableAdapter uadapters = new DS_USERTableAdapters.USER_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        int i = uadapters.Insert(txtfname.Text, txtlname.Text, txtaddress.Text, txtcity.Text, txtstate.Text, txtpincode.Text, txtmobile.Text, txtmail.Text, txtpassword.Text);
        lblmsg.Text = "Rigistration sucessfully";
        txtfname.Text = "";
        txtlname.Text="";
        txtaddress.Text="";
        txtcity.Text = "";
        txtstate.Text = "";
        txtpincode.Text = "";
        txtmobile.Text = "";
        txtmail.Text = "";
        txtpassword.Text = "";

    }
}