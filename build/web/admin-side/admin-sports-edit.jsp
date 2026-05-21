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

    String spid= request.getParameter("spid");
    String q = "select * from sports where spid=" + spid;
    ResultSet rs = con.display(q);
    rs.next();
    
    String spname = rs.getString("spname");
    String icon = rs.getString("icon");
    
%>


<div class="content-wrapper">
    <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        Edit SPORTS
                    </div>
                    <div class="panel-body">
                        <form role="form" action="admin-sports-edit-code.jsp" method="post">

                                <input class="form-control" type="hidden" name="spid" value="<%=spid%>" />


                            <div class="form-group">
                                <label>Enter Sports Name</label>
                                <input class="form-control" type="text" name="spname" value="<%=spname%>" />
                            </div>

                            <div class="form-group">
                                <label> Enter Icon </label>
                                <input type="file" name="icon"/>
                            </div>

                            <button type="submit" class="btn btn-success">Update </button>

                        </form>
                    </div>
                </div>





            </div>
        </div>
        <!-- CONTENT-WRAPPER SECTION END-->

        <%@include file="admin-footer.jsp" %>
