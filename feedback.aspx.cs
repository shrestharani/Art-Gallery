using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class feedback : System.Web.UI.Page
{
    DS_FEED.FEEDBACK_SELECTDataTable FDT = new DS_FEED.FEEDBACK_SELECTDataTable();
    DS_FEEDTableAdapters.FEEDBACK_SELECTTableAdapter FADAPTER = new DS_FEEDTableAdapters.FEEDBACK_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        int i = FADAPTER.Insert(txtuser.Text, txtmsg.Text, System.DateTime.Now);

        lblmsg.Text = "Your Feedback is Succsessfully Submitted";

        txtuser.Text = "";
        txtmsg.Text = "";
    }
}