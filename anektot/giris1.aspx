<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="giris1.aspx.cs" Inherits="anektot.giris" %>
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
                    <p>ÜYE DEĞİL MİSİN? <a href="kayit.aspx"> KAYIT OL! </a> </p>
                    <br />
                    <div class="col-md-6 w3_agile_mail_grid">
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="e-postanızı girin.."></asp:TextBox>
                        <br /><asp:TextBox ID="TextBox2" type="password" runat="server" class="form-control" placeholder="şifrenizi girin.."></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" class="btn btn-success" Text="GİRİŞ YAP" 
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
