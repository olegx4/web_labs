<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lab1_task3.aspx.cs" Inherits="WebApp.Lab1_task3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <a href="Lab1_task2.aspx" style="z-index: 1; left: 1022px; top: 21px; position: absolute">Завдання №2</a>
        <a href="Default.aspx" style="z-index: 1; left: 916px; top: 21px; position: absolute">Завдання №1</a>
    <form id="form1" runat="server">
        
            <h2 style="z-index: 1; left: 451px; top: 22px; position: absolute; height: 26px; width: 1299px">Калькулятор</h2>
        
        <asp:Button ID="Button11" runat="server" Height="59px" Style="z-index: 1; left: 360px; top: 53px; position: absolute" Text="*" Width="59px" Font-Size="XX-Large" BorderStyle="Solid" BackColor="#F0F0F0" OnClick="Button11_Click" />
        <asp:Button ID="Button12" runat="server" Height="59px" Style="z-index: 1; left: 359px; top: 132px; position: absolute; right: 901px; bottom: 182px;" Text="/" Width="59px" Font-Size="XX-Large" BorderStyle="Solid" BackColor="#F0F0F0" OnClick="Button12_Click" />
        <asp:Button ID="Button13" runat="server" Height="59px" Style="z-index: 1; left: 359px; top: 221px; position: absolute" Text="+" Width="59px" Font-Size="XX-Large" BorderStyle="Solid" BackColor="#F0F0F0" OnClick="Button13_Click" />
        <asp:Button ID="Button14" runat="server" Height="59px" Style="z-index: 1; left: 359px; top: 310px; position: absolute" Text="-" Width="59px" Font-Size="XX-Large" BorderStyle="Solid" BackColor="#F0F0F0" OnClick="Button14_Click" />

           
            <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 212px; top: 179px; position: absolute; height: 44px; width: 106px"></asp:TextBox>
            <p style="z-index: 1; left: 221px; top: 145px; position: absolute; height: 19px; width: 90px">
                Перше число</p>
                  <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 460px; top: 175px; position: absolute; height: 44px; width: 116px"></asp:TextBox>
            <p style="z-index: 1; left: 470px; top: 141px; position: absolute; height: 19px; width: 1299px">
                Друге число<asp:Label ID="Label1" runat="server" style="z-index: 1; left: 193px; top: 0px; position: absolute" Text="Відповідь:"></asp:Label>
            </p>
            <asp:TextBox ID="TextBox3" runat="server" Height="44px" ReadOnly="True" style="z-index: 1; left: 642px; top: 174px; position: absolute; width: 131px; right: 714px"></asp:TextBox>
            <p style="z-index: 1; left: 470px; top: 141px; position: absolute; height: 19px; width: 1299px">
                &nbsp;</p>
            <p style="z-index: 1; left: 470px; top: 141px; position: absolute; height: 19px; width: 1299px">
                &nbsp;</p>
            <p style="z-index: 1; left: 470px; top: 141px; position: absolute; height: 19px; width: 1299px">
                <asp:Label ID="Label2" runat="server" style="z-index: 1; left: -455px; top: 243px; position: absolute; height: 90px; width: 412px"></asp:Label>
            </p>
    </form>
</body>
</html>
