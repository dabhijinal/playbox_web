<%-- 
    Document   : admin-header
    Created on : 11 Dec, 2024, 1:47:11 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
﻿<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <!--[if IE]>
            <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
        <title>FREE RESPONSIVE HORIZONTAL ADMIN</title>
        <!-- BOOTSTRAP CORE STYLE  -->
        <link href="assets/css/bootstrap.css" rel="stylesheet" />
        <!-- FONT AWESOME STYLE  -->
        <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLE  -->
        <link href="assets/css/style.css" rel="stylesheet" />
        <!-- GOOGLE FONT -->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />

    </head>
    <body>
        <div class="navbar navbar-inverse set-radius-zero" >
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="admin-index.jsp">
                        <img src="logo.png" style="height: 60px;width: 80px"/>
                    </a>

                </div>

                <div class="right-div">
                    <a href="logout.jsp" class="btn btn-danger pull-right">LOG ME OUT</a>
                </div>
            </div>
        </div>
        <!-- LOGO HEADER END-->
        <section class="menu-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="navbar-collapse collapse ">
                            <ul id="menu-top" class="nav navbar-nav navbar-right">
                                
                                <li><a href="admin-index.jsp" >DASHBOARD</a></li>
                                <li><a href="admin-provider-view.jsp">Providers</a></li>
                                <li><a href="admin-users-view.jsp">Users</a></li>
                                <li><a href="admin-court-view.jsp">Courts</a></li>
                                <li><a href="admin-booking-view.jsp">Booking</a></li>
                                <li><a href="admin-contact-view.jsp">Contact</a></li>
                                <li><a href="admin-review-view.jsp">Review</a></li>
                                <li>
                                    <a href="#" class="dropdown-toggle" id="ddlmenuItem" data-toggle="dropdown">Sport <i class="fa fa-angle-down"></i></a>
                                    <ul class="dropdown-menu" role="menu" aria-labelledby="ddlmenuItem">
                                        <li role="presentation"><a role="menuitem" tabindex="-1" href="admin-sports-add.jsp">Add</a></li>
                                        <li role="presentation"><a role="menuitem" tabindex="-1" href="admin-sports-view.jsp">View</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>

                </div>
            </div>
        </section>
        <!-- MENU SECTION END-->
