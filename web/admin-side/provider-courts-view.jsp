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
                <h4 class="header-line">provider - Court - View </h4>

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
                                        <th>Sport</th>
                                        <th>Courts Name</th>
                                        <th>Area</th>
                                        <th>Rating</th>
                                        <th>Rant</th>
                                        <th>Time</th>
                                        <th>Image 1</th>
                                        <th>Image 2</th>
                                        <th>Edit</th>
                                        <th>Delete</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        if (request.getParameter("cid") != null) {
                                            con.allquery("delete from courts where cid=" + request.getParameter("cid"));
                                        }

                                        String provider = "1";
                                        if (session.getAttribute("provider") != null) {
                                            provider = session.getAttribute("provider").toString();
                                        }
                                        String q = "select courts.*,sports.spname from courts,sports where courts.spid=sports.spid and  pid=" + provider;
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
                                        <td><img src="../img/<%=rs.getString("img1")%>" height="100px" style="width: 100px;" /></td>
                                        <td><img src="../img/<%=rs.getString("img2")%>" height="100px" style="width: 100px;" /></td>

                                        <td><a href="provider-courts-edit.jsp?cid=<%=rs.getString(1)%>" class="btn btn-primary">Edit</a></td>
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
