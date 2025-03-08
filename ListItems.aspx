<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListItems.aspx.cs"
    Inherits="Modul3_Kel08.ListItems" %>

<!DOCTYPE html>                                                                                                                                                                                                                                 
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Daftar Buku</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        form {
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 400px;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        table {
            width: 100%;
        }

        td {
            padding: 8px;
        }

        input[type="text"] {
            width: 100%;
            padding: 6px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .button-group {
            display: flex;
            justify-content: space-between;
            margin-top: 10px;
        }

        .button-group asp:Button {
            flex: 1;
            margin: 0 5px;
        }

        .grid-container {
            margin-top: 20px;
        }

        .grid-container asp:GridView {
            width: 100%;
            border-collapse: collapse;
        }

        .grid-container asp:GridView th,
        .grid-container asp:GridView td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        .grid-container asp:GridView th {
            background-color: #007bff;
            color: white;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Daftar Buku</h2>
        <div>
            <table>
                <tr>
                    <td><strong>ID :</strong></td>
                    <td><asp:TextBox ID="txtIdBuku" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><strong>Judul :</strong></td>
                    <td><asp:TextBox ID="txtJudul" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><strong>Genre :</strong></td>
                    <td><asp:TextBox ID="txtGenre" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><strong>Rilis :</strong></td>
                    <td><asp:TextBox ID="txtRilis" runat="server"></asp:TextBox></td>
                </tr>
            </table>

            <div class="button-group">
                <asp:Button ID="btnAdd" runat="server" CssClass="btn" Text="ADD" OnClick="btnAdd_Click" />
                <asp:Button ID="btnDelete" runat="server" CssClass="btn" Text="DELETE" OnClick="btnDelete_Click" />
                <asp:Button ID="btnUpdate" runat="server" CssClass="btn" Text="UPDATE" OnClick="btnUpdate_Click" />
                <asp:Button ID="btnClear" runat="server" CssClass="btn" Text="CLEAR" OnClick="btnClear_Click" />
            </div>

            <div class="grid-container">
                <asp:GridView ID="GridViewJoin" runat="server" CssClass="grid">
                </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>
