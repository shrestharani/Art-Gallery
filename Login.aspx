<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">a
  
    <style type="text/css">
    .style2
    {
        width: 149px;
    }
    .style3
    {
        height: 9px;
        width: 149px;
    }
    .style4
    {
        width: 112px;
    }
    .style5
    {
        height: 9px;
        width: 112px;
    }
    </style>
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<h2>User Login</h2>
    <p style="text-align: center">

    <table align="center" style="border: 2px solid Red; width: 382px">
        <tr>
            <td class="tblhead" colspan="3">
                User Login Panel</td>
        </tr>
        <tr>
            <td style="width: 113px">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="lbllogin" style="width: 113px; height: 9px;">
                Email_Id :&nbsp;&nbsp;</td>
            <td align="left" class="style5">
                <asp:TextBox ID="txtusername" runat="server" CssClass="txtlogin" Height="20px"></asp:TextBox>
            </td>
            <td align="left" class="style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtusername" ErrorMessage="Please Enter Email Id!!" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="lbllogin" style="width: 113px">
                Password :&nbsp;&nbsp;</td>
            <td align="left" class="style4">
                <asp:TextBox ID="txtpassword" runat="server" CssClass="txtlogin" Height="20px" TextMode="Password" 
                    ></asp:TextBox>
            </td>
            <td align="left" class="style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtpassword" ErrorMessage="Enter Password!!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 113px">
                &nbsp;</td>
            <td align="left" class="style4">
            
            <asp:Button ID="btnlogin" runat="server" CssClass="btnlogin" Text="Login" 
                    Height="26px" Width="75px" onclick="btnlogin_Click" />
            </td>
            <td align="left" class="style2">
                <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 113px">
                &nbsp;</td>
            <td align="left" class="style4">
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                    ForeColor="black" PostBackUrl="~/Fpassword.aspx">Forgot Password !!</asp:LinkButton>
            </td>
            <td align="left" class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" valign="top">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Registration.aspx">Register Now !!</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
        </table>
    <br />
</p>    
     
</asp:Content>