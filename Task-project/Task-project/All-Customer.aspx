<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="All-Customer.aspx.cs" Inherits="Task_project.All_Customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .ll{
            font-weight:bold;
            font-size:large;
            color:#2B3A55;
        }
        .all{
            margin-left:30%;
            font-weight:bold;
            font-size:large;
            color:#2B3A55;
        }
         .all2{
            margin-left:30%;
            font-weight:bold;
            font-size:large;
            color:#CE7777;
        }
        .div_Show{
    border:solid 3px #2B3A55;
    border-radius:50px;
    width:25%;
    height:250px;
    margin-left:38%;
    margin-top:5%;
    background-color:#F2E5E5;
   
    
}
         h1{
    text-align:center;
    color:#2B3A55;
}
            .btn_Add{
                border:solid 2px #2B3A55;
     color:white;
     background-color:#2B3A55;
     margin-left:45%;
     border-radius:30px;
     padding:10px;
     font-size:large;
     font-weight:bold;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label4" runat="server" Text="Search By Name" CssClass="ll"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Search Name" OnTextChanged="TextBox1_TextChanged" AutoPostBack="true"></asp:TextBox><br /><br /><br />
            <asp:Label ID="Label5" runat="server" Text="Search By ID" CssClass="ll"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" placeholder="Search ID" OnTextChanged="TextBox2_TextChanged" AutoPostBack="true"></asp:TextBox>
            <br /><br />
            <h1>All Customers</h1>
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Width="100%">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:ImageField DataImageUrlField="photo" HeaderText="photo" ControlStyle-Width="200" ControlStyle-Height="200">
                    </asp:ImageField>
                    <asp:ImageField>
                    </asp:ImageField>
                    <asp:HyperLinkField DataNavigateUrlFields="CustomerId" DataNavigateUrlFormatString="Delete.aspx?ID={0}" Text="Delete" />
                </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView><br />
            <asp:Button ID="Add" runat="server" Text="Add Customers" class="btn_Add" OnClick="Add_Click" />
        </div>
         <div class="div_Show"><br />
            <asp:Label ID="Label1" runat="server" Text="The Number Of Customer: " CssClass="all"></asp:Label><br /><br />
            <asp:Label ID="numOfCus" runat="server" Text="" CssClass="all2"></asp:Label><br /><br />
            <asp:Label ID="Label2" runat="server" Text="Avg of age: " CssClass="all"></asp:Label><br /><br />
            <asp:Label ID="Avg" runat="server" Text="" CssClass="all2"></asp:Label ><br /><br />
            <asp:Label ID="Label3" runat="server" Text="Max Age: " CssClass="all"></asp:Label><br /><br />
            <asp:Label ID="MaxAvg" runat="server" Text="" CssClass="all2"></asp:Label><br /><br />
            </div>
    </form>
</body>
</html>
