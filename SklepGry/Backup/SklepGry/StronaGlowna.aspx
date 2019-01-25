<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StronaGlowna.aspx.cs" Inherits="SklepGry.StronaGlowna" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     <div style="margin-left: 50px">
    
        <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Italic="True" Font-Names="Century Gothic" Font-Overline="False" Font-Size="X-Large" ForeColor="#FF6600" Text="Witaj, "></asp:Label>
        <asp:Label ID="LabelLoginAdmin" runat="server" Text="TWÓJ LOGIN" Font-Bold="True" Font-Italic="True" Font-Names="Century Gothic" Font-Overline="False" Font-Size="X-Large" ForeColor="#FF6600"></asp:Label>
        <br />
        <br />
&nbsp;
        <asp:Button ID="ButtonDodajAdmina" runat="server" OnClick="ButtonDodajAdmina_Click" Text="Dodaj administratora" Width="165px" Font-Names="Century Gothic" ForeColor="#252526" style="margin-left: 51px" />
        <asp:Button ID="ButtonWyloguj" runat="server" OnClick="ButtonWyloguj_Click1" Text="Wyloguj" Width="131px" Font-Names="Century Gothic" ForeColor="#252526" style="margin-left: 23px" />
        <br />
        <br />
        <asp:Label ID="LabelGra" runat="server" Text="Gry" Font-Names="Century Gothic" ForeColor="#FF6600"></asp:Label>
        <br />
    
         <br />
         <asp:GridView ID="GridViewGra" runat="server" AllowPaging="True" 
             AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id_gra" 
             DataSourceID="WyswietlGry" 
             onselectedindexchanged="GridViewGra_SelectedIndexChanged">
             <Columns>
                 <asp:BoundField DataField="id_gra" HeaderText="id_gra" SortExpression="id_gra" InsertVisible="False" ReadOnly="True" />
                 <asp:BoundField DataField="kod_produktu" HeaderText="Kod_produktu" SortExpression="kod_produktu" />
                 <asp:BoundField DataField="nazwa" HeaderText="Nazwa" SortExpression="nazwa" />
                 <asp:BoundField DataField="opis" HeaderText="Opis" SortExpression="opis" />
                 <asp:BoundField DataField="cena" HeaderText="Cena" SortExpression="cena" />
                 <asp:BoundField DataField="Kategoria" HeaderText="Kategoria" SortExpression="Kategoria" />
                 <asp:BoundField DataField="ilosc" HeaderText="Ilosc" SortExpression="ilosc" />
             </Columns>
              <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
         </asp:GridView>
         <asp:SqlDataSource ID="WyswietlGry" runat="server" 
             ConnectionString="<%$ ConnectionStrings:s2KarbowiakMConnectionString %>" 
             SelectCommand="SELECT gra.id_gra, gra.kod_produktu, gra.nazwa, gra.opis, gra.cena, kategoria_gry.nazwa AS Kategoria, gra.ilosc FROM gra INNER JOIN kategoria_gry ON gra.id_kategoria_gry = kategoria_gry.id_kategoria_gry">
         </asp:SqlDataSource>
        <br />
    <asp:Button ID="ButtonDodajGre" runat="server" Text="Dodaj nową gre" OnClick="ButtonDodajGre_Click" Font-Names="Century Gothic" ForeColor="#252526" style="margin-left: 75px" Width="213px" />
         <br />
         <br />
    </div>
    </form>
</body>
</html>
