<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Admin_user.aspx.cs" Inherits="JobHunt.Admin_user" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="color:black" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Admin Profile</h1>
    <div class="container" >
       <div class="row justify-content-center custom-margin">
           <div class="col-md-6 mx-auto">
               
               <td> <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Logout</asp:LinkButton> </td>
    <table>
        <tr>
            <td>
               <h2 style="color:black">Welcome to Admin Page,   
               <asp:Label ID="Label2" runat="server" Text="Label2" Font-Bold="True" Font-Italic="True" ForeColor="#0033CC"></asp:Label>
            </td>
            
                </tr>
     </table>
    <div style="text-align:center">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="username" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="415px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" SortExpression="username" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                <asp:BoundField DataField="role" HeaderText="role" SortExpression="role" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />


        </asp:GridView>
        

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:JOBHUNTConnectionString10 %>" DeleteCommand="DELETE FROM [Login] WHERE [username] = @original_username AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL)) AND (([role] = @original_role) OR ([role] IS NULL AND @original_role IS NULL))" InsertCommand="INSERT INTO [Login] ([username], [password], [role]) VALUES (@username, @password, @role)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Login]" UpdateCommand="UPDATE [Login] SET [password] = @password, [role] = @role WHERE [username] = @original_username AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL)) AND (([role] = @original_role) OR ([role] IS NULL AND @original_role IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_username" Type="String" />
                <asp:Parameter Name="original_password" Type="String" />
                <asp:Parameter Name="original_role" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="role" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="role" Type="String" />
                <asp:Parameter Name="original_username" Type="String" />
                <asp:Parameter Name="original_password" Type="String" />
                <asp:Parameter Name="original_role" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
        </div>
                       </div>
                   </div>
        
    </div>

</asp:Content>
