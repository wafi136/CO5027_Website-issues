<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="Website_Ecom.product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class="product-container"  >
        <div class="auto-style1">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="prod_id" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            prod_id:
            <asp:Label ID="prod_idLabel1" runat="server" Text='<%# Eval("prod_id") %>' />
            <br />
            prod_nm:
            <asp:TextBox ID="prod_nmTextBox" runat="server" Text='<%# Eval("prod_nm") %>' />
            <br />
            prod_prc:
            <asp:TextBox ID="prod_prcTextBox" runat="server" Text='<%# Eval("prod_prc") %>' />
            <br />
            Quantity:
            <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Eval("Quantity") %>' />
            <br />
            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Eval("Description") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            prod_id:
            <asp:TextBox ID="prod_idTextBox" runat="server" Text='<%# Eval("prod_id") %>' />
            <br />
            prod_nm:
            <asp:TextBox ID="prod_nmTextBox" runat="server" Text='<%# Eval("prod_nm") %>' />
            <br />
            prod_prc:
            <asp:TextBox ID="prod_prcTextBox" runat="server" Text='<%# Eval("prod_prc") %>' />
            <br />
            Quantity:
            <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Eval("Quantity") %>' />
            <br />
            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Eval("Description") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
           <asp:Image ID="Img" runat="server"  height="500" width="500" ImageUrl='<%#"~/imgproduct/" + Eval("prod_id")+ ".jpg"%>'/><br />
            <br />
            prod_nm:
            <asp:Label ID="prod_nmLabel" runat="server" Text='<%# Eval("prod_nm") %>' />
            <br />
            prod_prc:
            <asp:Label ID="prod_prcLabel" runat="server" Text='<%# Eval("prod_prc") %>' />
            <br />
            Quantity:
            <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Quantity") %>' />
            <br />
            Description:
            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
            <br />

        </ItemTemplate>
    </asp:FormView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WafiConnectionString %>" SelectCommand="SELECT * FROM [prod_tbl] WHERE ([prod_id] = @prod_id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="prod_id" QueryStringField="prod_id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:DropDownList ID="DDQty" runat="server">
        </asp:DropDownList>
        <br />
        <asp:Button ID="btnBuy" runat="server" OnClick="btnBuy_Click" Text="Button" />
        </div>
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder_Map" runat="server">
</asp:Content>
