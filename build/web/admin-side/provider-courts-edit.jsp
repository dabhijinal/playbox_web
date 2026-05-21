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

    String cid= request.getParameter("cid");
    String q = "select * from courts where cid=" + cid;
    ResultSet rs = con.display(q);
    rs.next();
    
    String cname = rs.getString("cname");
    String area = rs.getString("area");
    String rating = rs.getString("rating");
    String time = rs.getString("time");
    String img1 = rs.getString("img1");
    String img2 = rs.getString("img2");
    String rent = rs.getString("rent");
    
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
                        <form role="form" action="provider-courts-edit-code.jsp" method="post">
                            
                            
                            <div class="form-group">
                                <label>Enter Sport</label>
                                <select id="spid" name="spid" class="form-control">
                                    <%=con.binddropdown("select spid,spname from sports") %>
                                    
                                </select>
                            </div>
                            <input class="form-control" type="hidden" name="cid" value="<%=cid%>"/>
                            <div class="form-group">
                                <label>Enter Courts Name</label>
                                <input class="form-control" type="text" name="cname" value="<%=cname%>"/>
                            </div>
                            <div class="form-group">
                                <label>Enter Area</label>
                                <input class="form-control" type="text" name="area" style="min-height:100px;" />
                            </div>
                            
                            <div class="form-group">
                                <label>Enter Rating</label>
                                <input class="form-control" type="text" name="rating" value="<%=rating%>" />
                            </div>
                            <div class="form-group">
                                <label>Enter Rent</label>
                                <input class="form-control" type="text" name="rent" value="<%=rent%>"/>
                            </div>
                            <div class="form-group">
                                <label>Enter Time</label>
                                <input class="form-control" type="time" name="time" value="<%=time%>" />
                            </div>
                            <div class="form-group">
                                <label> Enter Image 1 </label>
                                <input type="file"  name="img1"/>
                            </div>
                            <div class="form-group">
                                <label> Enter Image 2 </label>
                                <input type="file"  name="img2"/>
                            </div>

                            <button type="submit" class="btn btn-success">Update </button>
                            
                        </form>
                    </div>
                </div>





            </div>
        </div>
        <!-- CONTENT-WRAPPER SECTION END-->

        <%@include file="admin-footer.jsp" %>
