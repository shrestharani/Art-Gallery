using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Payment : System.Web.UI.Page
{
    DS_ORDER.ORDER_SELECTDataTable ODT = new DS_ORDER.ORDER_SELECTDataTable();
    DS_ORDERTableAdapters.ORDER_SELECTTableAdapter OAdapter = new DS_ORDERTableAdapters.ORDER_SELECTTableAdapter();

    DS_ADDITEM.ITEM_SELECTDataTable itemdt = new DS_ADDITEM.ITEM_SELECTDataTable();
    DS_ADDITEMTableAdapters.ITEM_SELECTTableAdapter itemadapter = new DS_ADDITEMTableAdapters.ITEM_SELECTTableAdapter();

    DS_PAYMENT.PAYMENT_SELECTDataTable pdt = new DS_PAYMENT.PAYMENT_SELECTDataTable();
    DS_PAYMENTTableAdapters.PAYMENT_SELECTTableAdapter padapter = new DS_PAYMENTTableAdapters.PAYMENT_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblname.Text = Session["uname1"].ToString();
        ODT = OAdapter.SELECT_AMT(Session["uname"].ToString());
        lblpayment.Text = ODT.Rows[0]["tprice"].ToString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        padapter.Insert(Session["uname"].ToString(), Convert.ToDouble(lblpayment.Text), DropDownList1.SelectedItem.Text, drpbankname.SelectedItem.Text, drpbranch.SelectedItem.Text,txtcardno.Text, Convert.ToInt32(txtccv.Text), System.DateTime.Now);


       // OAdapter.ORDER_UPDATE_STATUS_BY_NAME(Session["uname"].ToString(), 1);

        ODT = OAdapter.Select_BY_UNAME_STATUS(Session["uname"].ToString(), 0);
        for (int i = 0; i < ODT.Rows.Count; i++)
        {
            itemadapter.ITEM_SELECT_FOR_SELL(ODT.Rows[i]["iname"].ToString(), Convert.ToInt32(ODT.Rows[i]["quntity"].ToString()));


        }


        OAdapter.ORDER_UPDATE_STATUS_BY_NAME(Session["uname"].ToString(), 1);



        Response.Redirect("Thanks.aspx");
    }

    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;

    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        padapter.Insert(Session["uname"].ToString(), Convert.ToDouble(lblpayment.Text), "Cash On Delivery","--", "--", "--", 0, System.DateTime.Now);

        ODT=OAdapter.Select_BY_UNAME_STATUS(Session["uname"].ToString(),0);
               for(int i=0; i< ODT.Rows.Count;i++)
        {
            itemadapter.ITEM_SELECT_FOR_SELL(ODT.Rows[i]["iname"].ToString(),Convert.ToInt32(ODT.Rows[i]["quntity"].ToString()));


               }


         OAdapter.ORDER_UPDATE_STATUS_BY_NAME(Session["uname"].ToString(), 1);


        Response.Redirect("Thanks.aspx");
    }
}