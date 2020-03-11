<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Admin_ContList.ascx.cs" Inherits="ShareTime.controls.Admin_ContList" %>
<div class="container">
    <div class="row">
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <div class="col-sm-1"></div>
 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserId" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
    <Columns>
        <asp:BoundField DataField="UserId" HeaderText="UserId" InsertVisible="False" ReadOnly="True" SortExpression="UserId" ItemStyle-Width="100px" />
        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" ItemStyle-Width="100px" />
        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" ItemStyle-Width="100px" />
        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" ItemStyle-Width="100px" />
        <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" ItemStyle-Width="100px" />
        <asp:BoundField DataField="UserEmaill" HeaderText="UserEmaill" SortExpression="UserEmaill" ItemStyle-Width="100px" />
        <asp:BoundField DataField="Phno" HeaderText="PhoneNumber" SortExpression="Phno" ItemStyle-Width="100px" />
        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" ItemStyle-Width="100px" />
        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" ItemStyle-Width="100px" />
<asp:BoundField DataField="usertype" HeaderText="UserType" SortExpression="usertype"></asp:BoundField>
    </Columns>
    <HeaderStyle BackColor="#5712db" ForeColor="#ffffff" />
</asp:GridView>
        </div>
</div>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShareConnection %>" SelectCommand="SELECT [UserId], [FirstName], [LastName], [Address], [Location], [UserEmaill], [Phno], [UserName], [Password], [usertype] FROM [userprofile] WHERE ([usertype] = @usertype)">
    <SelectParameters>
        <asp:Parameter DefaultValue="1" Name="usertype" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>


