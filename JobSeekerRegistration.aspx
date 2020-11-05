<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="JobSeekerRegistration.aspx.cs" Inherits="JobHunt.JobSeekerRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 159px;
        }
        .auto-style2 {
            width: 158px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br />
    <h1 style="color:darkslateblue">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Job Seeker Registration</h1>
<!--    <td>
                    <asp:Label ID="Label13" runat="server" Font-Size="Large" ForeColor="Brown" ></asp:Label>
                    <br />
                    </td>    -->
    <div class="w3-group">
        <label>Registration Done?</label>
        <asp:HyperLink ID="HyperLink2" runat="server"
            NavigateUrl="~/Jobseeker_login.aspx">Go to Login Page!</asp:HyperLink>
    </div>


        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="Brown" Text="Login Details" Font-Underline="True"></asp:Label>
    <div style="width:70%; margin:auto">
        <table frame="void"style="border-color: #000000; width: 100%; border-style: none solid solid solid; border-width: 1px; background-color:#d3d3f7">
            <tr>
                <td style="text-align:right; " class="auto-style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align:right; " class="auto-style1">

                    <asp:Label ID="Label2" runat="server" Font-Size="Small" ForeColor="Black" 
                        Text="Username"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Enter Correct Name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; " class="auto-style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align:right; " class="auto-style1" >
                    <asp:Label ID="Label3" runat="server" Font-Size="Small" ForeColor="Black"
                        Text="Password"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="Fill up the password" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align:right; " class="auto-style1" >
                    <asp:Label ID="Label4" runat="server" Font-Size="Small" ForeColor="Black"
                        Text="Confirm Password"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
                        ErrorMessage="Password did not match" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align:right; " class="auto-style1" >
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
     <!--       <tr>
                <td style="text-align:right; " class="auto-style1" >
                    <asp:Label ID="Label20" runat="server" Font-Size="Small" ForeColor="Black" 
                        Text="Security Question"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList4" runat="server" Height="22px" Width="212px">
                    </asp:DropDownList>
                    &nbsp;</td>
            </tr>     -->
  <!--          <tr>
                <td style="text-align:right; " class="auto-style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
           
   <!--         <tr>
                <td style="text-align:right; " class="auto-style1">
                    <asp:Label ID="Label21" runat="server" Font-Size="Small" ForeColor="Black"
                        Text="Answer"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                    &nbsp;</td>
            </tr>    -->
  <!--          <tr>
                <td style="text-align:right; " class="auto-style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>    -->
            </table>
        </div>
       <%-- </p>--%>
    <%--<p>--%>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;

  <%--  ----------------------Company--------------------------------------%>

    <asp:Label ID="Label22" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="Brown" Text="Personal Details" Font-Underline="True"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div style="width:70%; margin:auto">
        <table style="border-left: 1px solid #000000; border-right: 1px solid #000000; border-top: 1px none #000000; border-bottom: 1px solid #000000; width: 100%; background-color:#d3d3f7; height: 365px;">
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>

           
            <tr>
                <td style="text-align:right; " class="auto-style2">
                    <asp:Label ID="Label23" runat="server" Font-Size="Small" ForeColor="Black" 
                        Text="Full Name"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox15" runat="server" Width="187px"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox15" ErrorMessage="Fill up the full name" ForeColor="Red"></asp:RequiredFieldValidator>
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
                    <asp:Label ID="Label24" runat="server" Font-Size="Small" ForeColor="Black" 
                        Text="Gender"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox16" runat="server" Width="188px"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox16" ErrorMessage="Fill up the gender" ForeColor="Red"></asp:RequiredFieldValidator>
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
                    <asp:Label ID="Label25" runat="server" Font-Size="Small" ForeColor="Black" 
                        Text="Educational Institution"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox17" runat="server" TextMode="MultiLine"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox17" ErrorMessage="Fill up the educational information" ForeColor="Red"></asp:RequiredFieldValidator>
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
                    <asp:Label ID="Label26" runat="server" Font-Size="Small" ForeColor="Black" 
                        Text="Contact No."></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox18" runat="server" Width="192px"></asp:TextBox>
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
                    <asp:Label ID="Label28" runat="server" Font-Size="Small" ForeColor="Black" 
                        Text="Address"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox19" runat="server" TextMode="MultiLine"></asp:TextBox>
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
                    <asp:Label ID="Label27" runat="server" Font-Size="Small" ForeColor="Black" 
                        Text="Email ID"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox11" runat="server" Height="25px" Width="196px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox11" ErrorMessage="Fill up the email Id" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align:right" "width: 409px" class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Font-Size="Small" ForeColor="Black" 
                        Text="Interest"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox4" runat="server" Height="25px" Width="192px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox11" ErrorMessage="Fill up the area of interest" ForeColor="Red"></asp:RequiredFieldValidator>
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
                  <asp:Button ID="Button5" runat="server" BackColor="#6666ff" BorderColor="#000099"
                      Height="41px" Text="Register" Width="261px" 
                      Font-Bold="True" Font-Size="Large" onclick="Button5_Click" />
        &nbsp;</p>
  





    
    
</asp:Content>
