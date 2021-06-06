﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="anektot.anasayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 
    <div class="container">
		<div class="banner-btm-agile">
    <div class="col-md-9 btm-wthree-left">
        <asp:ListView ID="yazilar" runat="server">
            <ItemTemplate>
                <div class="wthree-top">
					<div class="w3agile-top">
						<div class="w3agile_special_deals_grid_left_grid">
							<a href="yazi_oku.aspx?yazi=<%#Eval("yazi_id") %>"><img src='<%#Eval("yazi_resim") %> ' class="img-responsive" alt="" /></a>
						</div>
					</div>
					
					<div class="w3agile-bottom">
						<div class="col-md-9 w3agile-right">
							<h3><a href="yazi_oku.aspx?yazi=<%#Eval("yazi_id") %>"><%#Eval("yazi_adi") %> </a></h3> <h5><%#Eval("yazi_tarih") %></h5>
							<p><%#Eval("yazi_ozet") %></p>
							<a class="agileits w3layouts" href="yazi_oku.aspx?yazi=<%#Eval("yazi_id") %>">DEVAMINI OKU.. <span class="glyphicon agileits w3layouts glyphicon-arrow-right" aria-hidden="true"></span></a>
						</div>
							<div class="clearfix"></div>
					</div>
				</div>
            </ItemTemplate>
        </asp:ListView>
                </div>
                </div>
                </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
        <h3> HEMEN ÜYE OL </h3></p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
</asp:Content>
