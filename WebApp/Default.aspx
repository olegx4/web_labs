<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="Default.aspx.cs" Inherits="WebApp.Default" MaintainScrollPositionOnPostback="False" Async="False" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calculator</title>

    <style>
        .container span {
            display: inline-block;
            width: 92px;
        }

        #Checkbox1 {
            width: 30px;
            margin-left: 153px;
        }
    </style>
</head>

<body style="height: 174px">
    <form id="form1" runat="server">
        <asp:ScriptManager runat="server"></asp:ScriptManager>
        <div>
            <h2 style="z-index: 1; left: 9px; top: 24px; position: absolute; height: 26px; width: 1299px">Калькулятор прожитого часу
            </h2>
            <span>
                <a href="Lab1_task2.aspx" style="z-index: 1; left: 442px; top: 33px; position: absolute">Завдання №2</a>
            </span>
        </div>
        Поточний час:
        <asp:Label ID="outputLabel" runat="server" OnLoad="Page_Load" Text="Label"></asp:Label>
        &nbsp;<p>
            <asp:Label ID="Label1" runat="server" Text="Введіть ваші дані ПІБ"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="FioTxtBox" runat="server" Width="287px"></asp:TextBox>
        </p>
        <p>
            Виберіть дату народження:<asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="True" Height="16px" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged" ValidateRequestMode="Disabled" Width="141px">
                <asp:ListItem Value="yesTime">Врахувати час</asp:ListItem>
            </asp:CheckBoxList>
            &nbsp;
        </p>

        <div class="container">
            <%--<span>Ден</span>
            <span>Місяць</span>
            <span>Рік (YYYY)</span>--%>

            <asp:TextBox ID="TextBoxDate" runat="server" MaxLength="2" OnTextChanged="TextBoxDate_TextChanged" TextMode="Date" Width="324px" AutoPostBack="True"></asp:TextBox>
            &nbsp;Обрахувати скільки часу ви прожили:
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Go!" />
            <br />
        </div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional" RenderMode="Inline">
            <ContentTemplate>
                <asp:Label ID="outputTextTimeNow" runat="server"> </asp:Label>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="TextBoxDate" />
            </Triggers>
        </asp:UpdatePanel>

        <p>
            &nbsp;
        </p>
        <asp:TextBox ID="TextBoxRecords" runat="server" Height="125px" ReadOnly="True" TextMode="MultiLine" Width="993px" Wrap="False"></asp:TextBox>
    </form>
</body>
</html>
