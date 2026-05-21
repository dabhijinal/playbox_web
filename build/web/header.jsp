<%-- 
    Document   : header
    Created on : 18 Dec, 2024, 5:08:14 PM
    Author     : ADMIN
--%>
<%@page import="connection.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    DBConnection con = new DBConnection();

%>
<div class="container-fluid nav-bar bg-transparent">
    <nav class="navbar navbar-expand-lg bg-white navbar-light py-0 px-4">
        <a href="index.html" class="navbar-brand d-flex align-items-center text-center">
            <div class="icon p-2 me-2">
                <img class="img-fluid" src="img/logo.png" alt="Icon" style="width: 30px; height: 30px;">
            </div>
            <h1 class="m-0 text-primary">SportsCourts</h1>
        </a>
        <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto">
                <a href="index.jsp" class="nav-item nav-link ">Home</a>
                <a href="about.jsp" class="nav-item nav-link">About</a>
                <a href="court-list.jsp" class="nav-item nav-link">Sports</a>
                <div class="nav-item dropdown">


                </div>

                <%                    if (session.getAttribute("user") == null) {
                %>
                <a href="login.jsp" class="nav-item nav-link">Login</a>

                <% }%>

                <a href="contact.jsp" class="nav-item nav-link">Contact</a>
            </div>

            <%
                if (session.getAttribute("user") == null) {
            %>

            <a href="registration.jsp" class="btn btn-primary px-3 d-none d-lg-flex">Registration</a>

            <%} else { %>


            <a href="logout.jsp" class="btn btn-primary px-3 d-none d-lg-flex">Logout</a>

            <% }%>

            
                <%                    if (session.getAttribute("user") != null) {
                %>
       
            <a href="mybooking.jsp" class="btn btn-primary px-3 d-none d-lg-flex flex-column align-items-center" style="margin-left:10px;">
                <img src="booking.png" style="height: 18px; width: 18px;">
                <span style="font-size: 6px">MyBooking</span>
            </a>
                <%}%>

        </div>
    </nav>
</div>
