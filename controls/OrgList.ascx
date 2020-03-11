<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="OrgList.ascx.cs" Inherits="ShareTime.controls.OrgList" %>

<div class="container">
<div class="row">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <div class="col-sm-3"></div>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BorderColor="#5712DB" BorderStyle="Solid">
    <Columns>
        <asp:BoundField DataField="OrgName" HeaderText="Organization Name" SortExpression="OrgName" />
        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" ItemStyle-Width="100px" />
        <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" ItemStyle-Width="100px" />
        <asp:BoundField DataField="UserEmaill" HeaderText="Emaill" SortExpression="UserEmaill" ItemStyle-Width="100px" />
        <asp:BoundField DataField="Phno" HeaderText="Phone Number" SortExpression="Phno" ItemStyle-Width="100px" />
        <asp:BoundField DataField="OrgDes" HeaderText="Organization Description" SortExpression="OrgDes" ItemStyle-Width="100px" />
    </Columns>
    <HeaderStyle BackColor="#5712db" ForeColor="#ffffff" />
</asp:GridView>
    </div>
</div>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShareConnection %>" SelectCommand="SELECT [OrgName], [Address], [Location], [UserEmaill], [Phno], [OrgDes] FROM [userprofile]"></asp:SqlDataSource>

