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
                <h4 class="header-line">Admin - Court - View </h4>

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
                                        <th>Sport</th>
                                        <th>Courts Name</th>
                                        <th>Area</th>
                                        <th>Rating</th>
                                        <th>Rent</th>
                                        <th>Time</th>
                                        <th>Image 1</th>
                                        <th>Image 2</th>
                                        <th>Delete</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        if (request.getParameter("cid") != null) {
                                            con.allquery("delete from courts where cid=" + request.getParameter("cid"));
                                        }

                                        String courts = "1";
                                        if (session.getAttribute("courts") != null) {
                                            courts = session.getAttribute("courts").toString();
                                        }
                                        String q = "select courts.*,sports.spname from courts,sports where courts.spid=sports.spid limit 4 " ;
                                        ResultSet rs = con.display(q);
                                        while (rs.next()) {
                                    %>
                                    <tr class="odd gradeX">
                                        
                                        <td><%=rs.getString("spname")%></td>
                                        <td><%=rs.getString("cname")%></td>
                                        <td><%=rs.getString("area")%></td>
                                        <td><%=rs.getString("rating")%></td>
                                        <td><%=rs.getString("rent")%></td>
                                        <td><%=rs.getString("time")%></td>
                                        <td><img src="../img/<%=rs.getString("img1")%>" style="width: 120px;height:150px;" /> </td>
                                        <td><img src="../img/<%=rs.getString("img2")%>" style="width: 120px;height:150px;" /> </td>

                                        <td><a href="admin-court-view.jsp?cid=<%=rs.getString(1)%>" onclick="return confirm('do you want to delete this?')" class="btn btn-primary">Delete</a></td>
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
