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
                <h4 class="header-line">Admin - Provider - View </h4>

            </div>
        
        </div>
        <div class="row">
            <div class="col-md-12">
                <!-- Advanced Tables -->
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Court
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th>provider Name</th>
                                        <th>provider Image</th>
                                        <th>Contact</th>
                                        <th>About</th>
                                        <th>Location</th>
                                        <th>Amenities</th>
                                        <th>Email</th>
                                        <th>Delete</th>

                                    </tr>
                                </thead>
                                <tbody>

                                    <%
                                        if(request.getParameter("pid")!=null){
                                            con.allquery("delete from provider where pid=" + request.getParameter("pid"));
                                        }
                                        ResultSet rs = con.display("select * from provider");
                                        while (rs.next()) {
                                    %>
                                    <tr class="odd gradeX">
                                        <td><%=rs.getString("pname")%></td>
                                        <td><img src="../img/<%=rs.getString("img")%>" style="width: 100px" /> </td>
                                        <td><%=rs.getString("contact")%></td>
                                        <td><%=rs.getString("about")%></td>
                                        <td><%=rs.getString("location")%></td>
                                        <td><%=rs.getString("amenities")%></td>
                                        <td><%=rs.getString("email")%></td>
                                        <td><a href="admin-provider-view.jsp?pid=<%=rs.getString(1)%>" onclick="return confirm('do you want to delete this?')" class="btn btn-primary">Delete</a></td>

                                    </tr>
                                    <%}%>
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
