<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewToDo.aspx.cs" Inherits="ToDoList_Framework.ToDoList.ViewToDo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
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
    <form id="form1" runat="server">
        <section class="vh-100">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col">
                        <div class="card" id="list1" style="border-radius: .75rem; background-color: #eff1f2;">
                            <div class="card-body py-4 px-4 px-md-5">
                                <!-- <h1><% //Response.Write(Session["userID"]); %></h1> !-->
                                <p class="h1 text-center mt-3 mb-4 pb-3 text-primary">
                                    <i class="fas fa-check-square me-1"></i>
                                    <u>My Todo-s</u>
                                </p>
                                <ul class="list-group list-group-horizontal rounded-0 bg-transparent">
                                    <li class="list-group-item d-flex align-items-center ps-0 pe-3 py-1 rounded-0 border-0 bg-transparent">
                                        <div class="form-check">
                                            <input
                                                class="form-check-input me-0"
                                                type="checkbox"
                                                value=""
                                                id="flexCheckChecked1"
                                                aria-label="..." />
                                        </div>
                                    </li>
                                    <li class="list-group-item px-3 py-1 d-flex align-items-center flex-grow-1 border-0 bg-transparent">
                                        <p class="lead fw-normal mb-0">Buy groceries for next week</p>
                                    </li>
                                    <li class="list-group-item ps-3 pe-0 py-1 rounded-0 border-0 bg-transparent">
                                        <div class="d-flex flex-row justify-content-end mb-1">
                                            <a href="#!" class="text-info" data-mdb-toggle="tooltip" title="Edit todo"><i class="fas fa-pencil-alt me-3"></i></a>
                                            <a href="#!" class="text-danger" data-mdb-toggle="tooltip" title="Delete todo"><i class="fas fa-trash-alt"></i></a>
                                        </div>
                                        <div class="text-end text-muted">
                                            <a href="#!" class="text-muted" data-mdb-toggle="tooltip" title="Created date">
                                                <p class="small mb-0"><i class="fas fa-info-circle me-2"></i>28th Jun 2020</p>
                                            </a>
                                        </div>
                                    </li>
                                </ul>
                                <ul class="list-group list-group-horizontal rounded-0">
                                    <li class="list-group-item d-flex align-items-center ps-0 pe-3 py-1 rounded-0 border-0 bg-transparent">
                                        <div class="form-check">
                                            <input
                                                class="form-check-input me-0"
                                                type="checkbox"
                                                value=""
                                                id="flexCheckChecked2"
                                                aria-label="..." />
                                        </div>
                                    </li>
                                    <li class="list-group-item px-3 py-1 d-flex align-items-center flex-grow-1 border-0 bg-transparent">
                                        <p class="lead fw-normal mb-0">Renew car insurance</p>
                                    </li>
                                    <li class="list-group-item px-3 py-1 d-flex align-items-center border-0 bg-transparent">
                                        <div class="py-2 px-3 me-2 border border-warning rounded-3 d-flex align-items-center bg-light">
                                            <p class="small mb-0">
                                                <a href="#!" data-mdb-toggle="tooltip" title="Due on date">
                                                    <i class="fas fa-hourglass-half me-2 text-warning"></i>
                                                </a>
                                                28th Jun 2020
                                            </p>
                                        </div>
                                    </li>
                                    <li class="list-group-item ps-3 pe-0 py-1 rounded-0 border-0 bg-transparent">
                                        <div class="d-flex flex-row justify-content-end mb-1">
                                            <a href="#!" class="text-info" data-mdb-toggle="tooltip" title="Edit todo"><i class="fas fa-pencil-alt me-3"></i></a>
                                            <a href="#!" class="text-danger" data-mdb-toggle="tooltip" title="Delete todo"><i class="fas fa-trash-alt"></i></a>
                                        </div>
                                        <div class="text-end text-muted">
                                            <a href="#!" class="text-muted" data-mdb-toggle="tooltip" title="Created date">
                                                <p class="small mb-0"><i class="fas fa-info-circle me-2"></i>28th Jun 2020</p>
                                            </a>
                                        </div>
                                    </li>
                                </ul>
                                <ul class="list-group list-group-horizontal rounded-0 mb-2">
                                    <li class="list-group-item d-flex align-items-center ps-0 pe-3 py-1 rounded-0 border-0 bg-transparent">
                                        <div class="form-check">
                                            <input
                                                class="form-check-input me-0"
                                                type="checkbox"
                                                value=""
                                                id="flexCheckChecked3"
                                                aria-label="..." />
                                        </div>
                                    </li>
                                    <li class="list-group-item px-3 py-1 d-flex align-items-center flex-grow-1 border-0 bg-transparent">
                                        <p class="lead fw-normal mb-0 bg-light w-100 ms-n2 ps-2 py-1 rounded">Sign up for online course</p>
                                    </li>
                                    <li class="list-group-item ps-3 pe-0 py-1 rounded-0 border-0 bg-transparent">
                                        <div class="d-flex flex-row justify-content-end mb-1">
                                            <a href="#!" class="text-danger" data-mdb-toggle="tooltip" title="Delete todo"><i class="fas fa-trash-alt"></i></a>
                                        </div>
                                        <div class="text-end text-muted">
                                            <a href="#!" class="text-muted" data-mdb-toggle="tooltip" title="Created date">
                                                <p class="small mb-0"><i class="fas fa-info-circle me-2"></i>28th Jun 2020</p>
                                            </a>
                                        </div>
                                    </li>
                                </ul>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </form>
</body>
</html>
