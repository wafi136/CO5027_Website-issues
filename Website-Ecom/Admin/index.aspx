<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Website_Ecom.Admin.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="auto-style4"> Administration </h1>
    <table class="admintable">
	<tr>
	<td class="auto-style6"> <h2><a href="list.aspx"><span class="auto-style1">All Product</span></a></h2>This show every product all in the database.
	</td>
        <td class="auto-style6"> <h2><a href="add.aspx"><span class="auto-style1">New Product </span></a></h2>This action to add new data into the database.
        </td>
	<td class="auto-style6"> <a href="add.aspx"><asp:Button ID="btnLogOut" runat="server" Text="Log Out" OnClick="btnLogOut_Click" /></a>
        </td>
	</tr>
</table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder_Map" runat="server">
</asp:Content>
