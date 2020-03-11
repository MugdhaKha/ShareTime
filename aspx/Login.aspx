<%@ Page Title="" Language="C#" MasterPageFile="~/master/welcome.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ShareTime.aspx.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<style>
    .w3-card-6
    {
        background-color: #5712db;
        text-align: center;
    }
   .page-container
   {
       background-image: url(../Images/finalwatermark.png);
       background-repeat: no-repeat;
       background-size: cover;
   }
</style>
<link rel="stylesheet" href="../Content/w3.css" />
<div class="page-container">
    <br />
    <br />
    <br />
    <br />
    <div class="row">
     <div class="col-md-4"></div>
    <div class="col-md-4 w3-card-6">
            <br />
            <br />
            <asp:TextBox ID="Uname" runat="server" CssClass="form-control" placeholder="Username"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="form-control" placeholder="Password"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="LogIn" CssClass="form-control" />
            <br /><br />
            <p>Haven't registered yet? Register today!</p>
        <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register as Contributor" CssClass="form-control" />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Register as Organisation" CssClass="form-control" />
            <br />
        <br />
    </div>
   </div>

    <br />
    <br />
    <br />
    <br />
</div>
</asp:Content>
