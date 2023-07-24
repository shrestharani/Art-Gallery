using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Index : System.Web.UI.MasterPage
{

    DS_ORDER.ORDER_SELECTDataTable ODT = new DS_ORDER.ORDER_SELECTDataTable();
    DS_ORDERTableAdapters.ORDER_SELECTTableAdapter OAdapter = new DS_ORDERTableAdapters.ORDER_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        lblname.Text = Session["uname1"].ToString();
        ODT = OAdapter.Select_BY_UNAME_STATUS(Session["uname"].ToString(), 0);
        lbl.Text = ODT.Rows.Count.ToString();

    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {

         Response.Redirect("Search.aspx?name=" + txtsearch.Text);
    }
}
