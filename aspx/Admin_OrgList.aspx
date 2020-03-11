<%@ Page Language="C#" MasterPageFile ="~/master/admin.Master" AutoEventWireup="true" CodeBehind="Admin_OrgList.aspx.cs" Inherits="ShareTime.aspx.Admin_OrgList" %>

<%@ Register TagPrefix="COL" TagName ="ListsadC" Src="~/controls/Admin_OrgList.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <COL:ListsadC runat ="server" ID ="oocl" />
</asp:Content>