<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="APItest.aspx.cs" Inherits="Vuelos.APItest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
        <asp:GridView id="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource2" AutoGenerateEditButton="True" OnSelectedIndexChanged="GridView1_RowEditing">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" InsertVisible="False" />
                <asp:BoundField DataField="consecutivo" HeaderText="consecutivo" SortExpression="consecutivo" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:vvuelosConnectionString %>" SelectCommand="sp_valores_consecutivo" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        
    </form>
</body>
</html>
