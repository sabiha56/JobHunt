<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Recruiter_registration.aspx.cs" Inherits="JobHunt.Recruiter_registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 178px;
        }
        .auto-style5 {
            font-size: large;
        }
        .auto-style6 {
            width: 58%;
        }
        .auto-style7 {
            width: 57%;
        }
        .auto-style8 {
            margin-bottom: 0px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <h1 style="color:darkslateblue">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Recruiter Registration</h1>
  <!--  <td>
        <asp:Label ID="Label13" runat="server" Font-Size="Large" ForeColor="Brown"></asp:Label>
        <br />
    </td>    -->

      <div class="w3-group">
                        <label>Registration Done?</label>
                        <asp:HyperLink ID="HyperLink2" runat="server" 
                             NavigateUrl ="~/Recruiter_login.aspx">Go to Login Page!</asp:HyperLink>
                        </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="Brown" Text="Login Details" Font-Underline="True"></asp:Label>
    <div style="margin:auto" class="auto-style7">
        <table frame="void"style="border-left: 1px none #000000; border-right: 1px none #000000; border-top: 1px none #000000; border-bottom: 1px none #000000; background-color:antiquewhite" class="w-100">
            <tr>
                <td style="text-align:right; " class="auto-style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align:right; " class="auto-style2">
                    <asp:Label ID="Label29" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" ForeColor="Black" Text="Username"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" Width="313px"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Enter Correct Name" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="Fill up the username" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; " class="auto-style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align:right;" class="auto-style2" >
                    <asp:Label ID="Label3" runat="server" Font-Size="Large" ForeColor="Black"
                        Text="Password" Font-Bold="True"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    &nbsp;<asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="313px" CssClass="auto-style8"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="Fill up the password" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align:right; " class="auto-style2" >
                    <asp:Label ID="Label4" runat="server" Font-Size="Large" ForeColor="Black"
                        Text="Confirm Password" Font-Bold="True" CssClass="auto-style5"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged" TextMode="Password" Width="313px"></asp:TextBox>
                    &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
                        ErrorMessage="Password did not match" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align:right; " class="auto-style2" >
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
     <!--       <tr>
                <td style="text-align:right; width: 403px" >
                    <asp:Label ID="Label20" runat="server" Font-Size="Small" ForeColor="Black" 
                        Text="Security Question"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList4" runat="server" Height="22px" Width="212px">
                    </asp:DropDownList>
                    &nbsp;</td>
            </tr>     -->
            <tr>
                <td style="text-align:right; " class="auto-style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
     <!--       <tr>
                <td style="text-align:right; width: 403px">
                    <asp:Label ID="Label21" runat="server" Font-Size="Small" ForeColor="Black"
                        Text="Answer"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                    &nbsp;</td>
            </tr>     
            <tr>
                <td style="text-align:right; width: 403px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>      -->
            </table>
        </div>
       <%-- </p>--%>
    <%--<p>--%>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;

  <%--  ----------------------Company--------------------------------------%>

    <asp:Label ID="Label22" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="Brown" Text="Company Details" Font-Underline="True"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div style="margin:auto" class="auto-style6">
        <table style="border-left: 1px none #000000; border-right: 1px none #000000; border-top: 1px none #000000; border-bottom: 1px none #000000; width: 100%; background-color:antiquewhite; height: 365px;">
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>

           
            <tr>
                <td style="text-align:right; " class="auto-style2">
                    <asp:Label ID="Label23" runat="server" Font-Size="Large" ForeColor="Black" 
                        Text="Company Name" Font-Bold="True"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox15" runat="server" Width="313px"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox15" ErrorMessage="Fill up the company name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align:right" "width: 409px" class="auto-style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align:right""width: 409px" class="auto-style2">
                    <asp:Label ID="Label24" runat="server" Font-Size="Large" ForeColor="Black" 
                        Text="Contact Person" Font-Bold="True"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox16" runat="server" Width="313px"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox16" ErrorMessage="Fill up the contact person" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align:right""width: 409px" class="auto-style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align:right""width: 403px" class="auto-style2">
                    <asp:Label ID="Label25" runat="server" Font-Size="Medium" ForeColor="Black" 
                        Text="Company Information" Font-Bold="True"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox17" runat="server" TextMode="MultiLine" Width="313px"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox17" ErrorMessage="Fill up the information" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align:right"width: 403px" class="auto-style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align:right" "width: 409px" class="auto-style2">
                    <asp:Label ID="Label26" runat="server" Font-Size="Large" ForeColor="Black" 
                        Text="Contact No." Font-Bold="True"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox18" runat="server" Width="313px"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox18" ErrorMessage="Fill up the contact no" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align:right" "width: 409px" class="auto-style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align:right" "width: 403px" class="auto-style2">
                    <asp:Label ID="Label28" runat="server" Font-Size="Large" ForeColor="Black" 
                        Text="Address" Font-Bold="True"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox19" runat="server" TextMode="MultiLine" Width="313px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox19" ErrorMessage="Fill up the address" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align:right" "width: 409px" class="auto-style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align:right" "width: 409px" class="auto-style2">
                    <asp:Label ID="Label27" runat="server" Font-Size="Large" ForeColor="Black" 
                        Text="Email ID" Font-Bold="True"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox11" runat="server" Height="25px" Width="313px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox11" ErrorMessage="Fill up the email Id" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align:right; " class="auto-style2">
                    &nbsp;</td>
                
            </tr>
        </table>
        </div>
        &nbsp;<%--</p>--%>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Button ID="Button3" runat="server" BackColor="#6666ff" BorderColor="#000000" 
                        Height="41px" Text="Register" Width="146px" class="btn btn-success badge-pill"
            Font-Bold="True" Font-Size="Large" onclick="Button3_Click" BorderStyle="None" />
        &nbsp;</p>
  





    
    
    


</asp:Content>
