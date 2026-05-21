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
                <h4 class="header-line">
                 <div class="col-md-12">
                     <div class="panel panel-info">
                        <div class="panel-heading">
                            Compose a Message
                        </div>
                        <div class="panel-body">
                            <form role="form">
                                        <div class="form-group">
                                            <label>Enter Name</label>
                                            <input class="form-control" type="text" />
                                        </div>
                                 <div class="form-group">
                                            <label>Enter Email</label>
                                            <input class="form-control" type="text" />
                                        </div>
                                <div class="form-group">
                                            <label>Subject</label>
                                            <input class="form-control" type="text" />
                                        </div>
                                 <div class="form-group">
                                            <label>Enter Message</label>
                                            <input class="form-control" type="text" style="min-height:100px;" />
                                        </div>
                                       
                                        <div class="form-group">
                                            <label>Attach File </label>
                                            <input type="file" />
                                        </div>
                                        
                                        
                                        <button type="submit" class="btn btn-success">Send Message </button>
                                        <button type="reset" class="btn btn-primary">Reset Fields</button>

                                    </form>
                            </div>
                        </div>
                </div>
                </h4>
                
                            </div>

        </div>
             <div class="row">
            <div class="col-md-12">
               <div class="alert alert-info">
This is blank page for your customization. So use this page and start your project now.
                   <br />
                   Happy downloading 
                   <br />
                  Keep Looking <a target="_blank" href="http://www.binarytheme.com/" >binarytheme.com</a> for cool stuff.
               </div>
                            </div>

        </div>
    </div>
    </div>
     <!-- CONTENT-WRAPPER SECTION END-->

     <%@include file="admin-footer.jsp" %>
