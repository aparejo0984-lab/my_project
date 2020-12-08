<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="../layout/header.jsp" %> 
<body>
<div id="all">
	<%@ include file="../layout/topbar.jsp" %>
	<%@ include file="../layout/navbar.jsp" %>
	<!-- CONTENT-->
      <div id="content">
        <div class="container">
          <div class="row">
            <div id="checkout" class="col-lg-9">
              <div class="box border-bottom-0">
              <form:form modelAttribute="orders" action='<%=request.getContextPath() + "/user/checkout/delivery" %>' method="POST">
				<ul class="nav nav-pills nav-fill">
				   <li class="nav-item"><a href="<%=request.getContextPath()%>/user/checkout/address" class="nav-link active"> <i class="fa fa-map-marker"></i><br>Address</a></li>
				   <li class="nav-item"><a href="<%=request.getContextPath()%>/user/checkout/delivery" class="nav-link"><i class="fa fa-truck"></i><br>Delivery Method</a></li>
				   <li class="nav-item"><a href="<%=request.getContextPath()%>/user/checkout/payment" class="nav-link"><i class="fa fa-money"></i><br>Payment Method</a></li>
				   <li class="nav-item"><a href="<%=request.getContextPath()%>/user/checkout/review" class="nav-link"><i class="fa fa-eye"></i><br>Order Review</a></li>
				</ul>
                  <div class="content">
                    <div class="row">
                      <div class="col-sm-6">
                        <div class="form-group">
                          <label for="firstname">Name</label>
                          <input id="name" type="text" class="form-control" readonly value="${user.name}">
                        </div>
                      </div>
                      <div class="col-sm-6">
                        <div class="form-group">
                          <label for="lastname">Contact Number</label>
                          <input id="contanct_number" type="text" class="form-control"  readonly value="${user.contactNumber}">
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-sm-12">
                        <div class="form-group">
                          <label for="company">Address</label>
                          <input id="address" type="text" class="form-control" readonly value="${user.address}">
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="box-footer d-flex flex-wrap align-items-center justify-content-between">
                    <div class="left-col"><a href="<%=request.getContextPath() + "/shop" %>" class="btn btn-secondary mt-0"><i class="fa fa-chevron-left"></i>Back to basket</a></div>
                    <div class="right-col">
                      <form:hidden path="productCode" value="${orders.productCode}"></form:hidden>
                      <form:hidden path="quantity" value="${orders.quantity}"></form:hidden>
                      <form:hidden path="total" value="${orders.total}"></form:hidden>
                      <form:hidden path="userId" value="${user.id}"></form:hidden>
                      <button type="submit" class="btn btn-template-main">Continue to Delivery Method<i class="fa fa-chevron-right"></i></button>
                    </div>
                  </div>
                </form:form>
              </div>
            </div>
            <div class="col-lg-3">
				<!-- ORDER SUMMARY-->  
				<%@ include file="order-summary.jsp" %> 
				<!-- ORDER SUMMARY--> 
            </div>
          </div>
        </div>
      </div>
	<!-- CONTENT-->    
	<%@ include file="../layout/footer.jsp" %> 
</div>
<%@ include file="../layout/jsfiles.jsp" %> 
</body>
</html>