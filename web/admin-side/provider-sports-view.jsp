<%-- 
    Document   : demo
    Created on : 11 Dec, 2024, 1:47:46 PM
    Author     : ADMIN
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="connection.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="provider-header.jsp" %>


<%
    DBConnection con = new DBConnection();
%>

<div class="content-wrapper">
    <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <h4 class="header-line">provider - sports - View </h4>

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

                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        ResultSet rs = con.display("select * from sports");
                                        while (rs.next()) {
                                    %>
                                    <tr class="odd gradeX">
                                        <td><%=rs.getString("spname")%></td>
                                        <td><img src="../img/<%=rs.getString("icon")%>" style="width: 100px" /> </td>

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
