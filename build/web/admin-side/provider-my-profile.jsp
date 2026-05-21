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
<style>
    .profile-container {
        display: flex;
        align-items: flex-start;
    }
    .profile-image {
        flex: 1;
        max-width: 300px;
        margin-left: 300px;
        margin-top: 10px;
        
    }
    .profile-image img {
        width: 100%;
        height: 300px;
        border-radius: 10px;
    }
    .profile-details {
        flex: 2;
        padding:30px;
        padding-top:2px ;
    }
   
    .profile-details p {
        
    }
</style>

<div class="content-wrapper">
    <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <h4 class="header-line" style="text-align: center;">Profile - View </h4>
            </div>
        </div>
     
        <div class="row">
            <div class="col-md-12">
                <!-- Profile Details -->
                <div >
                   
                    <div class="panel-body">
                        <%
                            String pid="0"; // session here 
                            if(session.getAttribute("provider")!=null){
                                pid = session.getAttribute("provider").toString();
                            }
                            
                            ResultSet rs = con.display("select * from provider where pid=" + pid);
                            if (rs.next()) {
                        %>
                       
                        <div class="profile-container">
                            <div class="profile-image">
                                <img src="../img/<%=rs.getString("img")%>"/>
                            </div>
                               
                            <div class="profile-details">
                                <p><strong>Name: </strong> <%=rs.getString("pname")%></p>
                                <p><strong>Contact: </strong> <%=rs.getString("contact")%></p>
                                <p><strong>About: </strong> <%=rs.getString("about")%></p>
                                <p><strong>Location: </strong> <%=rs.getString("location")%></p>
                                <p><strong>Amenities: </strong> <%=rs.getString("amenities")%></p>
                                <p><strong>Email:</strong> <%=rs.getString("email")%></p>
                                <a href="edit-profile.jsp?pid=<%=pid%>" class="btn btn-primary">Edit</a>
                            </div>
                           
                        </div>
                           
                        <%
                            }
                        %>
                    </div>
                    
                </div>
                <!-- End Profile Details -->
            </div>
        </div>
    </div>
</div>
<!-- CONTENT-WRAPPER SECTION END-->

<%@include file="admin-footer.jsp" %>
