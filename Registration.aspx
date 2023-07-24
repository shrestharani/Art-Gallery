<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript">
    function abc(a) {

        a.value = a.value.replace(/[^0-9-.]/g, '');


    }
    
   </script>
   <h2>Registration Form</h2>
<table align="center" style="border: thin solid yellow; width: 455px">
        <tr>
            <td class="tblhead" colspan="3">
                User Registration&nbsp; Panel</td>
        </tr>
        <tr>
            <td style="width: 113px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="lbllogin" style="width: 113px; color: #000000;">
                FIRST NAME:&nbsp;&nbsp;&nbsp; </td>
            <td align="left">
                <asp:TextBox ID="txtfname" runat="server" CssClass="txtlogin" Height="20px"></asp:TextBox>
            </td>
            <td align="left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtfname" ErrorMessage="Please Enter Name!!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="lbllogin" style="width: 113px; color: #000000;">
                LAST NAME: &nbsp;&nbsp;&nbsp;</td>
            <td align="left">
                <asp:TextBox ID="txtlname" runat="server" CssClass="txtlogin" Height="20px"></asp:TextBox>
            </td>
            <td align="left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtlname" ErrorMessage="Please Enter Last Name!!" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 6px; width: 113px; color: #000000;" class="lbllogin">
                ADDRESS: &nbsp;&nbsp;&nbsp;</td>
            <td align="left" style="height: 6px">
                <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine" 
                    CssClass="txtlogin"></asp:TextBox>
            </td>
            <td align="left" style="height: 6px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtaddress" ErrorMessage="Please Enter Address!!" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 113px; color: #000000;" class="lbllogin">
                CITY: &nbsp;&nbsp;&nbsp;</td>
            <td align="left">
                <asp:TextBox ID="txtcity" runat="server" CssClass="txtlogin" Height="20px"></asp:TextBox>
            </td>
            <td align="left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtcity" ErrorMessage="Please Enter City!!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 113px; color: #000000;" class="lbllogin">
                STATE: &nbsp;&nbsp;&nbsp;</td>
            <td align="left">
                <asp:TextBox ID="txtstate" runat="server" CssClass="txtlogin" Height="20px"></asp:TextBox>
            </td>
            <td align="left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtstate" ErrorMessage="Please Enter State!!" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 113px; color: #000000;" class="lbllogin">
                PINCODE: &nbsp;&nbsp;&nbsp;</td>
            <td align="left">
                <asp:TextBox ID="txtpincode" onkeyup="abc(this)" runat="server" 
                    CssClass="txtlogin" MaxLength="6" Height="20px"></asp:TextBox>
            </td>
            <td align="left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtpincode" ErrorMessage="Please Enter Pincode!!" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 113px; color: #000000;" class="lbllogin">
                GENDER: &nbsp;&nbsp;&nbsp;</td>
            <td align="left">
                <asp:RadioButton ID="rdomale" runat="server" GroupName="A" Text="Male" />&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="rdofemale" runat="server" GroupName="A" Text="Female" />
            </td>
            <td align="left">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 113px; color: #000000;" class="lbllogin">
                MOBILE: &nbsp;&nbsp;&nbsp;</td>
            <td align="left">
                <asp:TextBox ID="txtmobile"  onkeyup="abc(this)" runat="server" MaxLength="10" 
                    CssClass="txtlogin" Height="20px"></asp:TextBox>
            </td>
            <td align="left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="txtmobile" ErrorMessage="Please Enter Mobile Number!!" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 113px; color: #000000;" class="lbllogin">
                EMAIL_ID: &nbsp;&nbsp;&nbsp;</td>
            <td align="left">
                <asp:TextBox ID="txtmail" runat="server" CssClass="txtlogin" Height="20px"></asp:TextBox>
            </td>
            <td align="left">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtmail" ErrorMessage="Please Enter E-mail!!" 
                    ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 113px; color: #000000;" class="lbllogin">
                PASSWORD: &nbsp;&nbsp;&nbsp;</td>
            <td align="left">
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" 
                    CssClass="txtlogin" Height="20px"></asp:TextBox>
            </td>
            <td align="left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtpassword" ErrorMessage="Please Enter Password!!" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 113px" class="lbllogin">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 113px" class="lbllogin">
                &nbsp;</td>
            <td align="left">
                <asp:Button ID="btnsubmit" runat="server" CssClass="btnlogin" Text="SUBMIT" 
                    Height="30px" Width="81px" onclick="btnsubmit_Click" />
                <br />
                <br />
                </td>
            <td align="left">
                <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

