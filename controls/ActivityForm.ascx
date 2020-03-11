<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ActivityForm.ascx.cs" Inherits="ShareTime.controls.ActivityForm" %>

<link type="text/css" rel="stylesheet" href="../Content/clockpicker.css" />
<script type="text/javascript" src="../Content/clockpicker.js"></script>
<script>
    $(function () {
        $("[id$='txtDate']").datepicker();
        $("[id$='txtStartTime']").clockpicker({
            autoclose: true
        });
        $("[id$='txtEndTime']").clockpicker({
            autoclose: true
        });
    });
  </script>
<style>
    .row{
        padding:5px;
    }
</style>
<div class="page-container">
        <div class="row">
            

        </div>
        <div class="row">
            <div class="col-md-2">
                <asp:Label runat="server" ID="lblActivityName" >Activity Name:</asp:Label>
            </div>
            <div class="col-md-4">
                <asp:TextBox runat="server" ID="txtActivityName" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2">
                <asp:Label runat="server" ID="lblCity">City:</asp:Label>
            </div>
            <div class="col-md-4">
                <asp:DropDownList runat="server" ID="ddlCity" CssClass="form-control" AutoPostBack="true" AppendDataBoundItems="true" DataTextField="CityName" DataValueField="CityNum" OnSelectedIndexChanged="ddlCity_SelectedIndexChanged">
                    <asp:ListItem Text="Please Select" Value="0"></asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>

        <div class="row">
            <div class="col-md-2">
                <asp:Label runat="server" ID="lblOrgName">Organization:</asp:Label>
            </div>
            <div class="col-md-4">
                <asp:DropDownList runat="server" ID="ddlOrgName" CssClass="form-control" DataTextField="OrgName" DataValueField="OrgNum" AppendDataBoundItems="true">
                    <asp:ListItem Text="Please Select" Value="0"></asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>

        <div class="row">
            <div class="col-md-2">
                <asp:Label runat="server" ID="lblActType">Activity Type:</asp:Label>
            </div>
            <div class="col-md-4">
                <asp:DropDownList runat="server" ID="ddlActivityType" CssClass="form-control" AppendDataBoundItems="true">
                    <asp:ListItem Text="Please Select" Value="0"></asp:ListItem>
                    <asp:ListItem Text="Math Tutorial" Value="1"></asp:ListItem>
                    <asp:ListItem Text="Science Tutorial" Value="2"></asp:ListItem>
                    <asp:ListItem Text="Classical Singinf" Value="3"></asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2">
                <asp:Label runat="server" ID="lblDate">Activity Date:</asp:Label>
            </div>
            <div class="col-md-4">
                <asp:TextBox runat="server" ID="txtDate" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2">
                <asp:Label runat="server" ID="Label1">Preferred Time slot:</asp:Label>
            </div>
            <div class="col-md-4">
                <asp:TextBox runat="server" ID="txtStartTime" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-md-1">
                 To &nbsp;
            </div>
            <div class="col-md-4">
                <asp:TextBox runat="server" ID="txtEndTime" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
    <div class="row">
            <div class="col-md-2">
                <asp:Label runat="server" ID="Label2" >Description:</asp:Label>
            </div>
            <div class="col-md-4">
                <asp:TextBox runat="server" ID="txtDescription" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
            </div>
        </div>
    <div class="row" style="text-align:center">
        <div class="col-md-8" >
            <asp:Button runat="server" ID="btnSubmit" OnClick="btnSubmit_Click" Text="Add" CssClass="btn btn-success" />
            &nbsp;
            <asp:HyperLink Text="Back" NavigateUrl="~/Aspx/ActivityView.aspx" runat="server" ID="hlnkBack" CssClass="btn btn-default" ></asp:HyperLink>
        </div>
        
    </div>
    
    </div>