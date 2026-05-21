<%@page import="java.sql.ResultSet"%>
<%@page import="connection.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="provider-header.jsp" %>

<%
    DBConnection con = new DBConnection();
    String pid = request.getParameter("pid");
    ResultSet rs = con.display("select * from provider where pid=" + pid);
    if (rs.next()) {
%>


<div class="content-wrapper">
    <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <h4 class="header-line" style="text-align: center;">Edit Profile</h4>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        EDIT PROFILE
                    </div>
                    <div class="panel-body">
                        <form role="form" action="update-profile.jsp" method="post" enctype="multipart/form-data">
                            <input type="hidden" name="pid" value="<%=pid%>">
                            <div class="form-container">
                                <div class="form-group">
                                    <label for="pname">Name:</label>
                                    <input type="text" class="form-control" id="pname" name="pname" value="<%=rs.getString("pname")%>" required>
                                </div>
                                <div class="form-group">
                                    <label for="contact">Contact:</label>
                                    <input type="text" class="form-control" id="contact" name="contact" value="<%=rs.getString("contact")%>" required>
                                </div>
                                <div class="form-group">
                                    <label for="about">About:</label>
                                    <textarea class="form-control" id="about" name="about" required><%=rs.getString("about")%></textarea>
                                </div>
                                <div class="form-group">
                                    <label for="location">Location:</label>
                                    <input type="text" class="form-control" id="location" name="location" value="<%=rs.getString("location")%>" required>
                                </div>
                                <div class="form-group">
                                    <label for="amenities">Amenities:</label>
                                    <input type="text" class="form-control" id="amenities" name="amenities" value="<%=rs.getString("amenities")%>" required>
                                </div>
                                <div class="form-group">
                                    <label for="email">Email:</label>
                                    <input type="email" class="form-control" id="email" name="email" value="<%=rs.getString("email")%>" required>
                                </div>
                                <div class="form-group">
                                    <label for="img">Image:</label>
                                    <input type="file" id="img" name="img">
                                </div>
                                <div class="btn-container">
                                    <button type="submit" class="btn btn-primary">Update</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%
    }
%>

<%@include file="admin-footer.jsp" %>
