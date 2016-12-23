<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DocAppointments.aspx.cs" Inherits="DocAppointments" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Doctor's Appointments</title>
    <link rel="shortcut icon" type="image/x-icon" href="Images/ZeaHSAicon.ico" />

    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/Custom-Cs.css" rel="stylesheet" />

</head>
<body style="background-image: url('Images/back9.jpg'); width:100%; height:100%;">
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
                    <a class="navbar-brand" href="Default.aspx"><span>
                        <img alt="Logo" src="Images/ZeaHSA.png" height="30" /></span>ZeaHSA</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="HomeDoc.aspx">Home</a></li>
                        <li><a href="DocMessages.aspx">Messages</a></li>
                        <li class="active"><a href="DocAppointments.aspx">Appointments</a></li>
                        <li>
                            <asp:Button ID="btnSignOut" runat="server" Class="btn btn-default navbar-btn" Text="Sign out" OnClick="btnSignOut_Click" />
                        </li>
                    </ul>

                </div>
            </div>
        </div>
    </div>
                <div class="container">
            <div class="form-horizontal">
                <div class="center">

        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
<div style="margin-left: auto; margin-right: auto; text-align: center;">
            <asp:Label ID="Label1" runat="server" Font-Size="Large" Text="Appointments" style="font-family:'Lucida Calligraphy'"></asp:Label>
    </div>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:GridView ID="GridView1" HorizontalAlign="Center" runat="server" cellpadding="10" cellspacing="5">
            </asp:GridView>
        </p>
        <p>
            &nbsp;</p>
                    </div>
                </div>
            </div>
        <p>
            &nbsp;</p>

    </form>
</body>
</html>
