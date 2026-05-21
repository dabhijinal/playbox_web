<%-- 
    Document   : demo
    Created on : 11 Dec, 2024, 1:47:46 PM
    Author     : ADMIN
--%>

<%@page import="connection.DBConnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="provider-header.jsp" %>
<%
    DBConnection con = new DBConnection();
%>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>FREE RESPONSIVE HORIZONTAL ADMIN</title>
    <!-- BOOTSTRAP CORE STYLE  -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONT AWESOME STYLE  -->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- CUSTOM STYLE  -->
    <link href="assets/css/style.css" rel="stylesheet" />
    <!-- GOOGLE FONT -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
<body><br>
    <div class="content-wrapper">
        <div class="container">
            <div class="row pad-botm">
                <div class="col-md-12">
                    <h4 class="header-line">PROVIDER DASHBOARD</h4>

                </div>

            </div>

            <div class="row">

                <div class="col-md-3 col-sm-3 col-xs-6">
                    <div class="alert alert-info back-widget-set text-center">
                        <i class="fa fa-dot-circle-o fa-5x"></i>
                        <%
                            String pid = "0";
                            if (session.getAttribute("provider") != null) {
                                pid = session.getAttribute("provider").toString();
                            }

                            ResultSet rsCount = con.display("select count(cid) from courts where pid = " + pid);
                            if (rsCount.next()) {
                                int totalBookings = rsCount.getInt(1);
                        %>
                        <h3><%= totalBookings%> Courts</h3>
                        Amount Pending For Approval
                        <%
                            }
                        %>
                    </div>
                </div>
                <div class="col-md-3 col-sm-3 col-xs-6">
                    <div class="alert alert-success back-widget-set text-center">
                        <i class="fa fa-star fa-5x"></i>
                        <%
                            ResultSet rsCount1 = con.display("select count(spid) from sports");
                            if (rsCount1.next()) {
                                int totalSports = rsCount1.getInt(1);
                        %>
                        <h3><%= totalSports%>  Sports</h3>
                        Pending For New Events
                        <%
                            }
                        %>
                    </div>
                </div>
                <div class="col-md-3 col-sm-3 col-xs-6">
                    <div class="alert alert-warning back-widget-set text-center">
                        <i class="fa fa-recycle fa-5x"></i>
                        <%
                            String q = "select count(bid) from booking, courts where booking.cid = courts.cid and courts.pid = " + pid;
                            ResultSet rsCount2 = con.display(q); 

                            if (rsCount2.next()) {
                                int totalBookings = rsCount2.getInt(1); 
                        %>
                        <h3><%= totalBookings%> Booking</h3>
                        Amount Pending For Approval
                        <%
                            }
                        %>
                    </div>
                </div>
                <div class="col-md-3 col-sm-3 col-xs-6">
                    <div class="alert alert-danger back-widget-set text-center">
                        <i class="fa fa-comments-o fa-5x"></i>
                        <%
                            ResultSet rsCount3 = con.display("select count(revid) from reviews, courts where reviews.cid = courts.cid and courts.pid = " + pid + "");
                            if (rsCount3.next()) {
                                int totalBookings = rsCount3.getInt(1);
                        %>
                        <h3><%= totalBookings%> Review</h3>
                        Amount Pending For Approval
                        <%
                            }
                        %>
                    </div>
                </div>

            </div>              
            <br><br>




            <div class="row">
                <div class="col-md-4 col-sm-4 col-xs-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            My Courts
                        </div>
                        <%
                            String query1 = "select courts.cname, courts.img1 from courts where courts.pid = '" + pid + "'";
                            ResultSet rsCourts = con.display(query1);
                        %>
                        <div class="panel-body recent-users-sec text-center">

                            <%
                                while (rsCourts.next()) {
                                    String imagePath = "../img/" + rsCourts.getString("img1");
                            %>
                            <div class="col-md-4 col-sm-4 col-xs-12"> 
                                <img src="<%= imagePath%>" class="img-responsive center-block" style="width: 160px; height: 70px; margin-bottom: 15px;" alt="Court Image" />
                            </div>
                            <%
                                }
                            %>

                        </div>
                    </div>
                </div>

                <div class="col-md-8 col-sm-8 col-xs-12">
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            Resent Booking
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <%
                                    try {
                                        String query = "select booking.*, courts.cname, users.usname, sports.spname from booking,courts,users,sports where booking.cid = courts.cid and booking.usid = users.usid and courts.pid = '" + pid + "' and courts.spid = sports.spid";
                                        ResultSet rs = con.display(query);
                                %>
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>Id</th>
                                            <th>Court Name</th>
                                            <th>Sport Name</th>
                                            <th>User Name</th>
                                            <th>Status</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                            while (rs.next()) {
                                        %>
                                        <tr>
                                            <td><%= rs.getString("cid")%></td>
                                            <td><%= rs.getString("cname")%></td>
                                            <td><%= rs.getString("spname")%></td>
                                            <td><%= rs.getString("usname")%></td>
                                            <td><%= rs.getString("status")%></td>
                                        </tr>
                                        <%
                                            }
                                        %>
                                    </tbody>
                                </table>
                                <%
                                    } catch (Exception e) {
                                        out.println("<p>Error: " + e.getMessage() + "</p>");
                                    }
                                %>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</body>
</head>


<%@include file="admin-footer.jsp" %>
