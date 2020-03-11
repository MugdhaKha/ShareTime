<%@ Page Title="" Language="C#" MasterPageFile="~/master/welcome.Master" AutoEventWireup="true" CodeBehind="welcome.aspx.cs" Inherits="ShareTime.aspx.welcome" %>
<%@ Register TagPrefix="wel" TagName="come" Src="~/controls/welcome.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <wel:come runat="server"></wel:come>
</asp:Content>
