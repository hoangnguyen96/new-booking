<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 09/20/17
  Time: 5:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header class="main-header">
    <div class="container">
        <nav class="navbar navbar-default">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a href="index.html" class="logo">
                    <img src="../../resources/img/logo.png">
                </a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="/home" class="dropdown-toggle" role="button" aria-haspopup="true" aria-expanded="false">Home</a>

                    </li>
                    <li class="dropdown">
                        <a href="/rooms" class="dropdown-toggle"  role="button" aria-haspopup="true" aria-expanded="false">Rooms</a>

                    </li>
                    <li class="dropdown">
                        <a href="/login" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Pages<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Service</a></li>
                            <li><a href="/checkin">Checkin</a></li>
                            <li><a href="/checkout">Checkout</a></li>
                            <li><a href="/forgotpassword">Forgot Password</a></li>
                        </ul>
                    </li>
                    <li><a href="#">About</a></li>
                    <c:choose>
                        <c:when test="${empty user}">
                            <li><a href="/login">Login</a></li>
                            <li><a href="/register">Signup</a></li>
                        </c:when>
                        <c:otherwise>
                            <li class="dropdown">
                                <a href="/login" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">${user.name}<span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="/update">UPDATE</a></li>
                                    <li><a href="/logout">LOGOUT</a></li>
                                    <li><a href="/change">CHANGEPASSWORD</a></li>
                                </ul>
                            </li>
                        </c:otherwise>
                    </c:choose>

                </ul>
            </div>
            <!-- /.navbar-collapse -->
            <!-- /.container -->
        </nav>
    </div>
</header>
