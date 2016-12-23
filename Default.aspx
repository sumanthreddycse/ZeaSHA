<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>ZeaHSA</title>
    <link rel="shortcut icon" type="image/x-icon" href="Images/ZeaHSAicon.ico" />

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>

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
                            <li class="active"><a href="Default.aspx">Home</a></li>
                            <li><a href="About.aspx">About</a></li>
                            <li><a href="Contact.aspx">Contact</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Login<b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="SignInDoc.aspx">Doctors</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="SignInPat.aspx">Patients</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="SignInEmp.aspx">Employees</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="SignIn.aspx">Admin</a></li>
                                    <li role="separator" class="divider"></li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">SignUp<b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="SignUp.aspx">Doctors</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="SignUpPat.aspx">Patients</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="SignUpEmp.aspx">Employees</a></li>
                                    <li role="separator" class="divider"></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
    </div>
       
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
   <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="Images/Doc.png" alt="..."/>
                    <div class="carousel-caption">
                        <h3>Doctors</h3>
                        <p>Welcome to Healers of the World</p>
                        <p><a class="btn btn-lg btn-primary" href="SignUp.aspx" role="button">Sign Up</a></p>
                    </div>
                </div>
                <div class="item">
                    <img src="Images/Patients.png" alt="..."/>
                    <div class="carousel-caption">
                        <h3>Patients</h3>
                        <p>Hey, How are you !</p>
                        <p><a class="btn btn-lg btn-primary" href="SignUpPat.aspx" role="button">Sign Up</a></p>
                    </div>
                </div>
                <div class="item">
                    <img src="Images/Emp2.png" alt="..."/>
                    <div class="carousel-caption">
                        <h3>Employees</h3>
                        <p>Thanks for your hard work !</p>
                        <p><a class="btn btn-lg btn-primary" href="SignUpEmp.aspx" role="button">Sign Up</a></p>
                    </div>
                </div>
            </div>

  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

        <br />
        <br />
        <div class="container center">
            <div class="row">
                <div class="col-lg-4">
                    <img class="img-circle" src="Images/Doc.png" alt="thumb01" width="150" height="150" />
                    <h2>Doctors</h2>
                    <p> Welcome to the doctors, you can login here to view details of patients. Check the records</p>
                    <p><a class="btn btn-default" href="#" role="button">Login &raquo;</a></p>
                </div>
                <div class="col-lg-4">
                    <img class="img-circle" src="Images/Patients.png" alt="thumb02" width="150" height="150" />
                    <h2>Patients</h2>
                    <p>Hoping that every thing is fine, you can login here to check the receipts, charges and medical references</p>
                    <p><a class="btn btn-default" href="#" role="button">Login &raquo;</a></p>
                </div>
                <div class="col-lg-4">
                    <img class="img-circle" src="Images/Emp2.png" alt="thumb03" width="150" height="150" />
                    <h2>Employees</h2>
                    <p>Keep up the hard work. Welcome back for another day of awesomeness at work place. Login to resume what ever you have been doing</p>
                    <p><a class="btn btn-default" href="#" role="button">Login &raquo;</a></p>
                </div>
            </div>
        </div>
     
        <hr />

        <footer>
            <div class="container">
                <p class="pull-right"><a href="#">Back to top</a></p>
                <p>&copy; 2016 ZeaHSA &middot; <a href="Default.aspx">Home</a> &middot; <a href="About.aspx">About</a> &middot; <a href="Contact.aspx">Contact</a> &middot; <a href="#">Login</a></p>
            </div>
        </footer>


    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
