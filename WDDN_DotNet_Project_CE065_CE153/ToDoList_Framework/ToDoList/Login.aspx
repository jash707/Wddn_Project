<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ToDoList_Framework.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>
        divider:after,
        .divider:before {
            content: "";
            flex: 1;
            height: 1px;
            background: #eee;
        }

        .h-custom {
            height: calc(100% - 73px);
        }

        @media (max-width: 450px) {
            .h-custom {
                height: 100%;
            }
        }
    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
    <section class="vh-100">
        <div class="container-fluid h-custom">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-md-9 col-lg-6 col-xl-5">
                    <img src="https://mdbootstrap.com/img/Photos/new-templates/bootstrap-login-form/draw2.png" class="img-fluid" alt="Sample image"/>
                    
                </div>
                <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
                        <!-- Email input -->
                        <div class="form-outline mb-4">
                            <label class="form-label" for="form3Example3">User Name
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserNameLoginTextbox" ErrorMessage="*Username Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            </label>
                            &nbsp;<asp:TextBox ID="UserNameLoginTextbox" runat="server" CssClass="form-control form-control-lg" placeholder="Enter Username" ></asp:TextBox>  
                        </div>

                        <!-- Password input -->
                        <div class="form-outline mb-3">
                            <label class="form-label" for="form3Example4">Password
                            <label class="form-label" for="form3Example3">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PassLoginTextBox" ErrorMessage="*Password Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            </label>
                            </label>
                            &nbsp;<asp:TextBox ID="PassLoginTextBox" runat="server" TextMode="Password" CssClass="form-control form-control-lg" placeholder="Enter Password" ></asp:TextBox> 
                        </div>
                        <div class="text-center text-lg-start mt-4 pt-2">
                            <asp:Button CssClass="btn btn-primary btn-lg"
                                style="padding-left: 2.5rem; padding-right: 2.5rem;" ID="LoginId" runat="server" Text="Login" OnClick="LoginId_Click" />
                            
                            <p class="small fw-bold mt-2 pt-1 mb-0">
                                Don't have an account? <a href="Registration.aspx"
                                    class="link-danger">Register</a>
                            </p>
                        </div>

                </div>
            </div>
        </div>
        <div class="d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-4 px-4 px-xl-5 bg-primary">
            <!-- Copyright -->
            <div class="text-white mb-3 mb-md-0">
                Copyright © 2020. All rights reserved.
            </div>
            <!-- Copyright -->
        </div>
    </section>
        <div>
        </div>
    </form>
</body>
</html>
