using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class search : System.Web.UI.Page
{
    DS_ADDITEM.ITEM_SELECTDataTable IDT = new DS_ADDITEM.ITEM_SELECTDataTable();
    DS_ADDITEMTableAdapters.ITEM_SELECTTableAdapter IAdapter = new DS_ADDITEMTableAdapters.ITEM_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            string name = Request.QueryString["name"].ToString();
            IDT = IAdapter.ITEM_SELECT_SEARCH(name + "%");
            DataList1.DataSource = IDT;
            DataList1.DataBind();

            lblmsg.Text = " - Search Result (" + IDT.Rows.Count + ")";
        }
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Response.Redirect("Itemview.aspx?idd=" + e.CommandArgument.ToString());
    }
}