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
                                        <hr>
                                        <!--Count item in cart-->
                                        <div class="d-flex justify-content-between align-items-center mb-4">
                                            <div>
                                                <p class="mb-1">Shopping cart</p>
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
                                                                    <h5 class="fw-normal mb-0">
                                                                        ${product.quantity}
                                                                    </h5>
                                                                </div>
                                                            </div>
                                                            <div class="d-flex flex-row align-items-center">
                                                                <div style="width: 80px;">
                                                                    <h5 class="mb-0">$ ${product.price}</h5>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </c:forEach>
                                        <div class="d-flex align-items-end">
                                            <a class="btn btn-block" href="viewCart.jsp">
                                                <i class="fa fa-arrow-left">Back</i>
                                            </a>
                                        </div>
                                    </div>

                                    <div class="col-lg-5">
                                        <div class="card bg-primary text-white rounded-3">
                                            <div class="card-body">
                                                <div class="d-flex justify-content-between align-items-center mb-4">
                                                    <h5 class="mb-0">Card details</h5>
                                                    <img src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/avatar-6.webp"
                                                         class="img-fluid rounded-3" style="width: 45px;" alt="Avatar">
                                                </div>

                                                <p class="small mb-2">Card type</p>
                                                <a href="#!" type="submit" class="text-white"><i
                                                        class="fa fa-cc-mastercard fa-2x me-2"></i></a>
                                                <a href="#!" type="submit" class="text-white"><i
                                                        class="fa fa-cc-visa fa-2x me-2"></i></a>
                                                <a href="#!" type="submit" class="text-white"><i
                                                        class="fa fa-cc-amex fa-2x me-2"></i></a>
                                                <a href="#!" type="submit" class="text-white"><i class="fa fa-cc-paypal fa-2x"></i></a>

                                                <form class="mt-4">
                                                    <div class="form-outline form-white mb-4">
                                                        <input type="text" id="typeName" class="form-control form-control-lg" siez="17"
                                                               placeholder="Cardholder's Name" />
                                                        <label class="form-label" for="typeName">Cardholder's Name</label>
                                                    </div>

                                                    <div class="form-outline form-white mb-4">
                                                        <input type="text" id="typeText" class="form-control form-control-lg" siez="17"
                                                               placeholder="1234 5678 9012 3457" minlength="19" maxlength="19" />
                                                        <label class="form-label" for="typeText">Card Number</label>
                                                    </div>

                                                    <div class="row mb-4">
                                                        <div class="col-md-6">
                                                            <div class="form-outline form-white">
                                                                <input type="text" id="typeExp" class="form-control form-control-lg"
                                                                       placeholder="MM/YYYY" size="7" id="exp" minlength="7" maxlength="7" />
                                                                <label class="form-label" for="typeExp">Expiration</label>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-outline form-white">
                                                                <input type="password" id="typeText" class="form-control form-control-lg"
                                                                       placeholder="&#9679;&#9679;&#9679;" size="1" minlength="3" maxlength="3" />
                                                                <label class="form-label" for="typeText">Cvv</label>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </form>

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
                                                        <span><input style="color: #FFFFFF" class="btn btn-block" type="submit" name="action" value="PROCEED"/></span>
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
