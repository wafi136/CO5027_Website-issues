<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Website_Ecom.contactwithmap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <img  class ="logopic" src="imgproduct/logo.jpg" alt="LogoPic"> 
    <table class="tableContent">
	<tr>
	<td class="auto-style1"> <h1>Location</h1>
            <div id ="map">
            <script src="map.js"></script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDNjaDTK6ooFQWSIbGmhJ7ty-_7ehT_D3Q&callback=initMap">
    </script>
        </div>
    
	</td>
	<td class="auto-style3"> 
        <h1>Contact </h1>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
        <p class="auto-style4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="No email"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtEmail" runat="server" ></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email Wrong format*" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </p>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Subject"></asp:Label></p>
        <p class="auto-style4">
            <asp:TextBox ID="txtSubj" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSubj" ErrorMessage="No subject"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Body"></asp:Label></p>
        <p class="auto-style4">
            <asp:TextBox ID="txtBody" runat="server" TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtBody" ErrorMessage="No body"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Button ID="btnContact" runat="server" OnClick="btnContact_Click" Text="Submit" />
        </p>
        <p>
            <asp:Literal ID="litResult" runat="server"></asp:Literal>
        </p>
        </td>
        </tr>
    </table>
    <table class="tableContent">
        <tr>
            <td > <h1>Static Map</h1>
                <img class="staticmp" src="Static%20map/static%20map.PNG"  alt="StaticMap"/>
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder_Map" runat="server">
  

</asp:Content>
