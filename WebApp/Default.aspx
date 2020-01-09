<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApp.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calculator</title>
    <style>
        .container span {
            display: inline-block;
            width:92px;
        }
    </style>
</head>

<body style="height: 174px">
    <form id="form1" runat="server">
    <div>
    <h2>Калькулятор прожитого часу</h2>
    </div>
        Поточний час:
        <asp:Label ID="outputLabel" runat="server" OnLoad="Page_Load" Text="Label"></asp:Label>
        &nbsp;<p>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Введіть ваші дані ПІБ"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="FioTxtBox" runat="server" Width="287px"></asp:TextBox>
        </p>
        <p>
            Виберіть дату народження:
        </p>
 
        <div class="container">
            <asp:TextBox ID="TextBoxDate" runat="server" MaxLength="2" Width="277px" TextMode="Date" AutoPostBack="True" OnTextChanged="TextBoxDate_TextChanged"></asp:TextBox>
            <%--<span>Ден</span>
            <span>Місяць</span>
            <span>Рік (YYYY)</span>--%>&nbsp;Обрахувати скільки часу ви прожили:
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Go!" />
            <br />
        </div>
            

        <p>
            <asp:Label ID="outputTextTimeNow" runat="server"></asp:Label>
        </p>
        <asp:TextBox ID="TextBoxRecords" runat="server" Height="125px" ReadOnly="True" TextMode="MultiLine" Width="568px" Wrap="False"></asp:TextBox>
    </form>
</body>
</html>
