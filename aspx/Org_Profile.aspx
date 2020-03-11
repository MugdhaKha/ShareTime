<%@ Page Title="" Language="C#" MasterPageFile="~/master/organisation.Master" AutoEventWireup="true" CodeBehind="Org_Profile.aspx.cs" Inherits="ShareTime.aspx.Org_Profile" %>
<%@ Register TagPrefix="OP" TagName ="Orgpro" Src="~/controls/EditProfile.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <OP:Orgpro runat ="server" ID ="ocop" />
</asp:Content>
