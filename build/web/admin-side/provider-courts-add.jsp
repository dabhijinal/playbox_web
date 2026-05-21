<%-- 
    Document   : demo
    Created on : 11 Dec, 2024, 1:47:46 PM
    Author     : ADMIN
--%>

<%@page import="connection.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="provider-header.jsp" %>
<%
    DBConnection con =  new DBConnection();
    
    %>
<div class="content-wrapper">
    <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        ADD COURTS
                    </div>
                    <div class="panel-body">
                        <form role="form" action="provider-courts-add-code.jsp" method="post">
                            
                            
                            <div class="form-group">
                                <label>Enter Sport</label>
                                <select id="spid" name="spid" class="form-control">
                                    <%=con.binddropdown("select spid,spname from sports") %>
                                </select>
                            </div>
                            
                            <div class="form-group">
                                <label>Enter Courts Name</label>
                                <input class="form-control" type="text" name="cname"/>
                            </div>
                            <div class="form-group">
                                <label>Enter Area</label>
                                <input class="form-control" type="text" name="area" style="min-height:100px;" />
                            </div>
                            
                            <div class="form-group">
                                <label>Enter Rating</label>
                                <input class="form-control" type="text" name="rating" />
                            </div>
                            <div class="form-group">
                                <label>Enter Rent</label>
                                <input class="form-control" type="text" name="rent" />
                            </div>
                            <div class="form-group">
                                <label>Enter Time</label>
                                <input class="form-control" type="time" name="time" />
                            </div>
                            <div class="form-group">
                                <label> Enter Image 1 </label>
                                <input type="file"  name="img1"/>
                            </div>
                            <div class="form-group">
                                <label> Enter Image 2 </label>
                                <input type="file"  name="img2"/>
                            </div>

                            <button type="submit" class="btn btn-success">Add </button>
                            <button type="reset" class="btn btn-primary">Reset </button>

                        </form>
                    </div>
                </div>





            </div>
        </div>
        <!-- CONTENT-WRAPPER SECTION END-->

        <%@include file="admin-footer.jsp" %>
