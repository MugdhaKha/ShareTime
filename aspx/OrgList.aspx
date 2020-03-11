<%@ Page Title="" Language="C#" MasterPageFile="~/master/contributer.Master" AutoEventWireup="true" CodeBehind="OrgList.aspx.cs" Inherits="ShareTime.aspx.OrgList" %>
<%@ Register TagPrefix="OL" TagName ="Lists" Src="~/controls/OrgList.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<OL:Lists runat ="server" ID ="ol" />
</asp:Content>
