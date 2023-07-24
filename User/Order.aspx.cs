using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Order : System.Web.UI.Page
{
    DS_ORDER.ORDER_SELECTDataTable ODt = new DS_ORDER.ORDER_SELECTDataTable();
    DS_ORDERTableAdapters.ORDER_SELECTTableAdapter OAdapter = new DS_ORDERTableAdapters.ORDER_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        ODt = OAdapter.Select_BY_UNAME_STATUS(Session["uname"].ToString(), 1);
        GridView1.DataSource = ODt;
        GridView1.DataBind();
    }
}