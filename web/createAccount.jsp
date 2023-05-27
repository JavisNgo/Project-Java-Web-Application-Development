<%@page import="sample.user.UserError"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Sign Up Form by Colorlib</title>

        <!-- Font Icon -->
        <link rel="stylesheet"
              href="fonts/material-icon/css/material-design-iconic-font.min.css">

        <!-- Main css -->
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>

        <div class="main">
            <%
                UserError userError = (UserError) request.getAttribute("USER_ERROR");
                if (userError == null) {
                    userError = new UserError();
                }
            %>
            <!-- Sign up form -->
            <section class="signup">
                <div class="container">
                    <div class="signup-content">
                        <div class="signup-form">
                            <h2 class="form-title">Sign up</h2>

                            <form method="POST" action="MainController" class="register-form"
                                  id="register-form">
                                <div class="form-group">
                                    <label for="name">
                                        <i class="zmdi zmdi-account material-icons-name"></i>
                                    </label> 
                                    User ID<input type="text" name="userID" required=""/>
                                    ${requestScope.USER_ERROR.userIDError}</br>
                                </div>

                                <div class="form-group">
                                    <label for="name">
                                        <i class="zmdi zmdi-account material-icons-name"></i>
                                    </label> 
                                    Full name<input type="text" name="fullName" required=""/>
                                    ${requestScope.USER_ERROR.fullNameIDError}</br>
                                </div>

                                <div class="form-group">
                                    <label for="name">
                                        <i class="zmdi zmdi-account material-icons-name"></i>
                                    </label> 
                                    Role ID<input type="text" name="roleID" value="US" readonly=""/></br>
                                </div>

                                <div class="form-group">
                                    <label for="pass">
                                        <i class="zmdi zmdi-lock"></i>
                                    </label> Password<input type="password" name="password" required=""/></br>
                                </div>
                                <div class="form-group">
                                    <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                                    <input type="password" name="confirm" id="re_pass"
                                           placeholder="Repeat your password" />

                                </div>

                                <div class="form-group form-button">
                                    <input type="submit" name="action" id="signup"
                                           class="form-submit" value="Create" />
                                </div>
                            </form>
                        </div>
                        <div class="signup-image">
                            <figure>
                                <img src="images/signup-image.jpg" alt="sing up image">
                            </figure>
                            <a href="login.jsp" class="signup-image-link">I am already
                                member</a>
                        </div>
                    </div>
                </div>
            </section>


        </div>
        <!-- JS -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="js/main.js"></script>



    </body>
    <!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>