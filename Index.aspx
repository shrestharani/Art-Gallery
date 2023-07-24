
<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style2 
        {
            height: 19px;
        }
        .img
        {
            height:170px;
            width:170px;
            border-radius:50%;
        }
    </style>
	  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
  <!-- <link rel="stylesheet" href="./style.css"> -->
<style>
  

.container {
  width: 100%;
  height: 100%;
}
.container .product {
  width: 535px;
  height: 180px;
  display: flex;
  margin: 1em 0;
  border-radius: 5px;
  overflow: hidden;
  cursor: pointer;
  box-shadow: 0px 0px 21px 3px rgba(0, 0, 0, 0.15);
  transition: all 0.1s ease-in-out;
}
.container .product .img-container {
  flex: 2;
}
.container .product .img-container #Image1 {
  object-fit: cover;
  width: 100%;
  height: 100%;
}
.container .product .product-info {
  background: #fff;
  flex: 3;
}
.container .product .product-info .product-content {
  padding: 0.2em 0 0.2em 1em;
}
.container .product .product-info .product-content h1 {
  font-size: 1.5em;
}
.container .product .product-info .product-content p {
  color: #636363;
  font-size: 0.9em;
  font-weight: bold;
  width: 90%;
}
.container .product .product-info .product-content ul li {
  color: #636363;
  font-size: 0.9em;
  margin-left: 0;
}
.container .product .product-info .product-content .buttons {
  padding-top: 0.4em;
}
.container .product .product-info .product-content .buttons .button {
  text-decoration: none;
  color: #5e5e5e;
  font-weight: bold;
  padding: 0.3em 0.65em;
  border-radius: 2.3px;
  transition: all 0.1s ease-in-out;
}
.container .product .product-info .product-content .buttons .add {
  border: 1px #5e5e5e solid;
}
.container .product .product-info .product-content .buttons .add:hover {
  border-color: #6997b6;
  color: #6997b6;
}
.container .product .product-info .product-content .buttons .buy {
  border: 1px #5e5e5e solid;
}
.container .product .product-info .product-content .buttons .buy:hover {
  border-color: #6997b6;
  color: #6997b6;
}
.container .product .product-info .product-content .buttons #price {
  margin-left: 4em;
  color: #5e5e5e;
  font-weight: bold;
  border: 1px solid rgba(137, 137, 137, 0.2);
  background: rgba(137, 137, 137, 0.04);
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <table class="tbl">
        <tr>
            <td class="tblhead">Product</td>
        </tr>
        <tr>
            <td class="style2">
     <asp:DataList ID="DataList1" runat="server" RepeatColumns="2" onitemcommand="DataList1_ItemCommand"
                    RepeatDirection="Horizontal" >
                    <ItemTemplate>

						<div class="container">
  
  <div class="product">
    <div class="img-container">
 <asp:Image ID="Image1" runat="server"  ImageUrl='<%#Eval("image") %>' class="img"/>		
    </div>
    <div class="product-info">
      <div class="product-content">
        <h1><asp:Label ID="lbllname" runat="server" Text='<%#Eval("iname") %>'></asp:Label></h1>
        <%--<p>Lorem ipsum dolor sit amet consectetur adipisicing elit ariatur</p>--%>
        <div class="buttons">
          
             <asp:Button ID="Button1" runat="server"  class="button buy" CommandArgument='<%#Eval("iid") %>' Text="Buy"  />
          <span class="button" id="price"><a href="#">
              <asp:Label ID="lblprice" runat="server" Text='<%#Eval("price") %>'>

              </asp:Label></span>
            <asp:Label ID="Label1" runat="server" Text='<%#Eval("descripation") %>'>

              </asp:Label></span>
        </div>
      </div>
    </div>
  </div>

  
</div>
 </ItemTemplate>
          </asp:DataList>

    </td>

        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
                     <div class="row" style="margin-right:0;width: 135%;margin-left: -25%;">
  <div class="col-md-12" style="display: inline-flex; padding: 0;">
      <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3720.2620242094754!2d72.80546101476605!3d21.181747585915723!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be04e7667b7fd4b%3A0xeeebc445a54bd657!2sM.T.B%20Ground!5e0!3m2!1sen!2sin!4v1635416408906!5m2!1sen!2sin" width="100%" height="450" style="background: transparent; border:0;"></iframe>
  </div>
</div>
            <div class="row" style="margin-right:0;width: 135%;margin-left: -25%;">
  <div class="col-md-12" style="display: inline-flex; padding: 0;">
     <%--<iframe src="teampage.html" style="background: transparent" frameborder="0" height="760" width="100%"></iframe>--%>
    
  </div>
</div>
</asp:Content>


      