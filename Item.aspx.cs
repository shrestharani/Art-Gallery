using System;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    DS_ADDITEM.ITEM_SELECTDataTable IDT = new DS_ADDITEM.ITEM_SELECTDataTable();
    DS_ADDITEMTableAdapters.ITEM_SELECTTableAdapter IAdapter = new DS_ADDITEMTableAdapters.ITEM_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            string cname = Request.QueryString["cat"].ToString();
            IDT = IAdapter.Select_CNAME(cname);
            DataList1.DataSource = IDT;
            DataList1.DataBind();

            lblmsg.Text = " - " + cname + "(" + IDT.Rows.Count + ")";
        }
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Response.Redirect("Itemview.aspx?idd=" + e.CommandArgument.ToString());
    }
}