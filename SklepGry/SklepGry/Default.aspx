<%@ Page Title="Sklep z Grami" Language="C#" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="SklepGry._Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin-left: 50px">
    
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Italic="False" Font-Names="Century Gothic" Font-Overline="True" Font-Size="XX-Large" Font-Strikeout="False" Font-Underline="False" ForeColor="#333333" Text="Sklep z Grami"></asp:Label>
        <br />
        <br />
        <br />
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:Label ID="LabelLogin" runat="server" Text="login" style="margin-left: 250px" Font-Bold="False" Font-Italic="True" Font-Names="Century Gothic" ForeColor="#252526"></asp:Label>
        <asp:TextBox ID="TextBoxLogin" runat="server" style="margin-left: 47px" Height="20px" Width="129px" Font-Names="Century Gothic" MaxLength="11"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorLogin" runat="server" ControlToValidate="TextBoxLogin" ErrorMessage="podaj login;" Font-Bold="True" Font-Names="Century Gothic">*</asp:RequiredFieldValidator>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="LabelHaslo" runat="server" Text="hasło" style="margin-left: 250px" Font-Bold="False" Font-Italic="True" Font-Names="Century Gothic" ForeColor="#252526"></asp:Label>
        <asp:TextBox ID="TextBoxHaslo" runat="server" style="margin-left: 44px" Height="20px" Width="129px" Font-Bold="False" Font-Names="Century Gothic"  TextMode="Password" MaxLength="20"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorHaslo" runat="server" ControlToValidate="TextBoxHaslo" ErrorMessage="podaj hasło;" Font-Bold="True" Font-Names="Century Gothic">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="ButtonZaloguj" runat="server" ForeColor="#252526" OnClick="ButtonZaloguj_Click" Text="ZALOGUJ" Width="133px" Font-Bold="False" Font-Names="Century Gothic" Font-Size="Medium" Height="33px" style="margin-left: 369px" />
        <br />
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="SingleParagraph" Font-Italic="True" Font-Names="Century Gothic" Font-Size="Small" Font-Strikeout="False" Font-Underline="False" ForeColor="#FF6600" />
    
    </div>
    </form>
</body>
</html>
