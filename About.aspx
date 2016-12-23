<%@ Page Language="C#" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>About</title>
    <link rel="shortcut icon" type="image/x-icon" href="Images/ZeaHSAicon.ico" />

     <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/Custom-Cs.css" rel="stylesheet" />

   </head>
<body>
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
                            <li><a href="Default.aspx">Home</a></li>
                            <li class="active"><a href="About.aspx">About</a></li>
                            <li><a href="Contact.aspx">Contact</a></li>
                        </ul>
                    </div>
                </div>
            </div>
    
    </div>
        <br/>
        <br/>
        <br />
        <br/>
        <div class="container">
            <h1 style="font-family: 'Lucida Calligraphy'">About</h1>
            <hr />
            <p style="font-family: 'Calisto MT';">Our project’s aim is to develop an application for hospital system to help doctors, employees and patients to maintain their data and view the data according to the requirements of the specific users, so the users can view the data, edit the data, and delete the data. For doctor’s it could be patient’s history, medicine details or related data and for patients it could be history of the other patients who were treated for same disease, charges and some related data. For other employees it could be for auditing purposes and checking the accounts and profits.</p>
            <p style="font-family: 'Calisto MT';">
                In each of this databases, we will be having unique IDs, names, age, disease diagnosis, specifications, amount, department name and respectively details. 
In Doctors, data base we have functional dependency for Did, Name, and specialization 
In Patients’ data base we have functional dependency for Pid, Name and data admitted 
In users’ data base we have functional dependency for Uid, email id and passwords
 The databases are developed using Microsoft SQL server database, for all the databases mentioned. For the UI, we used ASP.Net for the front end web pages, with c# program logic implementation, Bootstrap for the Webpage specifications, java script for client side validations.
            </p>
            <p style="font-family: 'Calisto MT';">
                For Login, I have used ASP.net Web page, with java scrip validations, bootstrap functionalities for smooth look
For signup pages, I have used ASP.Net, C# implementation, JavaScript validations
For User page, I have used ASP.Net, C# for database management and manipulations along with SQL queries embedded in the C# implementation. 
Databases are developed and managed using management studio
            </p>
        </div>
        
        <br />
        <br/>

     
        <hr />
        

        <footer class="footer-pos">
            <div class="container">
                <p class="pull-right"><a href="#">Back to top</a></p>
                <p>&copy; 2016 ZeaHSA &middot; <a href="Default.aspx">Home</a> &middot; <a href="About.aspx">About</a> &middot; <a href="Contact.aspx">Contact</a> </p>
            </div>
        </footer>

    </form>
</body>
</html>
