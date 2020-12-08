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
              <div class="box">
              <form:form modelAttribute="orders" action='<%=request.getContextPath() + "/user/checkout/review" %>' method="POST">
				<ul class="nav nav-pills nav-fill">
				   <li class="nav-item"><a href="<%=request.getContextPath()%>/user/checkout/address" class="nav-link"> <i class="fa fa-map-marker"></i><br>Address</a></li>
				   <li class="nav-item"><a href="<%=request.getContextPath()%>/user/checkout/delivery" class="nav-link"><i class="fa fa-truck"></i><br>Delivery Method</a></li>
				   <li class="nav-item"><a href="<%=request.getContextPath()%>/user/checkout/payment" class="nav-link active"><i class="fa fa-money"></i><br>Payment Method</a></li>
				   <li class="nav-item"><a href="<%=request.getContextPath()%>/user/checkout/review" class="nav-link"><i class="fa fa-eye"></i><br>Order Review</a></li>
				</ul>
                  <div class="content">
                    <div class="row">
                      <div class="col-sm-6">
                        <div class="box payment-method">
                          <h4>Cash on Delivery</h4>
                          <p>You pay when you get it.</p>
                          <div class="box-footer text-center">
                            <form:radiobutton path="paymentMode" value="1"></form:radiobutton>
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-6">
                        <div class="box payment-method">
                          <h4>Electronic Payment</h4>
                          <p>Gcash payment</p>
                          <div class="box-footer text-center">
                            <form:radiobutton path="paymentMode" value="2"></form:radiobutton>
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-6">
                        <div class="box payment-method">
                          <h4>Payment gateway</h4>
                          <p>Bank payments through Metrobank and BDO</p>
                          <div class="box-footer text-center">
                            <form:radiobutton path="paymentMode" value="3"></form:radiobutton>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="box-footer d-flex flex-wrap align-items-center justify-content-between">
                    <div class="left-col"><a href="shop-checkout2.html" class="btn btn-secondary mt-0"><i class="fa fa-chevron-left"></i>Back to delivery method</a></div>
                    <div class="right-col">
                      <form:hidden path="productCode" value="${orders.productCode}"></form:hidden>
                      <form:hidden path="quantity" value="${orders.quantity}"></form:hidden>
                      <form:hidden path="total" value="${orders.total}"></form:hidden>
                      <form:hidden path="userId" value="${orders.userId}"></form:hidden>
                      <form:hidden path="deliveryOption" value="${orders.deliveryOption}"></form:hidden>
                      <button type="submit" class="btn btn-template-main">Review order<i class="fa fa-chevron-right"></i></button>
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