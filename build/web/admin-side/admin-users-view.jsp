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
                <h4 class="header-line">Admin - User - View </h4>
                
                            </div>

        </div>
             
             
             
             <div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                             User
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>User Name</th>
                                            <th>Gender</th>
                                            <th>City</th>
                                            <th>Address</th>
                                            <th>Contact</th>
                                            <th>Email</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                            if(request.getParameter("usid")!=null){
                                            con.allquery("delete from users where usid=" + request.getParameter("usid"));
                                        }
                                            
                                        ResultSet rs = con.display("select * from users");
                                        while (rs.next()) {
                                    %>
                                    <tr class="odd gradeX">
                                        <td><%=rs.getString("usname") %></td>
                                        <td><%=rs.getString("gender") %></td>
                                        <td><%=rs.getString("city") %></td>
                                        <td><%=rs.getString("address") %></td>
                                        <td><%=rs.getString("contact") %></td>
                                        <td><%=rs.getString("email") %></td>
                                      
                                        <td><a href="" class="btn btn-primary">Edit</a></td>
                                        <td><a href="admin-users-view.jsp?usid=<%=rs.getString(1)%>" onclick="return confirm('do you want to delete this?')" class="btn btn-primary">Delete</a></td>

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
