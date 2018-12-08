<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="compra.aspx.cs" Inherits="Vuelos.compra" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Destino"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="Cantidad de boletos"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:Label ID="txt_total" runat="server" Text=""></asp:Label>
             <asp:DropDownList ID="dropdown" runat="server" TabIndex="7" CssClass="btn btn-secondary dropdown-toggle" data-toggle="dropdown"> 
                                    <asp:ListItem Selected="True" class="dropdown-item">Selccion el tipo de puerta</asp:ListItem>
                                    <asp:ListItem class="dropdown-item" ID="aero">Visa</asp:ListItem>
                                    <asp:ListItem class="dropdown-item" id="puerta">Mastercard</asp:ListItem>
                                    <asp:ListItem class="dropdown-item" id="saaa">EasyPay</asp:ListItem>
                    </asp:DropDownList>
            <asp:DropDownList ID="DropDownList1" runat="server" TabIndex="7" CssClass="btn btn-secondary dropdown-toggle" data-toggle="dropdown"> 
                                    
                    </asp:DropDownList>
            <asp:Label ID="Label3" runat="server" Text="Numero Tarjeta"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>

        </div>
    </form>
</body>
</html>
