<%@ Page Language="C#" MasterPageFile ="~/master/admin.Master" AutoEventWireup="true" CodeBehind="Admin_ContList.aspx.cs" Inherits="ShareTime.aspx.Admin_ContList" %>
<%@ Register TagPrefix="OOL" TagName ="Listsad" Src="~/controls/Admin_ContList.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <OOL:Listsad runat ="server" ID ="ool" />
</asp:Content>