<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="welcome.ascx.cs" Inherits="ShareTime.controls.welcome" %>
<style>
    .carousel-inner> .item> img
	.carousel-inner> .item> a> img
	{
		width: 100%;
		margin: auto;
	}
    .col-md-4
    {
        text-align: center;
    }
    .container-fluid
    {
        padding: 0px !important;
        color: #5712db;
    }
    .bg-color
    {
        background-color: #5712db;
        color: #ffffff !important;
    }
    .item
    {
        height: 600px;
    }
    #t1
    {
        background-color: #390b8e;
    }
    #t2
    {
        background-color: #5511d4;
    }
    #t3
    {
        background-color: #6f2bee;
    }
    #t4
    {
        background-color: #8f5af2;
    }
    #t5
    {
        background-color: #af89f5;
    }
    #t6
    {
        background-color: #cfb8f9;
    }
    .logo
    {
        color: #ffffff;
        font-size: 200px;
    }
    #what
    {
        height: 100px;
        color: #ffffff !important;
    }
</style>
<!--Carousel-->
<div class="container-fluid">
    <div class="row">
        <div class="carousel slide" id="mycarousel" data-ride="carousel">
            <!--dots-->
            <ol class="carousel-indicators">
                <li data-target="#mycarousel" data-ride-to="0" class="active"></li>
                <li data-target="#mycarousel" data-ride-to="1"></li>
                <li data-target="#mycarousel" data-ride-to="2"></li>
            </ol>
            <!--images-->
        <div class="carousel-inner" role="listbox">
           <div class="item active">
                 <img src="../Images/images (1).jpg" alt="" width="100%">
           </div>
           <div class="item">
                 <img src="../Images/images.jpg" alt="" width="100%">
           </div>
           <div class="item">
                <img src="../Images/images (3).jpg" alt="" width="100%">
           </div>
        </div>
        </div>
    </div>
</div>
<!--about-->
<div class="container-fluid">
    <div class="row" id="about">
        <div class="col-md-4"></div>
        <div class="col-md-4">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <h2><b>&quot;Share Talent, Spread Joy&quot;</b></h2>
            <p>We help you use your free time in quality teaching.</p>
            <p>Tell us your schedule and we help you get in touch with some organisation that wishes to teach your quality to students.</p>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </div>
</div>
<!--Working-->
<div class="container-fluid" id="work">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <div class="row bg-color">
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <div class="col-sm-2 text-center">
            <span class="glyphicon glyphicon-user logo"></span>
            <br />
            <br />
            <br />
            <p>Register Yourself</p>
            <br />
            <br />
            <br />
        </div>
        <div class="col-sm-2">
            <span class="glyphicon glyphicon-arrow-right logo"></span>
            <br />
        </div>
        <div class="col-sm-2 text-center">
            <span class="glyphicon glyphicon-tasks logo"></span>
            <br />
            <br />
            <br />
            <p>Upload your schedule</p>
            <br />
            <br />
            <br />
        </div>
         <div class="col-sm-2">
            <span class="glyphicon glyphicon-arrow-right logo"></span>
        </div>
        <div class="col-sm-2 text-center">
            <span class="glyphicon glyphicon-saved logo"></span>
            <br />
            <br />
            <br />
            <p>Get you booking</p>
            <br />
            <br />
            <br />
        </div>
        <div class="col-sm-2 text-center">
            <h2>You are all set to spread the joy</h2>
            <br />
            <br />
            <br />
        </div>
    </div>
</div>
<style>
    .logo-2
    {
        font-size: 40px;
    }
</style>
<!--offer-->
<div class="container-fluid text-center" id="what">
    <div class="row">
        <br />
        <br />
        <br />
        <br />
        <h2>What you can do</h2>
        <br />
        <br />
        <div class="col-md-2 text-center" id="t1">
            <br />
            <span class="glyphicon glyphicon-education logo-2"></span>
            <br />
            <p>Academics</p>
            <br />
        </div>
        <div class="col-md-2 text-center" id="t2">
            <br />
            <span class="glyphicon glyphicon-knight logo-2"></span>
            <p>Sports</p>
            <br />
        </div>
        <div class="col-md-2 text-center" id="t3">
            <br />
            <span class="glyphicon glyphicon-music logo-2"></span>
            <br />
            <p>Music</p>
            <br />
        </div>
        <div class="col-md-2 text-center" id="t4">
            <br />
            <span class="glyphicon glyphicon-scissors logo-2"></span>
            <br />
            <p>Art</p>
            <br />
        </div>
        <div class="col-md-2 text-center" id="t5">
            <br />
            <span class="glyphicon glyphicon-cutlery logo-2"></span>
            <br />
            <p>Cooking</p>
            <br />
        </div>
        <div class="col-md-2 text-center" id="t6">
            <br />
            <span class="glyphicon glyphicon-heart logo-2"></span>
            <br />
            <p>Medical</p>
            <br />
        </div>
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</div>
