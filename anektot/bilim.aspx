<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="bilim.aspx.cs" Inherits="anektot.bilim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<asp:ListView ID="yazilar" runat="server">
    <ItemTemplate>
                <div class="wthree-top">
					<div class="w3agile-top">
						<div class="w3agile_special_deals_grid_left_grid">
							<img src='<%#Eval("yazi_resim") %> ' class="img-responsive" alt="" />
						</div>
					</div>
					
					<div class="w3agile-bottom">
						<div class="col-md-9 w3agile-right">
							<h3><a href="yazi_oku.aspx?yazi=<%#Eval("yazi_id") %>"><%#Eval("yazi_adi") %> </a></h3> <h5><%#Eval("yazi_tarih") %></h5>
							<p><%#Eval("yazi_ozet") %></p>
							</div>
							<div class="clearfix"></div>
					</div>
				</div>
            </ItemTemplate>
            </asp:ListView>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
</asp:Content>
