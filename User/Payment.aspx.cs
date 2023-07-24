using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_MakePayment : System.Web.UI.Page
{
    DS_PAYMENT.PAYMENT_SELECTDataTable PDt = new DS_PAYMENT.PAYMENT_SELECTDataTable();
    DS_PAYMENTTableAdapters.PAYMENT_SELECTTableAdapter PAdapter = new DS_PAYMENTTableAdapters.PAYMENT_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        PDt = PAdapter.select_by_uname(Session["uname"].ToString());
        GridView1.DataSource = PDt;
        GridView1.DataBind();
    }
}