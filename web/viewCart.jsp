<%-- 
    Document   : viewCart-1
    Created on : May 24, 2023, 12:02:44 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/cartStyle.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
        <section class="h-100 h-custom" style="background-color: #eee;">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col">
                        <div class="card">
                            <div class="card-body p-4">
                                <div class="row">

                                    <div class="col-lg-7">
                                        <h5 class="mb-3"><a href="MainController" class="text-body"><i
                                                    class="fas fa-long-arrow-alt-left me-2"></i>Continue shopping</a></h5>
                                        <hr>
                                        <!--Count item in cart-->
                                        <div class="d-flex justify-content-between align-items-center mb-4">
                                            <div>
                                                <p class="mb-1">Shopping cart <i class="fa fa-shopping-cart"></i></p>
                                                
                                            </div>
                                        </div>
                                        <!--==================-->

                                        <c:forEach var="product" varStatus="counter" items="${CART.cart.values()}">
                                            <c:set var = "total" value = "${total+(product.price*product.quantity)}"/>
                                            <form action="MainController" method="POST">
                                                <div class="card mb-3">
                                                    <div class="card-body">
                                                        <div class="d-flex justify-content-between">
                                                            <div class="d-flex flex-row align-items-center">
                                                                <div>
                                                                    <img
                                                                        src="images/${product.picture}"
                                                                        class="img-fluid rounded-3" alt="Shopping item" style="width: 65px;">
                                                                </div>
                                                                <div class="ms-3">
                                                                    <h5>${product.name}</h5>
                                                                </div>
                                                            </div>
                                                            <div class="d-flex flex-row align-items-center">
                                                                <div>
                                                                    <h5 class="fw-normal mb-0"><input type="number" name="quantity" value="${product.quantity}" min="1"/>
                                                                        <input type="hidden" name="quantity" value="${product.quantity}"/>
                                                                        <input type="hidden" name="id" value="${product.id}"/>
                                                                    </h5>
                                                                </div>
                                                                <div style="width: 80px;">
                                                                    <h5 class="mb-0">$ ${product.price}</h5>
                                                                </div>
                                                            </div>
                                                            <input type="submit" name="action" value="Edit" class="btn"/>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </c:forEach>
                                    </div>

                                    <div class="col-lg-5">
                                        <div class="card bg-primary text-white rounded-3">
                                            <div class="card-body">
                                                
                                                <hr class="my-4">
                                                
                                                <div class="d-flex justify-content-between">
                                                    <p class="mb-2">Taxes</p>
                                                    <p class="mb-2">$20.00</p>
                                                </div>
                                                
                                                <div class="d-flex justify-content-between mb-4">
                                                    <p class="mb-2">Total(Incl. taxes)</p>
                                                    <p class="mb-2">$${total+20}</p>
                                                </div>

                                                <form action="MainController" method="POST" class="btn btn-info btn-block btn-lg">
                                                    <div class="d-flex justify-content-between">
                                                        <span>$${total+20}</span>
                                                        <span><a href="checkout.jsp" style="font: 20px; color: #FFFFFF" class="btn btn-block">CHECKOUT</a></span>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
