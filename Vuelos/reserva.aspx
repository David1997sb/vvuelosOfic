<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reserva.aspx.cs" Inherits="Vuelos.reserva" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Numero de reservacion"></asp:Label>
            <asp:TextBox ID="txtBox_numReserva" runat="server" Enabled="False"></asp:TextBox>
            <br/>
            <asp:Label ID="Label2" runat="server" Text="Booking Id"></asp:Label>
            <asp:TextBox ID="txtBox_BookId" runat="server" Enabled="False"></asp:TextBox>
            <br/>
            <asp:Label ID="Label3" runat="server" Text="Cantidad de boletos"></asp:Label>
            <asp:TextBox ID="txtBox_CantBol" runat="server"></asp:TextBox>
        </div>
    </form>
</body>
</html>
