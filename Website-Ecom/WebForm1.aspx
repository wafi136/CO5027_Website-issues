<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Website_Ecom.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <HeaderTemplate>  
        </HeaderTemplate>
        <ItemTemplate>
           
                    <ul class="info"> 
                        <li><img src="imgproduct/<%#Eval("prod_id") %>.jpg" /><br />
                        <p style ="font-size: larger"><strong>Available size: </strong></p>
                        <p>&nbsp;</p>
                        <br />
                        <a href="<%#Eval("prod_id","product2.aspx?Id={0}") %>"><%#Eval("prod_nm") %></a>
                            </li>
                    </ul>
            
        </ItemTemplate>
        <FooterTemplate>     
        </FooterTemplate>
    </asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WafiConnectionString %>" SelectCommand="SELECT * FROM [prod_tbl]"></asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder_Map" runat="server">
</asp:Content>
