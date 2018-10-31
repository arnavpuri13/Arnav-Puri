<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidationDemoPage.aspx.cs" Inherits="assignment5.ValidationDemoPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <script type="text/javascript">
    function chk(src, args) 
    {
        if (window.document.Form1.cbx1.checked == false && 
                        window.document.Form1.cbx2.checked == false &&
                        window.document.Form1.cbx3.checked == false)
            args.IsValid = false;
        else
            args.IsValid = true;
    }
</script>
    <form id="form1" runat="server">
    <div style="height: 280px">
        <asp:Table ID="Table1" runat="server" Height="283px" Width="436px">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lbl1" runat="server">Name</asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txt1" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RequiredFieldValidator ControlToValidate="txt1" runat="server" ErrorMessage="Name is Mandatory" ID="rfvName" Text="*"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lbl2" runat="server">Email ID</asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                     <asp:TextBox ID="txt2" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txt2"  
                ValidationExpression="\w+@RlL\.\w{3}" Text="*"></asp:RegularExpressionValidator></asp:TableCell>

            </asp:TableRow>    
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lbl3" runat="server">Join Date</asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                     <asp:TextBox ID="txt3" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:CompareValidator ID="cvJD" runat="server" 
                ControlToValidate="txt3" ErrorMessage="Join Date is Invalid" Operator="DataTypeCheck" type="Date"></asp:CompareValidator></asp:TableCell>

            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lbl4" runat="server">Salary</asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txt4" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:CompareValidator ID="cvSalary" runat="server" 
                ControlToValidate="txt4" ErrorMessage="Salary is Invalid" Operator="DataTypeCheck" Type="Currency" Width="1.5px" Text="*"></asp:CompareValidator></asp:TableCell>

            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lbl5" runat="server">DA</asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                     <asp:TextBox ID="txt5" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:CompareValidator ID="cvDA" runat="server" 
                ControlToCompare="txt4" ControlToValidate="txt5" ErrorMessage="DA cannot be grater than salary" Operator="LessThanEqual" Text="*" Type="Currency" ></asp:CompareValidator></asp:TableCell>

            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lbl6" runat="server">Telephone</asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                     <asp:TextBox ID="txt6" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RegularExpressionValidator ID="revtele" runat="server" ControlToValidate="txt6" ErrorMessage="Telephone is Invalid" ValidationExpression="\(\d{3}\-\d{7}"></asp:RegularExpressionValidator>
                </asp:TableCell>

            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lbl7" runat="server">Password</asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                     <asp:TextBox ID="txt7" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RegularExpressionValidator ID="revPass" runat="server" ControlToValidate="txt7"  ErrorMessage="Password should have 5 to 10 characters." ValidationExpression="\w{5,10}"></asp:RegularExpressionValidator>
                </asp:TableCell>

            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lbl8" runat="server">Software Platform</asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                     <asp:CheckBox ID="cbx1" runat="server" Text="Dot Net " Font-Size="9px"/>
                    <asp:CheckBox ID="cbx2" runat="server" Text="Oracle " Font-Size="9px" />
                    <asp:CheckBox ID="cbx3" runat="server" Text="Java " Font-Size="9px"/>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:CustomValidator ID="cv" runat="server" ClientValidationFunction="chk" Text="*" ErrorMessage="Atleast one platform should be checked" ></asp:CustomValidator></asp:TableCell>

            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Button ID="btnSend" runat="server" Text="Send" />
                </asp:TableCell>
                <asp:TableCell>
                     <asp:Label ID="lblMessage" runat="server" Text="[lblMsg]"></asp:Label>
                </asp:TableCell>
                <%--<asp:TableCell>
                   <%-- <asp:ValidationSummary ID="vsfull" runat="server"
                ShowMessageBox="True" ShowSummary="False" /></asp:TableCell>--%>

            </asp:TableRow>
        </asp:Table>
    </div>
    </form>
</body>
</html>
