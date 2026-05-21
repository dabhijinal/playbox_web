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
                <h4 class="header-line"> Provider - Booking - View </h4>

            </div>
        </div>



        <div class="row">
            <div class="col-md-12">
                <!-- Advanced Tables -->
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Booking
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th>Courts </th>
                                        <th> User </th>
                                        <th>Booking Date</th>
                                        <th>Time</th>
                                        <th>Duration</th>
                                        <th>Total Rent</th>
                                        <th>Advance Payment</th>
                                        <th>Status</th>
                                        <th>Confirm</th>
                                        <th>Cancle</th>


                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        if (request.getParameter("bid") != null) {
                                            con.allquery("delete from booking where bid=" + request.getParameter("bid"));
                                        }

                                        if (request.getParameter("statusbid") != null) {
                                            con.allquery("update booking set status='" + request.getParameter("status") + "' where bid=" + request.getParameter("statusbid"));
                                        }

                                        String q = "select booking.*,courts.cname,users.usname,users.contact from booking,courts,users where booking.cid=courts.cid and booking.usid=users.usid";
                                        ResultSet rs = con.display(q);
                                        while (rs.next()) {
                                            String bid = rs.getString(1);
                                            String status = rs.getString("status");
                                    %>
                                    <tr class="odd gradeXX">
                                        <td><%=rs.getString("cname")%></td>
                                        <td><%=rs.getString("usname")%> <br> <%=rs.getString("contact")%> </td>
                                        <td><%=rs.getString("date")%></td>
                                        <td><%=rs.getString("time")%></td>
                                        <td><%=rs.getString("duration")%></td>
                                        <td><%=rs.getString("total_rent")%></td>
                                        <td><%=rs.getString("adv_amount")%></td>
                                        <td><%=status%></td>
                                        <td> 
                                            <%
                                                if (status.equals("Pending")) {
                                            %>

                                            <a class="btn btn-success"   href="provider-booking-view.jsp?status=Confirm&statusbid=<%=bid%>"> Confirm </a>

                                            <% }%>
                                        </td>
                                        <td>
                                            <%
                                                if (!status.equals("Cancel")) {
                                            %>

                                            <a class="btn btn-danger" href="provider-booking-view.jsp?status=Cancel&statusbid=<%=bid%>"> Cancel </a>
                                        </td>
                                            <% } %>
                                    </tr>
                                    <% }
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
