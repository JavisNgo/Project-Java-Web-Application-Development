<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <title>SAMSUNGMATO</title>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <meta name="author" content="">
        <!-- bootstrap css -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- style css -->
        <link rel="stylesheet" href="css/style.css">
        <!-- Responsive-->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- ShoppingStyle-->
        <link rel="stylesheet" href="css/ShoppingStyle.css">
        <!-- fevicon -->
        <link rel="icon" href="images/fevicon.png" type="image/gif"/>
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

    <body class="main-layout ">
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
                                                    <a href="user.jsp"><img src="images/top-icon.png" alt="icon" />${sessionScope.LOGIN_USER.fullName}</a>
                                                    
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
        <section class="slider_section">
            <div id="myCarousel" class="carousel slide banner-main" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="slide" src="images/banner.jpg" alt="First slide">
                        <div class="container">
                            <div class="carousel-caption relative">
                                <span>Best seller</span>
                                <h1>up to 25% Flat Sale</h1>
                                <p>It is a long established fact that a reader will be distracted by the readable content
                                    <br> of a page when looking at its layout. The point of using Lorem Ipsum is that</p>
                                <a class="buynow" href="#">Buy Now</a>
                                <ul class="social_icon">
                                    <li> <a href="#"><i class="fa fa-facebook-f"></i></a></li>
                                    <li> <a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li> <a href="#"><i class="fa fa-instagram"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div> 
                </div>
            </div>
        </section>

        <!-- about -->
        <div class="about">
            <div class="container">
                <div class="row">
                    <div class="col-xl-5 col-lg-5 col-md-5 co-sm-l2">
                        <div class="about_img">
                            <figure><img src="images/about.png" alt="img" /></figure>
                        </div>
                    </div>
                    <div class="col-xl-7 col-lg-7 col-md-7 co-sm-l2">
                        <div class="about_box">
                            <h3>About Us</h3>
                            <span>Our Mobile Shop</span>
                            <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of It is a long established fact that a reader will be distracted by the </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end about -->

        <!-- brand -->
        <div class="brand">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="titlepage">
                            <h2>Our Brand</h2>
                            <c:forEach varStatus="counter" items="${CART.cart.values()}">
                                <c:set var="countproduct" value="${counter.count}"></c:set>
                            </c:forEach>
                        </div>
                        <c:if test="${CART.cart.values()!=null}">
                            <h3>You have ${countproduct} items in your cart ||<a href="viewCart-1.jsp"> View</a></h3>
                        </c:if>
                    </div>
                </div>
            </div>
            <div class="brand-bg">
                <div class="container">
                    <div class="row">
                        <c:forEach var="item" items="${sessionScope.LIST_PRODUCT}">
                            <div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 margin">
                                <div class="brand_box">
                                    <img src="images/${item.picture}" alt="img" />
                                    <h3>$<strong class="red">${item.price}</strong></h3>
                                    <span>${item.name}</span>
                                    <i><img src="images/star.png"/></i>
                                    <i><img src="images/star.png"/></i>
                                    <i><img src="images/star.png"/></i>
                                    <i><img src="images/star.png"/></i>
                                    <!--Show detail-->
                                    <form action="MainController" method="POST">
                                        <input type="hidden" name="cmbID" value="${item.id}"/>
                                        <input style="cursor: pointer" type="submit" name="action" value="Show" class="read-more"/>
                                    </form>
                                    <!--Add to cart-->
                                    <form action="MainController" method="POST">
                                        <input type="hidden" name="cmbName" value="${item.name}"/>
                                        <input type="hidden" name="cmbID" value="${item.id}"/>
                                        <input type="hidden" name="cmbPrice" value="${item.price}"/>
                                        <input type="hidden" name="cmbQuantity" value="1"/>
                                        <input type="hidden" name="cmbPicture" value="${item.picture}"/>
                                        <input type="hidden" name="cmbDescription" value="${item.description}"/>
                                        <input type="hidden" name="cmbCategory" value="${item.categoryID}"/>
                                        <input style="cursor: pointer" class="read-more" type="submit" name="action" value="Buy"/>
                                    </form>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
        <!-- end clients -->
        <!-- contact -->
        <div class="contact">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="titlepage">
                            <h2>Contact us</h2>
                        </div>
                        <form class="main_form">
                            <div class="row">
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                                    <input class="form-control" placeholder="Your name" type="text" name="Your Name">
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                                    <input class="form-control" placeholder="Email" type="text" name="Email">
                                </div>
                                <div class=" col-md-12">
                                    <input class="form-control" placeholder="Phone" type="text" name="Phone">
                                </div>
                                <div class="col-md-12">
                                    <textarea class="textarea" placeholder="Message"></textarea>
                                </div>
                                <div class=" col-md-12">
                                    <button class="send">Send</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- end contact -->

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
            var searchElement = document.querySelector('#search');
            searchElement.onmousedown = function (e) {
                e.preventDefault();
                e.stopPropagatioin();
            };

        </script>
    </body>

</html>