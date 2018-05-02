<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Website_Ecom.Admin.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            color: #0066FF;
        }
        .auto-style2 {
            background-position: center;
        }
        .auto-style3 {
            height: 108px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align ="center">
	 <h1> <span class="auto-style2">Administration </span>&nbsp;</h1>
	<tr>
	<td class="auto-style3"> <h2><a href="list.aspx"><span class="auto-style1">All Product</span></a></h2>This show every product all in the database.
	</td>
        <td class="auto-style3"> <h2><a href="add.aspx"><span class="auto-style1">New Product </span></a></h2>This action to add new data into the database.
        </td>
	<td class="auto-style3"> <a href="add.aspx"><asp:Button ID="btnLogOut" runat="server" Text="Log Out" OnClick="btnLogOut_Click" /></td>
	</tr>
</table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder_Map" runat="server">
</asp:Content>
