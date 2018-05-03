<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Website_Ecom.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
        <img  class ="logopic" src="imgproduct/logo.jpg" alt="LogoPic">
       <table class="tableContent">
	        <tr>
	        <td>
             <h2>Login</h2>
                <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
	            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
	            <asp:TextBox ID="txtPsd" runat="server" TextMode="Password"></asp:TextBox>
                <asp:Button ID="btnLog" runat="server" OnClick="btnLog_Click" Text="Login" />
               <asp:Literal ID="litLog" runat="server"></asp:Literal>
	        </td>
	        <td>
           <h2>Register</h2>
        	    <asp:Label ID="Label3" runat="server" Text="Username"></asp:Label>
                <asp:TextBox ID="txtEmail2" runat="server"></asp:TextBox>
	            <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
	            <asp:TextBox ID="txtPsd2" runat="server" TextMode="Password"></asp:TextBox>
                <asp:Button ID="btnRegist" runat="server" OnClick="btnRegist_Click" Text="Register" />
  
                <asp:Literal ID="LitRegisterError2" runat="server"></asp:Literal>

	        </td>
	        </tr>
</table>

  
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder_Map" runat="server">
</asp:Content>
