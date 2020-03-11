<%@ Page Language="C#" MasterPageFile="~/master/welcome.Master" AutoEventWireup="true" CodeBehind="Org_Reg.aspx.cs" Inherits="ShareTime.aspx.Org_Reg" %>
<%@ Register TagPrefix="OR" TagName ="Org" Src="~/controls/Registration.ascx" %>

<asp:Content ContentPlaceHolderID ="head" runat ="server" >

</asp:Content>
<asp:Content ContentPlaceHolderID ="ContentPlaceHolder1" runat ="server" >
<OR:Org runat ="server" ID ="oo" />
</asp:Content>
