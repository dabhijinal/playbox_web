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
                <h4 class="header-line">Admin - Sports - View </h4>
                
                            </div>

        </div>
             
             
             
             <div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                             Provider
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        
                                        <tr>
                                            
                                            <th>Sports Name</th>
                                            <th>Icon</th>
                                            <th>Edit</th>
                                            <th>Delete</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                            if(request.getParameter("spid")!=null){
                                            con.allquery("delete from sports where spid=" + request.getParameter("spid"));
                                        }
                                        ResultSet rs = con.display("select * from sports");
                                        while (rs.next()) {
                                       %>
                                        <tr class="odd gradeX">
                                        <td><%=rs.getString("spname") %></td>
                                        <td><img src="../img/<%=rs.getString("icon")%>" style="width: 100px" /> </td>
                                        <td><a href="admin-sports-edit.jsp?spid=<%=rs.getString(1)%>" class="btn btn-primary">Edit</a></td>
                                        <td><a href="admin-sports-view.jsp?spid=<%=rs.getString(1)%>" onclick="return confirm('do you want to delete this?')" class="btn btn-primary">Delete</a></td>

                                            
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
