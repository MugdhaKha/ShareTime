<%@ Page Language="C#" MasterPageFile="~/master/welcome.Master" AutoEventWireup="true" CodeBehind="Cont_Reg.aspx.cs" Inherits="ShareTime.aspx.Cont_Reg" %>
<%@ Register TagPrefix="CR" TagName ="Cont" Src="~/controls/Registration.ascx" %>

<asp:Content ContentPlaceHolderID ="head" runat ="server" >

</asp:Content>
<asp:Content ContentPlaceHolderID ="ContentPlaceHolder1" runat ="server" >
<CR:Cont runat ="server" ID ="cc" />
</asp:Content>
