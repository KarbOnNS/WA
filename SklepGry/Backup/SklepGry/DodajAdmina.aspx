<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DodajAdmina.aspx.cs" Inherits="SklepGry.DodajAdmina" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Century Gothic" Font-Overline="True" Font-Size="X-Large" ForeColor="#252526" Text="Dodaj nowego Pracownika" style="margin-left: 80px"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="login" Font-Names="Century Gothic" ForeColor="#252526" style="margin-left: 250px"></asp:Label>
        <asp:TextBox ID="TextBoxLogin" runat="server" style="margin-left: 19px" Font-Names="Century Gothic" ForeColor="#252526" MaxLength="15"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxLogin" ErrorMessage="podaj login;">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="hasło" Font-Names="Century Gothic" ForeColor="#252526" style="margin-left: 248px"></asp:Label>
        <asp:TextBox ID="TextBoxHaslo" runat="server" style="margin-left: 15px" Font-Names="Century Gothic" ForeColor="#252526" TextMode="Password" MaxLength="20"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxHaslo" ErrorMessage="podaj hasło">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <br />
        <asp:Button ID="ButtonAnuluj" runat="server" OnClick="ButtonAnuluj_Click" Text="Anuluj" Width="116px" Font-Names="Century Gothic" ForeColor="#252526" style="margin-left: 116px" CausesValidation="False" />
        <asp:Button ID="ButtonPotwierdzDodawanie" runat="server" OnClick="ButtonPotwierdzDodawanie_Click" Text="Dodaj" Width="116px" Font-Names="Century Gothic" ForeColor="#252526" style="margin-left: 40px" />
        <br />
        <br />
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="SingleParagraph" Font-Italic="True" Font-Names="Century Gothic" Font-Size="Small" Font-Strikeout="False" Font-Underline="False" ForeColor="#FF6600" />
    
        <br />
    </form>
</body>
</html>