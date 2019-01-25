<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DodajGre.aspx.cs" Inherits="SklepGry.DodajGre" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin-left: 50px">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Century Gothic" Font-Size="Large" ForeColor="#FF6600" Text="Dodaj Grę"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Font-Names="Century Gothic" ForeColor="#FF6600" Text="WPROWADŹ DANE"></asp:Label>
    <br />
    <br />

            <asp:Label ID="Label8" runat="server" Font-Names="Century Gothic" ForeColor="#252526" Text="Kategoria" style="margin-left: 50px"></asp:Label>

&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="KatGry" 
            DataTextField="nazwa" DataValueField="nazwa" Font-Names="Candara" ForeColor="#252526" style="margin-left: 48px" Width="156px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="KatGry" runat="server" 
            ConnectionString="<%$ ConnectionStrings:s2KarbowiakMConnectionString %>" 
            SelectCommand="SELECT [id_kategoria_gry], [nazwa] FROM [kategoria_gry]">
        </asp:SqlDataSource>
&nbsp;&nbsp;
        <br />
    <asp:Label ID="Label3" runat="server" Font-Names="Century Gothic" ForeColor="#252526" Text="Kod Produktu" style="margin-left: 50px"></asp:Label>
        &nbsp;
        <asp:TextBox ID="TextBoxKod" runat="server" Font-Names="Century Gothic" ForeColor="#252526" style="margin-left: 16px" Width="153px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxKod" ErrorMessage="podaj kod produktu;" Font-Names="Century Gothic">*</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label4" runat="server" Font-Names="Century Gothic" ForeColor="#252526" Text="Ilość" style="margin-left: 50px"></asp:Label>
&nbsp;<asp:TextBox ID="TextBoxIlosc" runat="server" Font-Names="Century Gothic" ForeColor="#252526" style="margin-left: 90px" Width="152px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxIlosc" ErrorMessage="podaj ilosc;" Font-Names="Century Gothic">*</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label5" runat="server" Font-Names="Century Gothic" ForeColor="#252526" Text="Nazwa" style="margin-left: 50px"></asp:Label>
&nbsp;<asp:TextBox ID="TextBoxNazwa" runat="server" Font-Names="Century Gothic" ForeColor="#252526" style="margin-left: 70px" Width="152px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxNazwa" ErrorMessage="podaj nazwe;" Font-Names="Century Gothic">*</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label7" runat="server" Font-Names="Century Gothic" ForeColor="#252526" Text="Opis" style="margin-left: 50px"></asp:Label>
&nbsp;<asp:TextBox ID="TextBoxOpis" runat="server" Font-Names="Century Gothic" ForeColor="#252526" style="margin-left: 90px" Width="152px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxOpis" ErrorMessage="podaj opis;" Font-Names="Century Gothic">*</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label6" runat="server" Font-Names="Century Gothic" ForeColor="#252526" Text="Cena" style="margin-left: 50px"></asp:Label>
&nbsp;<asp:TextBox ID="TextBoxCena" runat="server" Font-Names="Century Gothic" ForeColor="#252526" style="margin-left: 80px" Width="152px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxCena" ErrorMessage="podaj cenę;" Font-Names="Century Gothic">*</asp:RequiredFieldValidator>
        <br />


        <br />
        <br />
        <asp:Button ID="ButtonDodaj" runat="server" Text="Dodaj" Width="113px" Font-Names="Century Gothic" ForeColor="#252526" OnClick="ButtonDodaj_Click" style="margin-left: 50px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="ButtonAnuluj" runat="server" Text="Anuluj" Width="109px" OnClick="ButtonAnuluj_Click" Font-Names="Century Gothic" ForeColor="#252526" CausesValidation="False" />
    </div>
    </form>
</body>
</html>
