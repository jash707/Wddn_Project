<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ToDoList.aspx.cs" Inherits="ToDoList_Framework.ToDoList.ToDoList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" id="html1" runat="server">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css"></script>
    <style>
        #list1 .form-control {
            border-color: transparent;
        }

            #list1 .form-control:focus {
                border-color: transparent;
                box-shadow: none;
            }

        #list1 .select-input.form-control[readonly]:not([disabled]) {
            background-color: #fbfbfb;
        }
    </style>
</head>
<body>
    <form id="ToDo" runat="server">
        <section class="vh-100">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col">
                        <div class="card" id="list1" style="border-radius: .75rem; background-color: #eff1f2;">
                            <div class="card-body py-4 px-4 px-md-5">
                                <h3>Welcome! <% Response.Write(Session["username"]); %></h3>
                                <asp:Button runat="server" ID="Button1" CssClass="btn btn-secondary float-end" Text="Logout" OnClick="logOut_Click" />
                                <p class="h1 text-center mt-3 mb-4 pb-3 text-primary">
                                    <i class="fas fa-check-square me-1"></i>
                                    <u>My Todo-s</u>
                                </p>
                                <!-- <h1><% //Response.Write(Session["userID"]); %></h1> !-->
                                <div class="pb-5">
                                    <div class="card">
                                        <div class="card-body my-2">
                                            <div class="d-flex flex-row align-items-center">
                                                <br />
                                                <asp:TextBox ID="TitleofTodo" runat="server" CssClass="form-control form-control-lg" placeholder="Enter Title"></asp:TextBox>
                                            </div>
                                            <hr />
                                            <div class="form-group shadow-textarea">
                                                <asp:TextBox runat="server" TextMode="MultiLine" CssClass="form-control form-control-lg" ID="DescofTodo" placeholder="Enter Description"></asp:TextBox>
                                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ControlToValidate="DescofTodo" ErrorMessage="*Title and Description required"></asp:RequiredFieldValidator>--%>
                                            </div>
                                            <hr />

                                            <div class="text-center">
                                                <asp:Button runat="server" ID="addTodo" CssClass="btn btn-primary align-center" Text="Add" OnClick="addTodo_Click" />
                                                <br />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="form-control form-control-lg" DataKeyNames="Id">
                                    <Columns>                                          
                                        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                                        <asp:BoundField DataField="Desc" HeaderText="Desc" SortExpression="Desc" />
                                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ControlStyle-CssClass="btn btn-primary mx-2" />
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [ToDO] WHERE [Id] = @Id" SelectCommand="SELECT * FROM [ToDO] WHERE ([UserId] = @UserId)" UpdateCommand="UPDATE [ToDO] SET [Title] = @Title, [Desc] = @Desc, [Date] = @Date WHERE [Id] = @Id">
                                    <DeleteParameters>
                                        <asp:Parameter Name="Id" Type="Int32" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="UserId" Type="Int32" />
                                        <asp:Parameter Name="Title" Type="String" />
                                        <asp:Parameter Name="Desc" Type="String" />
                                        <asp:Parameter Name="Date" Type="DateTime" />
                                    </InsertParameters>
                                    <SelectParameters>
                                        <asp:SessionParameter Name="UserId" SessionField="userId" Type="Int32" />
                                    </SelectParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="UserId" Type="Int32" />
                                        <asp:Parameter Name="Title" Type="String" />
                                        <asp:Parameter Name="Desc" Type="String" />
                                        <asp:Parameter Name="Date" Type="DateTime" />
                                        <asp:Parameter Name="Id" Type="Int32" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </form>
</body>
</html>
