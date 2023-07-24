using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Itemview : System.Web.UI.Page
{
    DS_ADDITEM.ITEM_SELECTDataTable IDT = new DS_ADDITEM.ITEM_SELECTDataTable();
    DS_ADDITEMTableAdapters.ITEM_SELECTTableAdapter IAdapter = new DS_ADDITEMTableAdapters.ITEM_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        
      string  idd=Request.QueryString["idd"].ToString();
        IDT = IAdapter.SELECT_BYID(Convert.ToInt32(idd));

        Image1.ImageUrl = IDT.Rows[0]["image"].ToString();
        Image2.ImageUrl = IDT.Rows[0]["image"].ToString();
        Image3.ImageUrl = IDT.Rows[0]["image1"].ToString();
        Image4.ImageUrl = IDT.Rows[0]["image2"].ToString();

        lblname.Text = IDT.Rows[0]["iname"].ToString(); lblname0.Text = IDT.Rows[0]["iname"].ToString();
        lblprice.Text = IDT.Rows[0]["price"].ToString();
        lblqnt.Text = IDT.Rows[0]["aquantity"].ToString();
        lbldetail.Text = IDT.Rows[0]["descripation"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["idd"] = Request.QueryString["idd"].ToString();
        Response.Redirect("Login.aspx");
    }
}