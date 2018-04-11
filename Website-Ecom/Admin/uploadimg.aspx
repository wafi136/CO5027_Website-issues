<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="uploadimg.aspx.cs" Inherits="Website_Ecom.uploadimg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <asp:FileUpload ID="imgupcontrol" runat="server" />
        <br />
        <asp:Button ID="btnUp" runat="server" Text="Upload" OnClick="btnUp_Click" />
        <br />
        <asp:Image ID="Img" runat="server" Height="311px" Width="301px" />
        <br />
&nbsp;<asp:Label ID="Label1" runat="server" Text="Back to product"><a href="list.aspx">Back to product</asp:Label>
&nbsp; 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder_Map" runat="server">
</asp:Content>
