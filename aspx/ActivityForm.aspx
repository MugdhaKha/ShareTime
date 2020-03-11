<%@ Page Title="" Language="C#" MasterPageFile="~/master/contributer.Master" AutoEventWireup="true" CodeBehind="ActivityForm.aspx.cs" Inherits="ShareTime.aspx.ActivityForm" %>
<%@ Register TagPrefix="ACT" TagName ="Aform" Src="~/controls/ActivityForm.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <ACT:Aform runat ="server" ID ="actl" />
</asp:Content>
