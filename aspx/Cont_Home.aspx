<%@ Page Title="" Language="C#" MasterPageFile="~/master/contributer.Master" AutoEventWireup="true" CodeBehind="Cont_Home.aspx.cs" Inherits="ShareTime.aspx.Cont_Home" %>
<%@ Register TagPrefix="cont" TagName="home" Src="~/controls/Firstpage.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <cont:home runat="server"></cont:home>
</asp:Content>
