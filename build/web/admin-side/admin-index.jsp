<%-- ADMIN 







    Document   : demo
    Created on : 11 Dec, 2024, 1:47:46 PM
    Author     : ADMIN
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="connection.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="admin-header.jsp" %>

<div class="content-wrapper">
    <h2 style="padding-left: 50px">ADMIN-DASHBOARD</h2><hr style="margin: 20px;border:0.2px solid gray">
    <div class="row" style="margin-left: 100px;margin-right: 100px;margin-top: 50px">

        <div class="col-md-3 col-sm-3 col-xs-6">
            <div class="alert alert-info back-widget-set text-center">
                <i class="fa fa-users fa-5x"></i>
                <h3>
                    <%
                        DBConnection con = new DBConnection();

                        String usid = "0";
                        if (session.getAttribute("users") != null) {
                            usid = session.getAttribute("users").toString();
                        }

                        ResultSet rsCount = con.display("select count(usid) from users");
                        if (rsCount.next()) {
                            int totaluser = rsCount.getInt(1);
                    %>
                    <h3><%= totaluser%>+&nbsp;Users</h3>
                    <%
                        }
                    %>
                    which are registered
            </div>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-6">
            <div class="alert alert-success back-widget-set text-center">
                <i class="fa fa-dot-circle-o fa-5x"></i>
                <%
                    ResultSet rsCount1 = con.display("select count(cid) from courts");
                    if (rsCount1.next()) {
                        int totalcourts = rsCount1.getInt(1);
                %>
                <h3><%= totalcourts%> Courts</h3>
                Pending For New Sports
                <%
                    }
                %>
            </div>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-6">
            <div class="alert alert-warning back-widget-set text-center">
                <i class="fa fa-star fa-5x"></i>
                <%
                    ResultSet rsCount2 = con.display("select count(spid) from sports");
                    if (rsCount2.next()) {
                        int totalSports = rsCount2.getInt(1);
                %>
                <h3><%= totalSports%> Sports</h3>
                options for users
                <%
                    }
                %>
            </div>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-6">
            <div class="alert alert-danger back-widget-set text-center">
                <i class="fa fa-comments-o fa-5x"></i>
                <%
                    ResultSet rsCount3 = con.display("select count(revid) from reviews");
                    if (rsCount3.next()) {
                        int totalreview = rsCount3.getInt(1);
                %>
                <h3><%= totalreview%>  Reviews</h3>
                Given by registered users
                <%
                    }
                %>
            </div>
        </div>

    </div> 
    <div style="display: flex">
        <div class="col-md-4 col-sm-4 col-xs-12" style="margin-left: 100px;width: 400px">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Recent Users
                </div>
                <div class="panel-body text-center recent-users-sec">
                    <img class="img-thumbnail" src="../img/prov1.jpg" style="width: 70px;"/>
                    <img class="img-thumbnail" src="../img/prov2.jpg" style="width: 70px;"/>
                    <img class="img-thumbnail" src="../img/prov3.jpg" style="width: 70px;"/><br>
                    <img class="img-thumbnail" src="../img/prov4.jpg" style="width: 70px;"/>
                    <img class="img-thumbnail" src="../img/prov5.jpg" style="width: 70px;"/>
                </div>
            </div>
        </div>
        <div class="col-md-8 col-sm-8 col-xs-12" style="width:900px;margin-left: 10px">
            <div class="panel panel-success" >
                <div class="panel-heading">
                    Recent Users
                </div>
                <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Name</th>
                                    <th>City</th>
                                    <th>Contact</th>
                                    <th>E-mail</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    ResultSet rs = con.display("select * from users");
                                    while (rs.next()) {
                                %>
                                <tr class="odd gradeX">
                                    <td><%=rs.getString("usid")%></td>
                                    <td><%=rs.getString("usname")%></td>
                                    <td><%=rs.getString("city")%></td>
                                    <td><%=rs.getString("contact")%></td>
                                    <td><%=rs.getString("email")%></td>
                                </tr>
                                <%}
                                %>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- CONTENT-WRAPPER SECTION END-->

<%@include file="admin-footer.jsp" %>