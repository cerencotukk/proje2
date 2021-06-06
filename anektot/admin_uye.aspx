<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_uye.aspx.cs" Inherits="anektot.admin_uye" %>

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
         
        .style3
        {
            height: 50px;
        }
        .style4
        {
            height: 50px;
        }
        .style5
        {
            height: 50px;
        }
        .style7
        {
            height: 50px;
        }
        .style8
        {
            height: 50px;
        }
    </style>
</head>
<body class="body">
<nav class="navbar navbar-light" style="background-color: #fff5e8;">
  
  <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
    <a class="navbar-brand" href="panel.aspx"><span class="fa fa-home"></span>ANASAYFA</a>
  </div>
</nav>
<br />
<h1 align="center" style="color: #0066FF; font-family: 'Adobe Song Std L'">KULLANICILAR</h1>
    <form id="form1" runat="server">
    <table width=0% align=center style="margin-bottom: 15px" >
       <tr>
        <th class="style7" Width="160px">ÜYE ID</th>
        <td class="style7" Width="160px">
            <asp:TextBox class="form-control" ID="TextBox5" 
                runat="server" Height="25px" Width="160px"></asp:TextBox></td>
       <td Width="10px" class="style7"></td>
       <td class="style7" Width="80px"> 
           <asp:Button ID="Button5" runat="server"  onclick="Button5_Click" 
               Text="EKLE" class="btn btn-success"  Height=40px Width="117px" />
           </td>
       </tr>
       <tr>
        <th class="style8">ÜYE KULLANICI ADI</th>
       <td class="style8" Width="160px"> 
           <asp:TextBox class="form-control" ID="TextBox1" runat="server" Height=25px Width="160px"></asp:TextBox></td>
       <td Width="10px" class="style8"></td>
       <td class="style8" Width="80px">
           <asp:Button ID="Button6" runat="server"  Text="GÜNCELLE" 
                onclick="Button6_Click" class="btn btn-primary"  Height="40px" Width="117px" />
           </td>
       </tr>
       <tr>
       <th class="style3">ÜYE ADI</th>
       <td class="style3">
           <asp:TextBox class="form-control" ID="TextBox2" runat="server" 
               Height=29px Width="161px"></asp:TextBox></td>
       <td Width="10px" class="style3"></td>
       <td class="style3" Width="80px">
            <asp:Button ID="Button7" runat="server"  Text="SİL" 
               onclick="Button7_Click" class="btn btn-danger"  Height=40px Width="117px" />
           </td>
       </tr>
       <tr>
        <th class="style5">ÜYE MAİL</th>
        <td class="style5">
            <asp:TextBox class="form-control" ID="TextBox3" type=mail Width=160px Height=25px runat="server"></asp:TextBox>
           </td>
        <td class="style5" Width="80px" colspan="1" rowspan="1">
            </td>
       </tr>
       <tr>
       <th class="style4">ÜYE ŞİFRE</th>
       <td class="style4"><asp:TextBox class="form-control" ID="TextBox4" runat="server" Height=25px Width="160px"></asp:TextBox></td>
       <td Width="10px">&nbsp;</td>
       <td class="style4" Width="80px">
           <asp:Button class="btn btn-warning" ID="Button4" runat="server" 
               Text="Sayfayı Yenile"   Height=40px Width="117px"  />

           </td>
       </tr>
       </table>
       <asp:GridView ID="GridView1" runat="server" class="table table-striped" Width="50%" align="center" BackColor="White" 
        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        ForeColor="Black" GridLines="Horizontal">
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
    </form>
    
</body>
</html>
