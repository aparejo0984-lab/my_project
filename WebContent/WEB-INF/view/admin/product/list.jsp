<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="../../layout/header.jsp" %> 
<body>
<div id="all">
	<%@ include file="../../layout/topbar.jsp" %>
	<%@ include file="../../layout/navbar.jsp" %>
	<!-- CONTENT-->
      <div id="content">
        <div class="container">
          <div class="row bar mb-0">
            <div id="customer-orders" class="col-md-9">
              <p class="text-muted lead">If you have any questions, please feel free to <a href="contact.html">contact us</a>, our customer service center is working for you 24/7.</p>
              <div class="box mt-0 mb-lg-0">
                <div class="table-responsive">
                  <table class="table table-hover">
                    <thead>
                      <tr>
                        <th>Code</th>
                        <th>Name</th>
                        <th>Description</th>
                        <th>Price</th>
                        <th>Status</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <th>PRODAA</th>
                        <td>Black kutchinta in tub</td>
                        <td>Description 101</td>
                        <td>P80</td>
                        <td><span class="badge badge-info">Available</span></td>
                        <td><a href="customer-order.html" class="btn btn-template-outlined btn-sm">View</a></td>
                      </tr>
                      <tr>
                        <th>PRODBB</th>
                        <td>Black kutchinta in styrofoam</td>
                        <td>Description 101</td>
                        <td>$70</td>
                        <td><span class="badge badge-info">Available</span></td>
                        <td><a href="customer-order.html" class="btn btn-template-outlined btn-sm">View</a></td>
                      </tr>
                      <tr>
                        <th>PRODCC</th>
                        <td>Dulce de leche</td>
                        <td>Description 101</td>
                        <td>$10</td>
                        <td><span class="badge badge-info">Available</span></td>
                        <td><a href="customer-order.html" class="btn btn-template-outlined btn-sm">View</a></td>
                      </tr>
                      <tr>
                        <th>PRODDD</th>
                        <td>Toasted cocunut</td>
                        <td>Description 101</td>
                        <td>$10</td>
                        <td><span class="badge badge-info">Available</span></td>
                        <td><a href="customer-order.html" class="btn btn-template-outlined btn-sm">View</a></td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
	<!-- CONTENT-->    
	<%@ include file="../../layout/footer.jsp" %> 
</div>
<%@ include file="../../layout/jsfiles.jsp" %> 
</body>
</html>