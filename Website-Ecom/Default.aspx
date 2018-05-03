<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Website_Ecom.DefaultView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <img  class ="logopic" src="imgproduct/logo.jpg" alt="LogoPic"> 
    <table class="MainContent" >
	<tr>
	<td> <h1>It’s YOU that matters.</h1>
			GIGABYTE is always consumer-oriented from the very beginning of product design to the end of value chain. With the focus on consumer needs, the delivery of customer experiences has been transformed into tangible and understood customer cares. Therefore, GIGABYTE has integrated the best quality of components to ensure outstanding stability and reliability and also built up a complete service network with hundreds of customer service centers around the globe. Behind everything we do is a clear focus on what our customers value. GIGABYTE has kept staying one step ahead of consumer desires to create unique connections and pursue your smile of satisfaction.
    </td>
	<td> <img src="imgproduct/concept.jpg" class ="firstpic" alt=""></td>
	</tr>       
    </table>
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <HeaderTemplate>  
        </HeaderTemplate>
        <ItemTemplate>
          <div id="background-product">
                    <ul>
                        <li> 
                            <p><asp:Image ID="Img" runat="server"  height="500" width="500" ImageUrl='<%#"~/imgproduct/" + Eval("prod_id")+ ".jpg"%>' Alt="ImgProd"/></p>
                            <p><a href="<%#Eval("prod_id","product.aspx?prod_id={0}") %>"><%#Eval("prod_nm") %></a></p>
                         </li>
                   </ul>
            </div>
        </ItemTemplate>
        <FooterTemplate>    
        </FooterTemplate>
    </asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WafiConnectionString %>" SelectCommand="SELECT * FROM [prod_tbl] WHERE Quantity&gt;0;"></asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder_Map" runat="server">
   
</asp:Content>
