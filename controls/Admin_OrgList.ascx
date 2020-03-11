<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Admin_OrgList.ascx.cs" Inherits="ShareTime.controls.Admin_OrgList" %>
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
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserId" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BorderStyle="Solid">
    <Columns>
        <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" InsertVisible="False" ReadOnly="True" ItemStyle-Width="100px" />
        <asp:BoundField DataField="OrgName" HeaderText="OrgName" SortExpression="OrgName" ItemStyle-Width="100px" />
        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" ItemStyle-Width="100px" />
        <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" ItemStyle-Width="100px" />
        <asp:BoundField DataField="UserEmaill" HeaderText="UserEmaill" SortExpression="UserEmaill" ItemStyle-Width="100px" />
        <asp:BoundField DataField="Phno" HeaderText="PhoneNumber" SortExpression="Phno" ItemStyle-Width="100px" />
        <asp:BoundField DataField="OrgDes" HeaderText="OrganisationDescription" SortExpression="OrgDes" ItemStyle-Width="100px" />
        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" ItemStyle-Width="100px" />
        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" ItemStyle-Width="100px" />
    </Columns>
    <HeaderStyle BackColor="#5712db" ForeColor="#ffffff" />
</asp:GridView>
        </div>
</div>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ShareConnection %>" SelectCommand="SELECT [UserId], [OrgName], [Address], [Location], [UserEmaill], [Phno], [OrgDes], [UserName], [Password] FROM [userprofile] WHERE ([usertype] = @usertype)">
    <SelectParameters>
        <asp:Parameter DefaultValue="2" Name="usertype" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShareConnection %>" SelectCommand="SELECT [OrgName], [UserId], [Address], [Location], [UserEmaill], [Phno], [OrgDes], [UserName], [Password] FROM [userprofile]"></asp:SqlDataSource>

