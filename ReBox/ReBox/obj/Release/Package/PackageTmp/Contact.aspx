<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ReBox.Contact" %>

<!DOCTYPE html>
<html>
<head>
    <title>About / ReBox</title>
    <meta charset="utf-8" />
    <link rel="icon" href="resources/icon.ico" type="image/x-icon" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/site.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
        }
    </style>
</head>
<body class="d-flex flex-column h-100">
    <form id="form1" runat="server">
        <header class="mb-auto">
            <nav class="navbar fixed-top navbar-expand-md navbar-dark nav-colored">
                <div class="container">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="index.aspx">
                            <img class="logo" src="resources/icon.png" alt="main icon" />
                        </a>
                    </div>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarCollapse">
                        <div class="nav navbar-nav ml-auto">
                            <a class="nav-item nav-link" href="/Index.aspx">HOME</a>
                            <a class="nav-item nav-link" href="/About.aspx">ABOUT</a>
                            <a class="nav-item nav-link active" href="/Contact.aspx">CONTACT<span class="sr-only">(current)</span></a>
                        </div>
                    </div>
                </div>
            </nav>
        </header>

        <main role="main" class="container-fluid px-0">
            <div class="container cover-container p-5">
                <h1 class="text-center">Contact Us</h1>
                <p class="text-center text-muted">
                    Do you have any questions? Please do not hesitate to contact us directly. Our team will come back to you within a matter of hours to help you.
                </p>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <asp:TextBox ID="txtFirstName" runat="server" class="form-control" placeholder="First name" />
                        <asp:RequiredFieldValidator ForeColor="DarkRed" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter your first name." ControlToValidate="txtFirstName" />
                    </div>
                    <div class="form-group col-md-6">
                        <asp:TextBox ID="txtLastName" runat="server" class="form-control" placeholder="Last name" />
                        <asp:RequiredFieldValidator ForeColor="DarkRed" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter your last name." ControlToValidate="txtLastName" />
                    </div>
                </div>
                <div class="form-group">
                    <asp:TextBox ID="txtSubject" runat="server" class="form-control" placeholder="Subject" />
                    <asp:RequiredFieldValidator ForeColor="DarkRed" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter a subject." ControlToValidate="txtSubject" />
                </div>
                <div class="form-group">
                    <asp:TextBox ID="txtEmail" runat="server" class="form-control" placeholder="Your email" />
                    <asp:RegularExpressionValidator ForeColor="DarkRed" ID="valRegEx" runat="server" ControlToValidate="txtEmail"
                        ValidationExpression=".*@.*\..*" ErrorMessage="Invalid Email address." Display="dynamic" />
                    <asp:RequiredFieldValidator ForeColor="DarkRed" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter an email address."
                        ControlToValidate="txtEmail" />
                </div>
                <div class="form-group">
                    <asp:TextBox ID="txtBody" runat="server" TextMode="MultiLine" class="form-control" placeholder="Your message" />
                    <asp:RequiredFieldValidator ForeColor="DarkRed" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter your message." ControlToValidate="txtBody" />
                </div>
                <div class="form-group text-center">
                    <asp:Button ID="btnSend" class="btn btn-lg" Text="Send" runat="server" OnClick="Send" />
                </div>
                <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="Green" />
            </div>
        </main>

        <footer class="mastfoot mastfoot-colored mt-auto py-3 text-center">
            <div class="container">
                <p>Made by <a href="https://github.com/re-box">@re-box</a>.</p>
            </div>
        </footer>
    </form>
    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/mdb.min.js"></script>
</body>
</html>
