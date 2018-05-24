﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="edit.aspx.cs" Inherits="Website_Ecom.edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="prod_id" DataSourceID="SqlDataSource1" DefaultMode="Edit">
    <EditItemTemplate>
        prod_id:
        <p><asp:Label ID="prod_idLabel1" runat="server" Text='<%# Eval("prod_id") %>' />
        </p>
        prod_nm:
        <p><asp:TextBox ID="prod_nmTextBox" runat="server" Text='<%# Eval("prod_nm") %>' />
        </p>
        prod_prc:
        <p><asp:TextBox ID="prod_prcTextBox" runat="server" Text='<%# Eval("prod_prc") %>' />
        </p>
        Quantity:
        <p><asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Eval("Quantity") %>' />
        </p>
        Description:
        <p><asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Eval("Description") %>' />
        </p>
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
        <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <InsertItemTemplate>
        prod_id:
        <p><asp:TextBox ID="prod_idTextBox" runat="server" Text='<%# Eval("prod_id") %>' />
        </p>
        prod_nm:
        <p><asp:TextBox ID="prod_nmTextBox" runat="server" Text='<%# Eval("prod_nm") %>' />
        </p>
        prod_prc:
        <p><asp:TextBox ID="prod_prcTextBox" runat="server" Text='<%# Eval("prod_prc") %>' />
        </p>
        Quantity:
        <p><asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Eval("Quantity") %>' />
        </p>
        Description:
        <p><asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Eval("Description") %>' />
        </p>
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>
    <ItemTemplate>
        prod_id:
        <p><asp:Label ID="prod_idLabel" runat="server" Text='<%# Eval("prod_id") %>' />
        </p>
        prod_nm:
        <p><asp:Label ID="prod_nmLabel" runat="server" Text='<%# Eval("prod_nm") %>' />
        </p>
        prod_prc:
        <p><asp:Label ID="prod_prcLabel" runat="server" Text='<%# Eval("prod_prc") %>' />
       </p>
        Quantity:
        <p><asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Quantity") %>' />
        </p>
        Description:
        <p><asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
       </p>
        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
    </ItemTemplate>
</asp:FormView>
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
<asp:Image ID="Img" runat="server" Height="245px" Width="282px" />
<br />
  

<asp:Label ID="Label1" runat="server" Text="Back to product"><a href="list.aspx">Back to product</a></asp:Label>
  

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder_Map" runat="server">
</asp:Content>
