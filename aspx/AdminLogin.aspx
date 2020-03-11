<%@ Page Language="C#" MasterPageFile="~/master/welcome.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="ShareTime.aspx.AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
    .w3-card-6
    {
        background-color: #5712db;
        text-align: center;
    }
    .container-fluid
    {
        background-image: url(../Images/finalwatermark.png);
        background-repeat: no-repeat;
        background-size: cover;
    }
</style>
<link rel="stylesheet" href="../Content/w3.css" />
<div class="container-fluid">
    <div class="row">
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
     <div class="col-md-4"></div>
    <div class="col-md-4 w3-card-6">
        <br />
        <br />
        <br />
        <asp:TextBox ID="Uname" runat="server" CssClass="form-control" placeholder="User Name"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="form-control" placeholder="Password"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="LogIn" CssClass="form-control" />
        <br />
        <br />
        <br />
        <br />
    </div>
        </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</div>
</asp:Content>
