<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="kayit.aspx.cs" Inherits="anektot.kayit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
		    <!-- mail -->
	<div class="banner-bottom">
			<div class="agileits_heading_section">
				
			</div>
			
			<div class="w3ls_portfolio_grids w3_agile_mail_grids">	
				<form action="#" method="post">
					<h3 align="left">GİRİŞ</h3>
                    <p>ÜYE MİSİN? <a href="giris.aspx"> GİRİŞ YAP! </a> </p>
                    <div class="col-md-6 w3_agile_mail_grid">
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" class="input input--ichiro" placeholder="Kullanıcı adınızı girin.."></asp:TextBox> 
                        <asp:TextBox ID="TextBox2" runat="server" class="input input--ichiro" placeholder="Kullanıcı soyadınızı girin.."></asp:TextBox>
                        <asp:TextBox ID="TextBox3" runat="server" class="input input--ichiro" placeholder="Kullanıcı mailinizi girin.."></asp:TextBox>
                        <asp:TextBox ID="TextBox4" runat="server" class="input input--ichiro" placeholder="Kullanıcı sifrenizi girin.."></asp:TextBox>
                        <asp:TextBox ID="TextBox5" runat="server" class="input input--ichiro" placeholder="Kullanıcı sifrenizi tekrar girin.."></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" Text="KAYIT OL" 
                            onclick="Button1_Click" />
					</div>
					
					<div class="clearfix"> </div>
				</form>
			</div>
		
	</div>
<!-- //mail -->

	</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
</asp:Content>
