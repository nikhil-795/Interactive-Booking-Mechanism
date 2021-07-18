<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book.aspx.cs" Inherits="Project11.Book" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <style>
    body {
	background-image: url("Checkin.jpeg");
        background-repeat:no-repeat;
       background-size:cover;

    }
</style>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
        </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CaptionAlign="Top" DataKeyNames="Id">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" ReadOnly="True" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                <asp:BoundField DataField="AdhaarNo" HeaderText="AdhaarNo" SortExpression="AdhaarNo" />
                <asp:BoundField DataField="Nationality" HeaderText="Nationality" SortExpression="Nationality" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString11 %>" DeleteCommand="DELETE FROM [Table] WHERE [Id] = @original_Id AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([Age] = @original_Age) OR ([Age] IS NULL AND @original_Age IS NULL)) AND (([AdhaarNo] = @original_AdhaarNo) OR ([AdhaarNo] IS NULL AND @original_AdhaarNo IS NULL)) AND (([Nationality] = @original_Nationality) OR ([Nationality] IS NULL AND @original_Nationality IS NULL))" InsertCommand="INSERT INTO [Table] ([Id], [FirstName], [LastName], [Age], [AdhaarNo], [Nationality]) VALUES (@Id, @FirstName, @LastName, @Age, @AdhaarNo, @Nationality)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Table]" UpdateCommand="UPDATE [Table] SET [FirstName] = @FirstName, [LastName] = @LastName, [Age] = @Age, [AdhaarNo] = @AdhaarNo, [Nationality] = @Nationality WHERE [Id] = @original_Id AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([Age] = @original_Age) OR ([Age] IS NULL AND @original_Age IS NULL)) AND (([AdhaarNo] = @original_AdhaarNo) OR ([AdhaarNo] IS NULL AND @original_AdhaarNo IS NULL)) AND (([Nationality] = @original_Nationality) OR ([Nationality] IS NULL AND @original_Nationality IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_FirstName" Type="String" />
                <asp:Parameter Name="original_LastName" Type="String" />
                <asp:Parameter Name="original_Age" Type="Int32" />
                <asp:Parameter Name="original_AdhaarNo" Type="String" />
                <asp:Parameter Name="original_Nationality" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Age" Type="Int32" />
                <asp:Parameter Name="AdhaarNo" Type="String" />
                <asp:Parameter Name="Nationality" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Age" Type="Int32" />
                <asp:Parameter Name="AdhaarNo" Type="String" />
                <asp:Parameter Name="Nationality" Type="String" />
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_FirstName" Type="String" />
                <asp:Parameter Name="original_LastName" Type="String" />
                <asp:Parameter Name="original_Age" Type="Int32" />
                <asp:Parameter Name="original_AdhaarNo" Type="String" />
                <asp:Parameter Name="original_Nationality" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString8 %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
        <asp:Table ID="Table1" runat="server">
        </asp:Table>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server"></asp:SqlDataSource>
    </form>
</body>
</html>
