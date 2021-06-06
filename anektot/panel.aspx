<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="panel.aspx.cs" Inherits="anektot.panel" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" /><!-- fontawesome -->     
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" /><!-- Bootstrap stylesheet -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" property="" />
<!-- stylesheet -->
<!-- meta tags -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Blog Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //meta tags -->
<!--fonts-->
<link href="//fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i&subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
<!--//fonts-->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script src="js/main.js"></script>
<!-- Required-js -->
<!-- main slider-banner -->
<script src="js/skdslider.min.js"></script>
<link href="css/skdslider.css" rel="stylesheet">
<style type="text/css">
        .body 
        {
           Color:black;
           background-color:#d4e6e2;
           }
           .div 
           {
                width: 600px;
    height: auto;
    padding: 20px;
    background-color:silver;
    position: relative;
    margin: auto;
               }
           
           </style>
</head>
<body class=body>
<nav class="navbar navbar-light" style="background-color:#fff5e8;">
  
  <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
    <a class="navbar-brand" href="default.aspx"><span class="fa fa-home"></span>SİTEYE DÖN</a>
  </div>
</nav>
    <form id="form1" runat="server">
    <div>
        <div class=div>
           <p>HOŞGELDİN  </p> <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    <h1 align=center>ADMİN PANEL</h1>
    <br />
            <ul class="list-group">
            <li class="list-group-item btn btn-info"><a href="admin_yazi.aspx"><span class="fa fa-edit"></span>&nbsp;&nbsp;  YAZILAR</a></li>
           <br /><li class="list-group-item btn btn-info"><a href="admin_uye.aspx"><span class="fa fa-users"></span>&nbsp;&nbsp;  ÜYELER</a></li>
           <br /><li class="list-group-item btn btn-info"><a href="iletiler.aspx"><span class="fa fa-envelope"></span>&nbsp;&nbsp;  İLETİLER</a></li>
              <br /><li class="list-group-item btn btn-danger"><a href="logout.aspx"><span class="fa fa-times-circle"></span>&nbsp;&nbsp;  ÇIKIŞ YAP</a></li>
            </ul>
        </div>
    </div>
    </form>
</body>
</html>
