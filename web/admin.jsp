<%-- 
    Document   : test
    Created on : May 14, 2023, 10:07:13 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>User Management Data Table</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/adminStyle.css">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <style>
            body {
                color: #566787;
                background: #f5f5f5;
                font-family: 'Varela Round', sans-serif;
                font-size: 13px;
            }
            .table-responsive {
                margin: 30px 0;
            }
            .table-wrapper {
                min-width: 1000px;
                background: #fff;
                padding: 20px 25px;
                border-radius: 3px;
                box-shadow: 0 1px 1px rgba(0,0,0,.05);
            }
            .table-title {
                padding-bottom: 15px;
                background: #299be4;
                color: #fff;
                padding: 16px 30px;
                margin: -20px -25px 10px;
                border-radius: 3px 3px 0 0;
            }
            .table-title h2 {
                margin: 5px 0 0;
                font-size: 24px;
            }
            .table-title .btn {
                color: #566787;
                float: right;
                font-size: 13px;
                background: #fff;
                border: none;
                min-width: 50px;
                border-radius: 2px;
                border: none;
                outline: none !important;
                margin-left: 10px;
            }
            .table-title .btn:hover, .table-title .btn:focus {
                color: #566787;
                background: #f2f2f2;
            }
            .table-title .btn i {
                float: left;
                font-size: 21px;
                margin-right: 5px;
            }
            .table-title .btn span {
                float: left;
                margin-top: 2px;
            }
            table.table tr th, table.table tr td {
                border-color: #e9e9e9;
                padding: 12px 15px;
                vertical-align: middle;
            }
            table.table tr th:first-child {
                width: 60px;
            }
            table.table tr th:last-child {
                width: 100px;
            }
            table.table-striped tbody tr:nth-of-type(odd) {
                background-color: #fcfcfc;
            }
            table.table-striped.table-hover tbody tr:hover {
                background: #f5f5f5;
            }
            table.table th i {
                font-size: 13px;
                margin: 0 5px;
                cursor: pointer;
            }	
            table.table td:last-child i {
                opacity: 0.9;
                font-size: 22px;
                margin: 0 5px;
            }
            table.table td a {
                font-weight: bold;
                color: #566787;
                display: inline-block;
                text-decoration: none;
            }
            table.table td a:hover {
                color: #2196F3;
            }
            table.table td a.settings {
                color: #2196F3;
            }
            table.table td a.delete {
                color: #F44336;
            }
            table.table td i {
                font-size: 19px;
            }
            table.table .avatar {
                border-radius: 50%;
                vertical-align: middle;
                margin-right: 10px;
            }
            .status {
                font-size: 30px;
                margin: 2px 2px 0 0;
                display: inline-block;
                vertical-align: middle;
                line-height: 10px;
            }
            .text-success {
                color: #10c469;
            }
            .text-info {
                color: #62c9e8;
            }
            .text-warning {
                color: #FFC107;
            }
            .text-danger {
                color: #ff5b5b;
            }
            .pagination {
                float: right;
                margin: 0 0 5px;
            }
            .pagination li a {
                border: none;
                font-size: 13px;
                min-width: 30px;
                min-height: 30px;
                color: #999;
                margin: 0 2px;
                line-height: 30px;
                border-radius: 2px !important;
                text-align: center;
                padding: 0 6px;
            }
            .pagination li a:hover {
                color: #666;
            }	
            .pagination li.active a, .pagination li.active a.page-link {
                background: #03A9F4;
            }
            .pagination li.active a:hover {        
                background: #0397d6;
            }
            .pagination li.disabled i {
                color: #ccc;
            }
            .pagination li i {
                font-size: 16px;
                padding-top: 6px
            }
            .hint-text {
                float: left;
                margin-top: 10px;
                font-size: 13px;
            }
        </style>
        <script>
            $(document).ready(function () {
                $('[data-toggle="tooltip"]').tooltip();
            });
        </script>
    </head>
    <body>
        <div class="container-xl">
            <div class="table-responsive">
                <div class="table-wrapper">
                    <div class="table-title">
                        <div class="row">
                            <div class="col-sm-4">
                                <h2>User <b>Management</b></h2>
                            </div>
                            <div class="col-sm-8">
                                <div class="col-sm-4">

                                </div>
                                <div class="row-sm-4">
                                    <a href="#" class="btn btn-secondary js-buy-tickets"><i class="material-icons">&#xE147;</i> <span>Add New User</span></a>
                                    <a href="#" class="btn btn-secondary"><i class="material-icons">&#xE24D;</i> <span>Export to Excel</span></a>
                                    <form action="MainController" method="POST">
                                        <input type="submit" name="action" value="Logout" class="btn btn-secondary"/>
                                        <input type="text" id="Sinput" name="search" value=""<%= request.getParameter("search")%>/>
                                        <input type="submit" class="btn btn-secondary" name="action" value="Search"/>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>User ID</th>						
                                <th>Full Name</th>
                                <th>Role ID</th>
                                <th>Password</th>
                                <th>Action</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="user" varStatus="counter" items="${requestScope.LIST_USER}">
                            <form action="MainController" method="POST">
                                <tr>
                                    <td>${counter.count}</td>
                                    <td>
                                        <input type="text" name="userID" value="${user.userID}" readonly=""/>
                                    </td>
                                    <td>
                                        <input type="text" name="fullName" value="${user.fullName}" required=""/>
                                    </td>
                                    <td>
                                        <input type="text" name="roleID" value="${user.roleID}" required=""/>
                                    </td>
                                    <td>${user.password}</td>
                                    <td>
                                        <input class="settings" title="Update" data-toggle="tooltip" type="submit" name="action" value="Update"/>
                                        <input type="hidden" name="search" value="${param.search}"/>
                                    </td>
                                    <td>
                                        <c:url var="deleteLink" value="MainController">
                                            <c:param name="action" value="Delete"></c:param>
                                            <c:param name="userID" value="${user.userID}"></c:param>
                                            <c:param name="search" value="${param.search}"></c:param>
                                        </c:url>
                                        <a href="${deleteLink}" class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE5C9;</i></a>
                                    </td>
                                </tr>
                            </form>
                        </c:forEach>
                        </tbody>
                    </table>
                    <div class="clearfix">
                        <div class="hint-text">Showing <b>5</b> out of <b>25</b> entries</div>
                        <ul class="pagination">
                            <li class="page-item"><a href="#">Previous</a></li>
                            <li class="page-item active"><a href="#" class="page-link">1</a></li>
                            <li class="page-item"><a href="#" class="page-link">2</a></li>
                            <li class="page-item"><a href="#" class="page-link">3</a></li>
                            <li class="page-item"><a href="#" class="page-link">4</a></li>
                            <li class="page-item"><a href="#" class="page-link">5</a></li>
                            <li class="page-item"><a href="#" class="page-link">Next</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal submit table -->
        <div class="modal js-modal">
            <div class="modal-container js-modal-container">
                <div class="modal-close js-modal-close">
                    <i class="material-icons">&#xE5C9;</i>
                </div>
                <header class="modal-header">
                    <i class="ti-bag" style="margin-right: 16px;"></i>
                    Create User
                </header>
                <div class="modal-body">
                    <form action="MainController" method="POST">
                        <!--                    ========
                                                ========-->
                        <label class="modal-label" for="userID">
                            <i class="ti-shopping-cart"></i>
                            User ID
                        </label>
                        <input id="userID" name="userID" type="text" class="modal-input">
                        <!--                    ========
                                                ========-->
                        <label class="modal-label" for="fullName">
                            <i class="ti-shopping-cart"></i>
                            Full Name
                        </label>
                        <input id="fullName" name="fullName" type="text" class="modal-input">
                        <!--                    ========
                                                ========-->
                        <label class="modal-label" for="roleID">
                            <i class="ti-shopping-cart"></i>
                            Role ID
                        </label>
                        <input id="roleID" name="roleID" type="text" class="modal-input">
                        <!--                    ========
                                                ========-->
                        <label class="modal-label" for="password">
                            <i class="ti-shopping-cart"></i>
                            Password
                        </label>
                        <input id="password" name="password" type="text" class="modal-input">
                        <!--                    ========
                                                ========-->
                        <input type="hidden" name="rolepage" value="AD"/>
                        <input type="submit" name="action" class="form-submit" value="Create"/>
                    </form>
                </div>

                <footer class="modal-footer">
                    <p class="modal-help">Need <a href="">help?</a></p>
                </footer>
            </div>
        </div>
        <script src="js/scripts.js"></script>
    </body>
</html>