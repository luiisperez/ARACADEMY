<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="ARAcademy.site.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
         <asp:FileUpload id="FileManager" runat="server" />

        </div>
        <asp:Button ID="AceptarBtn" runat="server" Text="Button" OnClick="AceptarBtn_Click" />
    </form>
</body>
</html>
