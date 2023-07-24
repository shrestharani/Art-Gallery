<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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

    <h2>&nbsp;Products
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
    </h2>
    <%-- Write "OnItemCommand="DataList1_ItemCommand" to active click buy button" --%>
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="2" RepeatDirection="Horizontal" onitemcommand="DataList1_ItemCommand">
        <ItemTemplate>
            
						<div class="container">
  
  <div class="product">
    <div class="img-container">
 <asp:Image ID="Image1" runat="server"  ImageUrl='<%#Eval("image") %>' Height="170px"/>		
    </div>
    <div class="product-info">
      <div class="product-content">
        <h1><asp:Label ID="lbllname" runat="server" Text='<%#Eval("iname") %>'></asp:Label></h1>
        <%--<p>Lorem ipsum dolor sit amet consectetur adipisicing elit ariatur</p>--%>
        <div class="buttons">
          
             <asp:Button ID="Button1" runat="server"  class="button buy" CommandArgument='<%#Eval("iid") %>' Text="Buy"  />
          <span class="button" id="price"><a href="#"><asp:Label ID="lblprice" runat="server" Text='<%#Eval("price") %>'></asp:Label></span>
        </div>
      </div>
    </div>
  </div>

  
</div>

        </ItemTemplate>

    </asp:DataList>


</asp:Content>

