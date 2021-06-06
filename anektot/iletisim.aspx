<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="anektot.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
		<!-- mail -->
	<div class="banner-bottom">
			<div class="agileits_heading_section">
				<h3>İLETİŞİM</h3>
			</div>
			    <div class="container">
                    <form id="form1">
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" Width="55%" class="form-control" Placeholder="Adınız Soyadınız"></asp:TextBox>
                        <br />
                        <asp:TextBox ID="TextBox2" runat="server" Width="55%" class="form-control" Placeholder="E-posta Adresiniz"></asp:TextBox>
                        <br />
                        <asp:TextBox ID="TextBox3" runat="server" Width="55%" class="form-control" Placeholder="Konu:"></asp:TextBox>
                        <br />
                        <asp:TextBox ID="TextBox4" runat="server" Width="55%"  Height="50px" class="form-control" Placeholder="Mesajınız:"></asp:TextBox>
                        <br />
                        <asp:Button ID="Button1" runat="server" class="btn btn-success" Text="GÖNDER" 
                            Width="55%" onclick="Button1_Click" />
                    <br />
                    </form>
                </div>
            <div class="agile-map">
				<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7430.7071596599435!2d27.22693764045707!3d38.45930866969659!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14b97cd613b60187%3A0x92f60c749816beea!2sEge+%C3%9Cniversitesi!5e0!3m2!1str!2str!4v1557258192041!5m2!1str!2str" width="800" height="600" frameborder="0" style="border:0" allowfullscreen></iframe>
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
