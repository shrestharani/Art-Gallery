using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Cart : System.Web.UI.Page
{
    DS_ORDER.ORDER_SELECTDataTable ODT = new DS_ORDER.ORDER_SELECTDataTable();
    DS_ORDERTableAdapters.ORDER_SELECTTableAdapter OAdapter = new DS_ORDERTableAdapters.ORDER_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            ODT = OAdapter.Select_BY_UNAME_STATUS(Session["uname"].ToString(), 0);
            GridView1.DataSource = ODT;
            GridView1.DataBind();
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        
         if (e.CommandName == "del")
        { 
        
             OAdapter.Delete(Convert.ToInt32(e.CommandArgument.ToString()));
             ODT = OAdapter.Select_BY_UNAME_STATUS(Session["uname"].ToString(), 0);
            GridView1.DataSource = ODT;
            GridView1.DataBind();
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        TextBox tqnt = GridView1.Rows[e.RowIndex].Cells[2].FindControl("txtq") as TextBox;
        int oid=Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

        ODT=OAdapter.Select_BY_OID(oid);

     int ttprice=  Convert.ToInt32(ODT.Rows[0]["price"].ToString()) * Convert.ToInt32(tqnt.Text);

      int trpicee = Convert.ToInt32(tqnt.Text) * Convert.ToInt32(ttprice.ToString());
      OAdapter.ORDER_UPDATE_QUNTITY_CART(oid, Convert.ToInt32(tqnt.Text), ttprice);

       ODT = OAdapter.Select_BY_UNAME_STATUS(Session["uname"].ToString(), 0);
       GridView1.DataSource = ODT;
       GridView1.DataBind();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
}