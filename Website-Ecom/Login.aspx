<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Website_Ecom.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <br />
       <table align ="center">
	       <p> <img  class ="logopic" src="imgproduct/logo.jpg"> </p>
	<tr>
	<td>
     <h2>Login<br /></h2>
	        Username:<br>
	        &nbsp;<asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
	        <br>
	        Password:<br>
	        &nbsp;<asp:TextBox ID="txtPsd" runat="server" TextMode="Password"></asp:TextBox>
	            <br />
               <asp:Button ID="btnLog" runat="server" OnClick="btnLog_Click" Text="Login" />
        <br />
       <asp:Literal ID="litLog" runat="server"></asp:Literal>
	</td>
	<td>
   <h2>Register<br /></h2>
        	Username:<br>
        <asp:TextBox ID="txtEmail2" runat="server"></asp:TextBox>
	    <br>
	          Password:<br>
	    <asp:TextBox ID="txtPsd2" runat="server" TextMode="Password"></asp:TextBox>
	    <br />
        <asp:Button ID="btnRegist" runat="server" OnClick="btnRegist_Click" Text="Button" />
        <br />
        <asp:Literal ID="LitRegisterError2" runat="server"></asp:Literal>
        <br />
	</td>
	</tr>
</table>

  
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder_Map" runat="server">
</asp:Content>
