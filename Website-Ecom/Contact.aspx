<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Website_Ecom.contactwithmap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 569px;
        }
        .auto-style2 {
            width: 578px;
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align ="center">
	 <p> <img  class ="logopic" src="imgproduct/logo.jpg"> </p>
	<tr>
	<td class="auto-style1"> <h1>Location</h1>
        <p>  
            <div id ="map">
            <script src="map.js"></script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDNjaDTK6ooFQWSIbGmhJ7ty-_7ehT_D3Q&callback=initMap">
    </script>
        </div></p>
    
	</td>
	<td> 
        <h1>Contact </h1>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        <br />
        Email
        <p>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="No email"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email Wrong format*" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </p>
        <p>
            Subject</p>
        <p>
            <asp:TextBox ID="txtSubj" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSubj" ErrorMessage="No subject"></asp:RequiredFieldValidator>
        </p>
        <p>
            Body</p>
        <p>
            <asp:TextBox ID="txtBody" runat="server" TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtBody" ErrorMessage="No body"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Button ID="btnContact" runat="server" OnClick="btnContact_Click" Text="Button" />
        </p>
        <p>
            <asp:Literal ID="litResult" runat="server"></asp:Literal>
        </p>
        </td>
	</tr>
</table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder_Map" runat="server">
  

</asp:Content>
