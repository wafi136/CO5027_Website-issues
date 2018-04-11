<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="list.aspx.cs" Inherits="Website_Ecom.Admin.list" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
           
        
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="prod_id" DataSourceID="SqlDataSource1" GridLines="Horizontal">
        <Columns>
            <asp:BoundField DataField="prod_id" HeaderText="prod_id" ReadOnly="True" SortExpression="prod_id" />
            <asp:BoundField DataField="prod_nm" HeaderText="prod_nm" SortExpression="prod_nm" />
            <asp:BoundField DataField="prod_prc" HeaderText="prod_prc" SortExpression="prod_prc" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:HyperLinkField HeaderText="Upload Image" NavigateUrl="uploadimg.aspx?prod_id={0}" Text="Upload Image" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:WafiConnectionString %>" DeleteCommand="DELETE FROM [prod_tbl] WHERE [prod_id] = @original_prod_id AND [prod_nm] = @original_prod_nm AND [prod_prc] = @original_prod_prc" InsertCommand="INSERT INTO [prod_tbl] ([prod_id], [prod_nm], [prod_prc]) VALUES (@prod_id, @prod_nm, @prod_prc)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [prod_tbl]" UpdateCommand="UPDATE [prod_tbl] SET [prod_nm] = @prod_nm, [prod_prc] = @prod_prc WHERE [prod_id] = @original_prod_id AND [prod_nm] = @original_prod_nm AND [prod_prc] = @original_prod_prc">
        <DeleteParameters>
            <asp:Parameter Name="original_prod_id" Type="Int32" />
            <asp:Parameter Name="original_prod_nm" Type="String" />
            <asp:Parameter Name="original_prod_prc" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="prod_id" Type="Int32" />
            <asp:Parameter Name="prod_nm" Type="String" />
            <asp:Parameter Name="prod_prc" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="prod_nm" Type="String" />
            <asp:Parameter Name="prod_prc" Type="String" />
            <asp:Parameter Name="original_prod_id" Type="Int32" />
            <asp:Parameter Name="original_prod_nm" Type="String" />
            <asp:Parameter Name="original_prod_prc" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
        
           
        
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder_Map" runat="server">
</asp:Content>
