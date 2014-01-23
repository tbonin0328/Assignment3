<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                ServiceName:
                <asp:Label ID="ServiceNameLabel" runat="server" Text='<%# Eval("ServiceName") %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
    <div>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CommunityAssistConnectionString %>" SelectCommand="SELECT [ServiceName] FROM [CommunityService]"></asp:SqlDataSource>
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Default2.aspx">Person Table</asp:LinkButton>
    </form>
</body>
</html>
