<%@ Page Language="C#" MasterPageFile ="~/master/contributer.Master" AutoEventWireup="true" CodeBehind="Cont_Profile.aspx.cs" Inherits="ShareTime.aspx.Cont_Profile" %>

<%@ Register TagPrefix="CP" TagName ="Contpro" Src="~/controls/EditProfile.ascx" %>

<asp:Content ContentPlaceHolderID ="head" runat ="server" >

</asp:Content>
<asp:Content ContentPlaceHolderID ="ContentPlaceHolder1" runat ="server" >
<CP:Contpro runat ="server" ID ="oop" />
</asp:Content>

