<%-- 
    Document   : demo
    Created on : 11 Dec, 2024, 1:47:46 PM
    Author     : ADMIN
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="connection.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="admin-header.jsp" %>


<%
    DBConnection con = new DBConnection();
%>

<div class="content-wrapper">
    <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <h4 class="header-line">Admin - Review - View </h4>

            </div>

        </div>



        <div class="row">
            <div class="col-md-12">
                <!-- Advanced Tables -->
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Review
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                        
                                        <th>User </th>
                                        <th>Court </th>
                                        <th>Message</th>
                                        <th>Date</th>
                                        <th>Delete</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        String q="select reviews.*,users.usname,courts.cname from reviews,users,courts where reviews.usid=users.usid and reviews.cid=courts.cid";
                                        ResultSet rs = con.display(q);
                                        while (rs.next()) {
                                    %>
                                    <tr class="odd gradeX">
                                        <td><%=rs.getString("usname") %></td>
                                        <td><%=rs.getString("cname") %></td>
                                        <td><%=rs.getString("message") %></td>
                                        <td><%=rs.getString("revdate") %></td>
                                        <td><a href="admin-review-view.jsp?revid=<%=rs.getString(1)%>" onclick="return confirm('do you want to delete this?')" class="btn btn-primary">Delete</a></td>

                                    </tr>
                                    <%}
                                        %>

                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>
                <!--End Advanced Tables -->
            </div>
        </div>


    </div>
</div>
<!-- CONTENT-WRAPPER SECTION END-->

<%@include file="admin-footer.jsp" %>
