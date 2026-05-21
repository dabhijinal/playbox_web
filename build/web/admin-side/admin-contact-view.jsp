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
                <h4 class="header-line">Admin - Contact - View </h4>
                
            </div>
        </div>
             
             
             
             <div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Contact
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            
                                            <th>Contact Name</th>
                                            <th>Subject</th>
                                            <th>Message</th>
                                            <th>Date</th>
                                            <th>Email</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                        
                                    <%
                                        ResultSet rs = con.display("select * from contacts");
                                        while (rs.next()) {
                                    %>
                                    <tr class="odd gradeX">
                                        <td><%=rs.getString("coname") %></td>
                                        <td><%=rs.getString("subject") %></td>
                                        <td><%=rs.getString("message") %></td>
                                        <td><%=rs.getString("date") %></td>
                                        <td><%=rs.getString("email") %></td>
                                        
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
