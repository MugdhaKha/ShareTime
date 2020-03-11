<%@ Page Title="" Language="C#" MasterPageFile="~/master/admin.Master" AutoEventWireup="true" CodeBehind="Admin_CreateAct.aspx.cs" Inherits="ShareTime.aspx.Admin_CreateAct" %>

<%@ Register TagPrefix="CA" TagName ="creact" Src="~/controls/Registration.ascx" %>
<asp:Content ContentPlaceHolderID ="head" runat ="server" >

</asp:Content>
<asp:Content ContentPlaceHolderID ="ContentPlaceHolder1" runat ="server" >
<CA:creact runat ="server" ID ="ca" />
</asp:Content>