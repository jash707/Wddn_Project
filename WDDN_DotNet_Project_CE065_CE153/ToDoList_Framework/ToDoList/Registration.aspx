<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="ToDoList_Framework.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <style type="text/css">
        .auto-style1 {
            margin-bottom: .5rem;
            width: 385px;
        }
    </style>
</head>
<script>
    function ValidatePassword(source, arguments) {
        var data = arguments.Value.split('');
        //start by setting false 
        arguments.IsValid = false;
        //check length 
        if (data.length < 6 || data.length > 14) return;

        //check for uppercase, lowercase, and number
        var uc = false; var lc = false; var num = false;
        for (var c in data) {
            if (data[c] >= 'A' && data[c] <= 'Z') {
                uc = true;
            } else if (data[c] >= 'a' && data[c] <= 'z') {
                lc = true;
            } else if (data[c] >= '0' && data[c] <= '9') {
                num = true;
            }
            if (uc && lc && num) {
                arguments.IsValid = true;
                break;
            }
        }
    }

</script>
<body>
    <form class="mx-1 mx-md-4" id="form1" runat="server">
        <section class="vh-100" style="background-color: #eee;">
            <div class="container h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-lg-12 col-xl-11">
                        <div class="card text-black" style="border-radius: 25px;">
                            <div class="card-body p-md-5">
                                <div class="row justify-content-center">
                                    <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">
                                        <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign up</p>
                                        <div class="d-flex flex-row align-items-center mb-4">
                                            <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                                            <div class="form-outline flex-fill mb-0">
                                                <label class="form-label" for="form3Example1c">
                                                    Your Name
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="UserNameTextbox" ErrorMessage="*Username is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                                    <br />
                                                    <asp:RegularExpressionValidator ID="UserNameRegularExpressionValidator1" runat="server" ControlToValidate="UserNameTextbox" ErrorMessage="Please use only letters and numbers with no spaces" ValidationExpression="\w{3,14}" ForeColor="Red"></asp:RegularExpressionValidator>
                                                </label>
                                                <asp:TextBox ID="UserNameTextbox" runat="server" CssClass="form-control form-control-lg" placeholder="Enter Name"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="d-flex flex-row align-items-center mb-4">
                                            <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                                            <div class="form-outline flex-fill mb-0">
                                                <label class="form-label" for="form3Example3c">
                                                    Your Email 
                                                    <label class="form-label" for="form3Example1c">
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="*Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                                    </label>
                                                </label>
                                                <asp:TextBox ID="EmailTextBox" runat="server" TextMode="Email" CssClass="form-control form-control-lg" placeholder="Enter Email" ></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="d-flex flex-row align-items-center mb-4">
                                            <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                                            <div class="form-outline flex-fill mb-0">
                                                <label class="auto-style1" for="form3Example4c">
                                                    Password                                               
                                                </label>
                                                <asp:TextBox ID="PassTextBox" runat="server" TextMode="Password" CssClass="form-control form-control-lg" placeholder="Enter Password"></asp:TextBox>
                                                 <asp:CustomValidator ID="PassCustomValidator" runat="server" ForeColor="Red" ErrorMessage="Password must be between 6 and 14 charecter in length and must contain atleast one upperCase,lowerCase and digit." ClientValidationFunction="ValidatePassword" ControlToValidate="PassTextBox"></asp:CustomValidator>
                                            </div>
                                        </div>
                                        <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                                            <asp:Button CssClass="btn btn-primary btn-lg" ID="RegisterId" runat="server" Text="Register" OnClick="RegisterId_Click" />
                                        </div>
                                    </div>
                                    <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">
                                        <img src="https://mdbootstrap.com/img/Photos/new-templates/bootstrap-registration/draw1.png" class="img-fluid" alt="Sample image" />
                                    </div>
                               </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </form>
</body>
</html>
