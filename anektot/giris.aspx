<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="giris.aspx.cs" Inherits="anektot.giris1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title><link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" /><!-- fontawesome -->     
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
 border-radius:0px 0px 20px 20px;
               }
               .div2 
           {
    width: 100%;
    height: 100%;
    padding: 20px;
    background-color:#d4e6e2;
    position: relative;
    margin: auto;
      padding: 20px;
      border-radius: 20px;
               }
           
           </style>
</head>
<body class=body>
<nav class="navbar navbar-light" style="background-color:#fff5e8;">
  
  <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
    <a class="navbar-brand" href="Default.aspx"><span class="fa fa-home"></span>SİTEYE DÖN</a>
  </div>
</nav>
    <form id="form1" runat="server">
    <div class=div>
    <h1 align=center>ADMİN GİRİŞİ YAP</h1>
        <div class=div2>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <asp:TextBox ID="TextBox1" Width="100%" placeholder="Kullanıcı Adınız" class="form-control" runat="server"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox2" type="password" Width="100%" placeholder="Şifreniz" class="form-control" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" Width="100%" class="btn btn-success" runat="server" 
                Text="GİRİŞ YAP" onclick="Button1_Click1" />
            
        </div>
<p>      KAYITLI DEĞİL MİSİNİZ?<a href="kayit.aspx">KAYIT OLUN</a> </p>
    </div>
    </form>
</body>
</html>
