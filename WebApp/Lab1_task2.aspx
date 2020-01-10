<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lab1_task2.aspx.cs" Inherits="WebApp.Lab1_task2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Завдання №2</title>
    <style type="text/css">
        #form1 {
            width: 387px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Великі композитори та їх твори:
            </h2>
        </div>


        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
            <asp:ListItem Value="bethoven">Людвіг ван Бетховен</asp:ListItem>
            <asp:ListItem Value="bah">Йоган Себаст&#39;ян Бах</asp:ListItem>
            <asp:ListItem Value="mocart">Вольфганг Амадей Моцарт</asp:ListItem>
            <asp:ListItem Value="vagner">Ріхард Вагнер</asp:ListItem>
        </asp:RadioButtonList>
        <asp:Panel ID="Panel1" runat="server" BackColor="White" BorderStyle="Outset" Style="z-index: 1; left: 406px; top: 50px; position: absolute; height: 306px; width: 732px; margin-top: 0px" Visible="False">
            <asp:Label ID="nameOfComposition" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Style="position: relative; z-index: 1; left: 0px; top: 0px"></asp:Label>
            <asp:Image ID="Image1" runat="server" BorderStyle="Dashed" Style="z-index: 1; left: 14px; top: 37px; position: absolute; right: 372px; height: 175px" Visible="False" />
            <asp:Label ID="informationAbout" runat="server" Style="z-index: 1; left: 248px; top: 38px; position: absolute; height: 176px; width: 437px"></asp:Label>
            <asp:ImageButton ID="ImageButton1" runat="server" OnClick="ImageButton1_Click" style="z-index: 1; left: 435px; top: 264px; position: absolute; height: 35px; width: 37px;" ImageUrl="~/Images/right.png" />
            <asp:ImageButton ID="ImageButton2" runat="server" OnClick="ImageButton2_Click" style="z-index: 2; left: 302px; top: 264px; position: absolute; height: 38px; width: 41px;" ImageUrl="~/Images/left.png" />
        </asp:Panel>


    </form>
</body>
</html>
