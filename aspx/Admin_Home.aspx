<%@ Page Title="" Language="C#" MasterPageFile="~/master/admin.Master" AutoEventWireup="true" CodeBehind="Admin_Home.aspx.cs" Inherits="ShareTime.aspx.Admin_Home" %>
<%@ Register TagPrefix="admin" TagName="home" Src="~/controls/Firstpage.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <admin:home runat="server"></admin:home>
</asp:Content>
