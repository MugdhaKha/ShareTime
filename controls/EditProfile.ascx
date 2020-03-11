<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EditProfile.ascx.cs" Inherits="ShareTime.controls.EditProfile" %>

<style>
    .w3-card-6
    {
        background-color: #5712db;
        text-align: center;
        //align-items: center;
    }
</style>
<link rel="stylesheet" href="../Content/w3.css" />
<div class="page-container">
    <div class="row">
        <br />
        <br />
        <br />
        <div class="col-sm-4"></div>
        <div class="col-md-4 w3-card-6">
            <br />
        <asp:TextBox ID="txtFirstname" runat="server" CssClass="form-control" placeholder="First Name"></asp:TextBox>
            <br />
            <br />
        <asp:TextBox ID="txtLastname" runat="server" CssClass="form-control" placeholder="Last Name"></asp:TextBox>
            <br />
            <br />
        <asp:TextBox ID="OrgName" runat="server" CssClass="form-control" placeholder="Organisation Name"></asp:TextBox>
            <br />
            <br />
        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placehilder="Organisation Description"></asp:TextBox>
            <br />
            <br />
        <asp:TextBox ID="Address" runat="server" CssClass="form-control" placeholder="Address"></asp:TextBox>
            <br />
            <br />
        <asp:DropDownList ID="Locality" runat="server" CssClass="form-control" placeholder="City">
                <asp:ListItem>Panjim</asp:ListItem>
                <asp:ListItem>Margao</asp:ListItem>
                <asp:ListItem>Ponda</asp:ListItem>
                <asp:ListItem>Porvorim</asp:ListItem>
                <asp:ListItem>Vasco</asp:ListItem>
                 <asp:ListItem>Pernem</asp:ListItem>
                <asp:ListItem>Curchorem</asp:ListItem>
                <asp:ListItem>Colva</asp:ListItem>
                <asp:ListItem>Calangute</asp:ListItem>
                <asp:ListItem>Sanguem</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
        <asp:TextBox ID="Email"  Enabled="false" CssClass="form-control" runat="server" TextMode="SingleLine" placeholder="Email Address"></asp:TextBox>
            <br />
            <br />
        <asp:TextBox ID="PhNo" CssClass="form-control" runat="server" placeholder="Contact Number"></asp:TextBox>
            <br />
            <br />
        <asp:TextBox ID="Uname" CssClass="form-control" Enabled="false" runat="server" placeholder="User Name"></asp:TextBox>
            <br />
            <br />
        <asp:TextBox ID="Password" CssClass="form-control" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
            <br />
            <br />
       <asp:TextBox ID="RePassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Confirm Password"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="RePassword" ControlToValidate="Password" Operator="Equal" ErrorMessage="Password and confirm password do not match" >
          </asp:CompareValidator>
            <br />
        <br /><asp:Button ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" CssClass="form-control" />
            <br />
            <br />
            <br />
        </div>         
    </div>
    <br />
    <br />
    <br />
</div>

