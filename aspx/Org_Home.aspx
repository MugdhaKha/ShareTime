<%@ Page Title="" Language="C#" MasterPageFile="~/master/organisation.Master" AutoEventWireup="true" CodeBehind="Org_Home.aspx.cs" Inherits="ShareTime.aspx.Org_Home" %>
<%@ Register TagPrefix="org" TagName="hm" Src="~/controls/Firstpage.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <org:hm runat="server"></org:hm>
</asp:Content>
