<%-- 
    Document   : brand
    Created on : May 24, 2023, 10:48:32 AM
    Author     : Admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <!-- basic -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- mobile metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <!-- site metas -->
        <title>pomato</title>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <meta name="author" content="">
        <!-- bootstrap css -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- style css -->
        <link rel="stylesheet" href="css/style.css">
        <!-- Responsive-->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- fevicon -->
        <link rel="icon" href="images/fevicon.png" type="image/gif" />
        <!-- Scrollbar Custom CSS -->
        <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
        <!-- Tweaks for older IEs-->
        <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
        <!-- owl stylesheets -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    </head>
    <!-- body -->

    <body class="main-layout">
        <!-- loader  -->
        <div class="loader_bg">
            <div class="loader"><img src="images/loading.gif" alt="#" /></div>
        </div>
        <!-- end loader -->
        <!-- header -->
        <header>
           <!-- header inner -->
            <div class="header">

                <div class="container">
                    <div class="row">
                        <div class="col-xl-2 col-lg-2 col-md-2 col-sm-2 col logo_section">
                            <div class="full">
                                <div class="center-desk">
                                    <div class="logo">
                                        <a href="index.html"><img src="images/logo.png" alt="#"></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-10 col-lg-10 col-md-10 col-sm-10">
                            <div class="menu-area">
                                <div class="limit-box">
                                    <nav class="main-menu">
                                        <ul class="menu-area-main">
                                            <li class="active"> <a href="shopping.jsp">Home</a> </li>
                                            <li><a href="ShowCategoryController">Brand
                                                </a></li>

                                            <li><a href="contact.html">Contact Us</a></li>
                                                <c:if test="${sessionScope.LOGIN_USER==null}">
                                                <li><a href="login.jsp">Login</a></li>
                                                </c:if>
                                            <li class="last">
                                                <a href="#"><img src="images/search_icon.png" alt="icon" /></a>
                                                <input id="search" name="name" type="text">
                                            </li>
                                            <c:if test="${sessionScope.LOGIN_USER!=null}">
                                                <li class="last">
                                                    <a href="user.jsp"><img src="images/top-icon.png" alt="icon" /></a>
                                                    <a href="user.jsp">${sessionScope.LOGIN_USER.fullName}</a>
                                                </li>

                                                <li>
                                                    <c:url var="logout" value="MainController">
                                                        <c:param name="action" value="Logout"></c:param>
                                                    </c:url>
                                                    <a href="${logout}">Logout</a>
                                                </li>
                                            </c:if>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end header inner -->
        </header>
        <!-- end header -->
        <div class="brand_color">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="titlepage">
                            <h2>Our Brand</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- brand -->
        <div class="brand">
            <div class="container">
                <h1>${requestScope.MESSAGE}</h1>
            </div>
            <div class="brand-bg">
                <div class="container">
                    <div class="row" style="justify-content: center">
                        <div class="brand_box col-md-6">
                            <img src="images/${sessionScope.PRODUCT.picture}" alt="img" />
                            <h3>$<strong class="red">${sessionScope.PRODUCT.price}</strong></h3>
                            <span><h1>${sessionScope.PRODUCT.name}</h1></span>
                            <i><img src="images/star.png"/></i>
                            <i><img src="images/star.png"/></i>
                            <i><img src="images/star.png"/></i>
                            <i><img src="images/star.png"/></i>
                        </div>
                        <div class="brand_box col-md-6">
                            <p>${sessionScope.PRODUCT.description}</p>
                            <!--Add to Cart-->
                            <c:url var="add" value="MainController">
                                <c:param name="cmbName" value="${sessionScope.PRODUCT.name}"></c:param>
                                <c:param name="cmbID" value="${sessionScope.PRODUCT.id}"></c:param>
                                <c:param name="cmbPrice" value="${sessionScope.PRODUCT.price}"></c:param>
                                <c:param name="cmbPicture" value="${sessionScope.PRODUCT.picture}"></c:param>
                                <c:param name="cmbDescription" value="${sessionScope.PRODUCT.description}"></c:param>
                            </c:url>                 
                                <form action="${add}" method="POST">
                                    <p>Vui lòng nhập số lượng:<input type="number" name="cmbQuantity" value=""></p>
                                    <input style="cursor: pointer" class="read-more" type="submit" name="action" value="Buy">
                                </form>
                            <!--View Cart-->
                            <c:if test="${sessionScope.CART!=null}">
                                <a class="read-more" href="viewCart.jsp">View</a>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- end brand -->

        <!-- footer -->
        <footer>
            <div id="contact" class="footer">
                <div class="container">
                    <div class="row pdn-top-30">
                        <div class="col-md-12 ">
                            <div class="footer-box">
                                <div class="headinga">
                                    <h3>Address</h3>
                                    <span>Healing Center, 176 W Streetname,New York, NY 10014, US</span>
                                    <p>(+71) 8522369417
                                        <br>demo@gmail.com</p>
                                </div>
                                <ul class="location_icon">
                                    <li> <a href="#"><i class="fa fa-facebook-f"></i></a></li>
                                    <li> <a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li> <a href="#"><i class="fa fa-instagram"></i></a></li>

                                </ul>
                                <div class="menu-bottom">
                                    <ul class="link">
                                        <li> <a href="#">Home</a></li>
                                        <li> <a href="#">About</a></li>

                                        <li> <a href="#">Brand </a></li>
                                        <li> <a href="#">Specials  </a></li>
                                        <li> <a href="#"> Contact us</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="copyright">
                    <div class="container">
                        <p>© 2019 All Rights Reserved. Design By<a href="https://html.design/"> Free Html Templates</a></p>
                    </div>
                </div>
            </div>
        </footer>
        <!-- end footer -->
        <!-- Javascript files-->
        <script src="js/jquery.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/jquery-3.0.0.min.js"></script>
        <script src="js/plugin.js"></script>
        <!-- sidebar -->
        <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
        <script src="js/custom.js"></script>
        <!-- javascript -->
        <script src="js/owl.carousel.js"></script>
        <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
        <script>
            $(document).ready(function () {
                $(".fancybox").fancybox({
                    openEffect: "none",
                    closeEffect: "none"
                });

                $(".zoom").hover(function () {

                    $(this).addClass('transition');
                }, function () {

                    $(this).removeClass('transition');
                });
            });
        </script>
    </body>

</html>
