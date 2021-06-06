<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_yazi.aspx.cs" Inherits="anektot.admin" %>

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
        .style4
        {
            height: 50px;
        }
        .body 
        {
           Color:black;
           background-color:#d4e6e2;
           }
    </style>

    </head>
<body class=body>
<nav class="navbar navbar-light" style="background-color:#fff5e8;">
  
  <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
    <a class="navbar-brand" href="panel.aspx"><span class="fa fa-home"></span>ANASAYFA</a>
  </div>
</nav>
<br />
<h1 align="center" style="color: #0066FF; font-family: 'Adobe Song Std L'">YAZILAR</h1>
    <form id="form1" runat="server">
       <table width=0% align=center style bgcolor="#FFCC99">
       <tr>
        <th class="style4" Width="160px">ID</th>
        <td class="style4" Width="160px"><asp:TextBox class="form-control" ID="TextBox5" runat="server" Height="25px" Width="160px"></asp:TextBox></td>
       <td Width="10px">&nbsp;</td>
       <td class="style4" Width="80px"> 
           <asp:Button class="btn btn-success" ID="Button1" runat="server" Text="EKLE" 
               Height=40px Width="117px" 
               onclick="Button1_Click" /></td>
       </tr>
       <tr>
        <th class="style4">YAZI ADI</th>
       <td class="style4" Width="160px"> 
           <asp:TextBox class="form-control" ID="TextBox1" runat="server" Height=25px Width="160px"></asp:TextBox></td>
       <td Width="10px">&nbsp;</td>
       <td class="style4" Width="80px">
           &nbsp;</td>
       </tr>
       <tr>
       <th class="style4">YAZI İÇERİK</th>
       <td class="style4"><asp:TextBox class="form-control" ID="TextBox2" runat="server" 
               Height=49px Width="160px"></asp:TextBox></td>
       <td Width="10px">&nbsp;</td>
       <td class="style4" Width="80px">
           <asp:Button class="btn btn-primary" ID="Button2" runat="server" Text="GÜNCELLE" Height=36px 
               Width="117px" onclick="Button2_Click" /></td>
       </tr>
       <tr>
        <th class="style4">YAZI OZET</th>
        <td class="style4">
            <asp:TextBox class="form-control" ID="TextBox3"  Width=160px Height=25px runat="server"></asp:TextBox>
           </td>
        <td class="style4" Width="80px" colspan="1" rowspan="1"></td>
        <td></td>
       </tr>
       <tr>
       <th class="style4">YAZI TURU</th>
       <td class="style4"><asp:TextBox class="form-control" Height=25px Width="160px" ID="TextBox4" runat="server" ></asp:TextBox></td>
       <td Width="10px">&nbsp;</td>
       <td class="style4" Width="80px">
            <asp:Button class="btn btn-danger" ID="Button3" runat="server" Text="SİL" 
                Height=39px Width="117px" onclick="Button3_Click" 
                 /></td>
       </tr>
           <tr>
            <th class="style4">YAZI TARİH</th>  
            <td>
                <asp:TextBox ID="TextBox6"  class="form-control" Height=25px Width="160px" 
                    runat="server" type=date></asp:TextBox>
               </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
           </tr>
           <tr>
           <th class="style4">YAZI RESİM</th>
           <td>
               <asp:TextBox ID="TextBox7" class="form-control" Height=25px Width="160px" runat="server"></asp:TextBox>
               </td>
           <td>&nbsp;</td>
           <td>&nbsp;</td>
           </tr>
            <tr>
           <th class="style4">YAZI RESİM 2</th>
           <td>
               <asp:TextBox ID="TextBox8"  class="form-control" Height=25px Width="160px" runat="server"></asp:TextBox>
                </td>
           <td>&nbsp;</td>
           <td>
           <asp:Button class="btn btn-warning" ID="Button4" runat="server" 
               Text="Sayfayı Yenile" Height=37px 
               Width="115px" onclick="Button4_Click"  /></td>
           </tr>
       </table>
       <br />
        <asp:GridView ID="GridView1" runat="server" class="table table-striped" Height="16px" 
            Width="75%" align=center style= BackColor="#BFC9D9" CellPadding="4" 
           CssClass="table" ForeColor="#333333" GridLines="None" >
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <br />
    </div>
    </form>
</body>
</html>
