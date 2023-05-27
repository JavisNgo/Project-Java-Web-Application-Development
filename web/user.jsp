<%-- 
    Document   : User2
    Created on : Feb 11, 2023, 2:36:41 PM
    Author     : Trung Kien
--%>
<%@page import="java.util.List"%>
<%@page import="sample.user.UserDTO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/userStyle.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>

        <div class="user-wrapper">
            <div class="form">
                <img src="images/avatar.png" alt="">
                <div class="welcome"> Welcome User Page</h1> </div>

                <div class="user">
                    User ID:${sessionScope.LOGIN_USER.userID}
                    </br>Full Name: ${sessionScope.LOGIN_USER.fullName}
                    </br>Role ID: ${sessionScope.LOGIN_USER.roleID}
                    </br>Password: ${sessionScope.LOGIN_USER.password}
                </div>

                <form action="MainController">
                    <input type="submit" name="action" value="Logout" class="Logout-btn"/>
                </form>
                <a href="MainController" class="Logout-btn">Home</a>
            </div>
        </div>

    </body>
</html>
