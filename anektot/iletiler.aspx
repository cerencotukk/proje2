<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="iletiler.aspx.cs" Inherits="anektot.iletiler" %>

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
           }
         
        .style4
        {
            height: 50px;
        }
        .div 
           {
    width: 100%;
    height:100%;
    height: auto;
    padding: 20px;
    position: relative;
    background-color:#d4e6e2;
    
               }
        .style5
        {
            height: 50px;
            width: 77px;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-light" style="background-color:#fff5e8;">
  
  <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
    <a class="navbar-brand" href="panel.aspx"><span class="fa fa-home"></span>ANASAYFA</a>
  </div>
</nav>
    <form id="form1" runat="server">
    <div class="div">
    <h1 align=center>GELEN İLETİLER</h1>
        <asp:GridView ID="GridView1" class="table table-striped" Width="100%" 
            runat="server" CellPadding="3" 
            GridLines="Vertical" BackColor="White" BorderColor="#999999" 
            BorderStyle="None" BorderWidth="1px">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
    </div>
    <div class=div>
    <table width=0% align=center style bgcolor="#DDDDDD">
       <tr>
        <th class="style5">İLETİ ID</th>
        <td class="style4" Width="160px"><asp:TextBox class="form-control" ID="TextBox5" runat="server" Height="25px" Width="160px"></asp:TextBox></td>
       <td Width="10px">&nbsp;</td>
       <td class="style4" Width="80px"> 
            <asp:Button class="btn btn-danger" ID="Button3" runat="server" Text="SİL" 
                Height=39px Width="117px" onclick="Button3_Click" 
                 /></td>
       </tr>
       <tr>
        <th class="style5">&nbsp;</th>
       <td class="style4" Width="160px"> 
           &nbsp;</td>
       <td Width="10px">&nbsp;</td>
       <td class="style4" Width="80px">
           <asp:Button class="btn btn-warning" ID="Button4" runat="server" 
               Text="Sayfayı Yenile" Height=37px 
               Width="115px" onclick="Button4_Click"  /></td>
       </tr>
       </table>
    </div>
    </form>
</body>
</html>
