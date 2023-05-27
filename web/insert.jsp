<%-- 
    Document   : Create
    Created on : Oct 10, 2022, 7:43:33 AM
    Author     : Acer
--%>

<%@page import="sample.product.Product"%>
<%@page import="sample.user.UserError"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Page</title>
        <link href="css/insertStyle.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="create-wrapper">
            <%
                Product product = (Product) request.getAttribute("LIST_PRODUCT");
                if (product == null) {
                    product = new Product();
                }
            %>
            <form action="MainController" method="POST" class="form">

                <h2>INSERT MOBILE</h2>
                <h4 style="text-align: center;">INPUT YOUR INFORMATION:</h4></br>
                <div class="input-group">
                    Mobile ID <br>
                    <input type="text" name="mobileId" required=""/>
                </div>
                <div class="input-group">
                    Description<br>
                    <input type="text" name="description" required=""/>
                </div>
                <div class="input-group">
                    Price<br>
                    <input type="text" name="price" required=""/>
                </div>
                <div class="input-group">
                    Mobile Name<br>
                    <input type="text" name="mobileName" required=""/>
                </div>
                <div class="input-group">
                    Year of Production</br>
                    <input type="text" name="yearOfProduction" required=""/>
                </div>
                <div class="input-group">
                    Quantity</br>
                    <input type="text" name="quantity" required=""/>
                </div>
                <div class="input-group">
                    Not Sale</br>
                    <input type="text" name="notSale" required=""/>
                </div>
                <input type="submit" name="action" value="Add new" class="submit-btn"/>
                <input type="reset" value="Reset" class="reset-btn"/>
                <a href="admin.jsp" class="back-btn">Back to Admin Page</a>
            </form>
            
        </div>
    </body>
</html>
