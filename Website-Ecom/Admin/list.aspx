 <%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="list.aspx.cs" Inherits="Website_Ecom.Admin.list" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
           
        
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="prod_id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="prod_id" HeaderText="prod_id" ReadOnly="True" SortExpression="prod_id" />
        <asp:BoundField DataField="prod_nm" HeaderText="prod_nm" SortExpression="prod_nm" />
        <asp:BoundField DataField="prod_prc" HeaderText="prod_prc" SortExpression="prod_prc" />
        <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
        <asp:BoundField DataField="Description" HeaderText="Description" ReadOnly="True" SortExpression="Description" />
        <asp:HyperLinkField DataNavigateUrlFields="prod_id" DataNavigateUrlFormatString="uploadimg.aspx?prod_id={0}" Text="Picture" />
        <asp:HyperLinkField DataNavigateUrlFields="prod_id" DataNavigateUrlFormatString="edit.aspx?prod_id={0}" Text="Edit" />
        <asp:CommandField ShowDeleteButton="True" />
    </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:WafiConnectionString %>" DeleteCommand="DELETE FROM [prod_tbl] WHERE [prod_id] = @original_prod_id AND [prod_nm] = @original_prod_nm AND [prod_prc] = @original_prod_prc AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL))" InsertCommand="INSERT INTO [prod_tbl] ([prod_id], [prod_nm], [prod_prc], [Quantity], [Description]) VALUES (@prod_id, @prod_nm, @prod_prc, @Quantity, @Description)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [prod_tbl]" UpdateCommand="UPDATE [prod_tbl] SET [prod_nm] = @prod_nm, [prod_prc] = @prod_prc, [Quantity] = @Quantity, [Description] = @Description WHERE [prod_id] = @original_prod_id AND [prod_nm] = @original_prod_nm AND [prod_prc] = @original_prod_prc AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_prod_id" Type="Int32" />
        <asp:Parameter Name="original_prod_nm" Type="String" />
        <asp:Parameter Name="original_prod_prc" Type="String" />
        <asp:Parameter Name="original_Quantity" Type="Int32" />
        <asp:Parameter Name="original_Description" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="prod_id" Type="Int32" />
        <asp:Parameter Name="prod_nm" Type="String" />
        <asp:Parameter Name="prod_prc" Type="String" />
        <asp:Parameter Name="Quantity" Type="Int32" />
        <asp:Parameter Name="Description" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="prod_nm" Type="String" />
        <asp:Parameter Name="prod_prc" Type="String" />
        <asp:Parameter Name="Quantity" Type="Int32" />
        <asp:Parameter Name="Description" Type="String" />
        <asp:Parameter Name="original_prod_id" Type="Int32" />
        <asp:Parameter Name="original_prod_nm" Type="String" />
        <asp:Parameter Name="original_prod_prc" Type="String" />
        <asp:Parameter Name="original_Quantity" Type="Int32" />
        <asp:Parameter Name="original_Description" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
        
           
        
    <asp:Label ID="Label1" runat="server" Text="Back to Main page"><a href="index.aspx">Back to Main page</asp:Label>
    <br />
        
           
        
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder_Map" runat="server">
</asp:Content>
