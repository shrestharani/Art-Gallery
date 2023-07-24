<%@ Page Title="" Language="C#" MasterPageFile="~/User/Home.master" AutoEventWireup="true" CodeFile="Checkout.aspx.cs" Inherits="User_Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript">
     function abc(a) {

         a.value = a.value.replace(/[^0-9-.]/g, '');


     }
    
   </script>
   <table class="tbl">
        <tr>
            <td class="tblhead">
                Check Out Order....</td>
        </tr>
        <tr>
            <td>
            &nbsp;</td>
        </tr>
        <tr>
            <td>
                <table align="center" class="style9">
                    <tr>
                        <td class="lbl">
                            User Name :
                        </td>
                        <td>
                            <span class="profile"> 
                    <asp:Label ID="lblname" runat="server" CssClass="lbl"></asp:Label>
                            </span>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Total Payment :
                        </td>
                        <td>
                            <asp:Label ID="lblpayment" runat="server"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Select&nbsp; Payment Method :
                        </td>
                        <td>
                            <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" 
                                Checked="True" GroupName="a" oncheckedchanged="RadioButton1_CheckedChanged" 
                                Text="Online" />
                            <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" 
                                GroupName="a" oncheckedchanged="RadioButton2_CheckedChanged" 
                                Text="Cash On Delivery" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl" colspan="2">
                            <asp:MultiView ID="MultiView1" runat="server">
                                <asp:View ID="View1" runat="server">
                                    <table class="style1">
                                        <tr>
                                            <td class="lbl">
                                                The Order will be deleverd at your account address.</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td align="center">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Button ID="Button3" title="paynow" runat="server" CssClass="btn btn-outline-success my-2 my-sm-0" onclick="Button3_Click" 
                                                    Text="PAY NOW"  />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                        </tr>
                                    </table>
                                </asp:View>
                                <asp:View ID="View2" runat="server">
                                    <table class="style1">
                                        <tr>
                                            <td class="lbl">
                                                Select Paymnt Type :</td>
                                            <td>
                                                <asp:DropDownList ID="DropDownList1" runat="server">
                                                    <asp:ListItem>Credit Card</asp:ListItem>
                                                    <asp:ListItem>Debit Card</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                Bank Name :</td>
                                            <td>
                                                <asp:DropDownList ID="drpbankname" runat="server" CssClass="txtlogin">
                                                    <asp:ListItem>SBI</asp:ListItem>
                                                    <asp:ListItem>ICICI</asp:ListItem>
                                                    <asp:ListItem>BOB</asp:ListItem>
                                                    <asp:ListItem>HDFC</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                Branch :</td>
                                            <td>
                                                <asp:DropDownList ID="drpbranch" runat="server" CssClass="txtlogin">
                                                    <asp:ListItem>ABC</asp:ListItem>
                                                    <asp:ListItem>XYZ</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                16 Digit Card&nbsp; No :</td>
                                            <td>
                                                <asp:TextBox ID="txtcardno" runat="server" CssClass="txtlogin" Height="22px" 
                                                    MaxLength="16" onkeyup="abc(this)" Width="171px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                    ControlToValidate="txtcardno" ErrorMessage="Enter Card Number!!" 
                                                    ForeColor="Red"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                CVV No :</td>
                                            <td>
                                                <asp:TextBox ID="txtccv" runat="server" CssClass="txtlogin" Height="22px" 
                                                    MaxLength="3" onkeyup="abc(this)" Width="69px"></asp:TextBox>
                                                3 Digit Only<asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                                                    runat="server" ControlToValidate="txtccv" ErrorMessage="Enter CVV Number!!!" 
                                                    ForeColor="Red"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                <asp:Button ID="Button2" runat="server" CssClass="btn btn-outline-success my-2 my-sm-0" onclick="Button2_Click" Text="PAY NOW"  />
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>
                            </asp:MultiView>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    </table>
            </td>
        </tr>
        <tr>
            <td>
            &nbsp;</td>
        </tr>
    </table>
</asp:Content>

