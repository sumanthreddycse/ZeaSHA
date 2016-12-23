<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomeAdmin.aspx.cs" Inherits="HomeAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Admin-Home</title>
    <link rel="shortcut icon" type="image/x-icon" href="Images/ZeaHSAicon.ico" />

    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/Custom-Cs.css" rel="stylesheet" />

</head>
<body style="background-image: url('Images/back7.jpg'); width:100%; height:100%;" z-index:2;>
    <form id="form1" runat="server">
    <div>
        <div class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="HomeAdmin.aspx"><span>
                        <img alt="Logo" src="Images/ZeaHSA.png" height="30" /></span>ZeaHSA</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="HomeAdmin.aspx">Home</a></li>
                        <li>
                            <asp:Button ID="btnSignOut" runat="server" Class="btn btn-default navbar-btn" Text="Sign out" OnClick="btnSignOut_Click" />
                        </li>
                    </ul>

                </div>
            </div>
        </div>
    
    </div>
          
        <p>
            &nbsp;</p>
  <div style="margin-left: auto; margin-right: auto; text-align: center;">
        <asp:Label ID="Label1" runat="server" Text="Doctors' Data" Font-Size="Large"></asp:Label>
        </div>
        <p>
            <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Center" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Docid" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Docid" HeaderText="Docid" InsertVisible="False" ReadOnly="True" SortExpression="Docid" />
                    <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DBMSConnectionString1 %>" DeleteCommand="DELETE FROM [Usersdoc] WHERE [Docid] = @original_Docid AND (([Username] = @original_Username) OR ([Username] IS NULL AND @original_Username IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL))" InsertCommand="INSERT INTO [Usersdoc] ([Username], [Password], [Email], [Name]) VALUES (@Username, @Password, @Email, @Name)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Docid], [Username], [Password], [Email], [Name] FROM [Usersdoc] ORDER BY [Docid]" UpdateCommand="UPDATE [Usersdoc] SET [Username] = @Username, [Password] = @Password, [Email] = @Email, [Name] = @Name WHERE [Docid] = @original_Docid AND (([Username] = @original_Username) OR ([Username] IS NULL AND @original_Username IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Docid" Type="Int32" />
                    <asp:Parameter Name="original_Username" Type="String" />
                    <asp:Parameter Name="original_Password" Type="String" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_Name" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Name" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="original_Docid" Type="Int32" />
                    <asp:Parameter Name="original_Username" Type="String" />
                    <asp:Parameter Name="original_Password" Type="String" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_Name" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        
            <div style="margin-left: auto; margin-right: auto; text-align: center;">
            <asp:Label ID="Label2" runat="server" Text="Patients' Data" Font-Size="Large"></asp:Label>
                </div>
        
        <p>
            <asp:GridView ID="GridView2" runat="server" HorizontalAlign="Center" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Patid" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Patid" HeaderText="Patid" InsertVisible="False" ReadOnly="True" SortExpression="Patid" />
                    <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DBMSConnectionString1 %>" DeleteCommand="DELETE FROM [Userspat] WHERE [Patid] = @original_Patid AND (([Username] = @original_Username) OR ([Username] IS NULL AND @original_Username IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL)) AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([DOB] = @original_DOB) OR ([DOB] IS NULL AND @original_DOB IS NULL))" InsertCommand="INSERT INTO [Userspat] ([Username], [Email], [Password], [Name], [DOB]) VALUES (@Username, @Email, @Password, @Name, @DOB)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Patid], [Username], [Email], [Password], [Name], [DOB] FROM [Userspat] ORDER BY [Patid]" UpdateCommand="UPDATE [Userspat] SET [Username] = @Username, [Email] = @Email, [Password] = @Password, [Name] = @Name, [DOB] = @DOB WHERE [Patid] = @original_Patid AND (([Username] = @original_Username) OR ([Username] IS NULL AND @original_Username IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL)) AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([DOB] = @original_DOB) OR ([DOB] IS NULL AND @original_DOB IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Patid" Type="Int32" />
                    <asp:Parameter Name="original_Username" Type="String" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_Password" Type="String" />
                    <asp:Parameter Name="original_Name" Type="String" />
                    <asp:Parameter DbType="Date" Name="original_DOB" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter DbType="Date" Name="DOB" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter DbType="Date" Name="DOB" />
                    <asp:Parameter Name="original_Patid" Type="Int32" />
                    <asp:Parameter Name="original_Username" Type="String" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_Password" Type="String" />
                    <asp:Parameter Name="original_Name" Type="String" />
                    <asp:Parameter DbType="Date" Name="original_DOB" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
             <div style="margin-left: auto; margin-right: auto; text-align: center;">
             <asp:Label ID="Label3" runat="server" HorizontalAlign="Center" Text="Employees' Data" Font-Size="Large"></asp:Label>
        </div>
        <p>
            <asp:GridView ID="GridView3" runat="server" HorizontalAlign="Center" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Empid" DataSourceID="SqlDataSource3">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Empid" HeaderText="Empid" InsertVisible="False" ReadOnly="True" SortExpression="Empid" />
                    <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server"  ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DBMSConnectionString1 %>" DeleteCommand="DELETE FROM [Usersemp] WHERE [Empid] = @original_Empid AND (([Username] = @original_Username) OR ([Username] IS NULL AND @original_Username IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL))" InsertCommand="INSERT INTO [Usersemp] ([Username], [Password], [Email], [Name]) VALUES (@Username, @Password, @Email, @Name)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Empid], [Username], [Password], [Email], [Name] FROM [Usersemp] ORDER BY [Empid]" UpdateCommand="UPDATE [Usersemp] SET [Username] = @Username, [Password] = @Password, [Email] = @Email, [Name] = @Name WHERE [Empid] = @original_Empid AND (([Username] = @original_Username) OR ([Username] IS NULL AND @original_Username IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Empid" Type="Int32" />
                    <asp:Parameter Name="original_Username" Type="String" />
                    <asp:Parameter Name="original_Password" Type="String" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_Name" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Name" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="original_Empid" Type="Int32" />
                    <asp:Parameter Name="original_Username" Type="String" />
                    <asp:Parameter Name="original_Password" Type="String" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_Name" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>

    </form>
    <p>
        &nbsp;</p>
</body>
</html>
