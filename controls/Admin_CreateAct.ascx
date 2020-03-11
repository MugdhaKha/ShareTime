<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Admin_CreateAct.ascx.cs" Inherits="ShareTime.controls.Admin_CreateAct" %>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
        <asp:BoundField DataField="ActivityType" HeaderText="ActivityType" SortExpression="ActivityType" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShareConnection %>" SelectCommand="SELECT [ID], [ActivityType] FROM [Activity]"></asp:SqlDataSource>
<br />
<br />
<asp:Button ID="Button1" runat="server" Text="Add New" OnClick="Button1_Click" />

<br />
<br />
<br />
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
<br />
<p>
    <asp:Button ID="Button2" runat="server" Text="Add" />
</p>


