<%-- 
    Document   : provider-header
    Created on : 11 Dec, 2024, 1:47:11 PM
    Author     : PROVIDER
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
                   <a class="navbar-brand" href="provider-index.jsp">
                        <img src="logo.png" style="height: 60px;width: 80px"/>
                    </a>

                </div>

                <div class="right-div">
                    
                    <a href="logout.jsp" class="btn btn-danger pull-right">LOG ME OUT</a>
                    <a href="provider-my-profile.jsp" class=" pull-right"><img src="profile.png" style="width:35px;height:35px;margin-right:20px"></a>
                    
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
                                <li><a href="provider-index.jsp" >DASHBOARD</a></li>
                                <li><a href="provider-review-view.jsp">Reviews</a></li>
                                <li><a href="provider-sports-view.jsp">Sports</a></li>
                                <li><a href="provider-booking-view.jsp">Booking</a></li>
                                <li>
                                    <a href="#" class="dropdown-toggle" id="ddlmenuItem" data-toggle="dropdown">Courts <i class="fa fa-angle-down"></i></a>
                                    <ul class="dropdown-menu" role="menu" aria-labelledby="ddlmenuItem">
                                        <li role="presentation"><a role="menuitem" tabindex="-1" href="provider-courts-add.jsp">Add</a></li>
                                        <li role="presentation"><a role="menuitem" tabindex="-1" href="provider-courts-view.jsp">View</a></li>
                                    </ul>
                                </li>

                            </ul>
                        </div>
                    </div>

                </div>
            </div>
        </section>
        <!-- MENU SECTION END-->
