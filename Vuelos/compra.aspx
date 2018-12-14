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
            <asp:Label ID="Label4" runat="server" Text="Total"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:Label ID="txt_total" runat="server" Text=""></asp:Label>
           
            <br/>
                    <asp:CheckBox ID="CheckBox_TarjetasUsuario" runat="server" Text="Tarjeta credito/debito" OnCheckedChanged="CheckBox_TarjetasUsuario_CheckedChanged" AutoPostBack="true"/>
                    <br/>
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Nueva tarjeta" OnCheckedChanged="CheckBox1_CheckedChanged" AutoPostBack="true"/>
                <br />
            <div id="myDIV" runat="server">
                <asp:DropDownList ID="dropdown" runat="server" TabIndex="7" CssClass="btn btn-secondary dropdown-toggle" data-toggle="dropdown"> 
                                    <asp:ListItem Selected="True" class="dropdown-item">Selccion el tipo de tarjeta</asp:ListItem>
                                    <asp:ListItem class="dropdown-item">Visa</asp:ListItem>
                                    <asp:ListItem class="dropdown-item">Mastercard</asp:ListItem>
                    </asp:DropDownList>
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" TabIndex="7" CssClass="btn btn-secondary dropdown-toggle" data-toggle="dropdown"> 
                                    <asp:ListItem Selected="True" class="dropdown-item">Selccione la tarjeta</asp:ListItem>
                                    
                    </asp:DropDownList>
            </div>
             
            <br />
                        <div id="div2" runat="server">
                            <asp:Label ID="Label3" runat="server" Text="Numero Tarjeta"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label5" runat="server" Text="CCV"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label6" runat="server" Text="Fecha de expiración"></asp:Label>
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label7" runat="server" Text="Numero de tarjeta"></asp:Label>
            <br/>
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            <br />

             <asp:DropDownList ID="DropDownList2" runat="server" TabIndex="7" CssClass="btn btn-secondary dropdown-toggle" data-toggle="dropdown"> 
                                    <asp:ListItem Selected="True" class="dropdown-item">Selccion el tipo de tarjeta</asp:ListItem>
                                    <asp:ListItem class="dropdown-item" ID="aero">Visa</asp:ListItem>
                                    <asp:ListItem class="dropdown-item" id="puerta">Mastercard</asp:ListItem>
                    </asp:DropDownList>
                            <br />
                            <asp:CheckBox ID="CheckBox2" runat="server" text="Desea guardar esta tarjeta para futuras compras?"/>
                </div>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Procesar" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
