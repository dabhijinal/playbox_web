<%-- 
    Document   : demo
    Created on : 11 Dec, 2024, 1:47:46 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="admin-header.jsp" %>

<div class="content-wrapper">
    <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        ADD SPORTS
                    </div>
                    <div class="panel-body">
                        <form role="form" action="admin-sports-add-code.jsp" method="post">

                            <div class="form-group">
                                <label>Enter Sports Name</label>
                                <input class="form-control" type="text" name="spname" />
                            </div>

                            <div class="form-group">
                                <label> Enter Icon </label>
                                <input type="file" name="icon"/>
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
