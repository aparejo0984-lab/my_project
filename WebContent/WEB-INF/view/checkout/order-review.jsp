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
				<ul class="nav nav-pills nav-fill">
				   <li class="nav-item"><a href="<%=request.getContextPath()%>/user/checkout/address" class="nav-link"> <i class="fa fa-map-marker"></i><br>Address</a></li>
				   <li class="nav-item"><a href="<%=request.getContextPath()%>/user/checkout/delivery" class="nav-link"><i class="fa fa-truck"></i><br>Delivery Method</a></li>
				   <li class="nav-item"><a href="<%=request.getContextPath()%>/user/checkout/payment" class="nav-link"><i class="fa fa-money"></i><br>Payment Method</a></li>
				   <li class="nav-item"><a href="<%=request.getContextPath()%>/user/checkout/review" class="nav-link active"><i class="fa fa-eye"></i><br>Order Review</a></li>
				</ul>
                <div class="content">
                  <div class="table-responsive">
                    <table class="table">
                      <thead>
                        <tr>
                          <th colspan="2">Product</th>
                          <th>Quantity</th>
                          <th>Unit price</th>
                          <th>Discount</th>
                          <th>Total</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td><a href="#"><img src="<c:url value="/resources/img/product/cover/product${product.code}.png" />" alt="${product.name}"></a></td>
                          <td><a href="#">${product.name}</a></td>
                          <td>${orders.quantity}</td>
                          <td>P${orders.total}</td>
                          <td>P0.00</td>
                          <td>P${orders.total}</td>
                        </tr>
                      </tbody>
                      <tfoot>
                        <tr>
                          <th colspan="5">Total</th>
                          <th>P${orders.total}</th>
                        </tr>
                      </tfoot>
                    </table>
                  </div>
                </div>
                <form:form modelAttribute="orders" action='<%=request.getContextPath() + "/user/checkout/order" %>' method="POST">
                <div class="box-footer d-flex flex-wrap align-items-center justify-content-between">
                  <div class="left-col"><a href="shop-checkout3.html" class="btn btn-secondary mt-0"><i class="fa fa-chevron-left"></i>Back to payment method</a></div>
                  <div class="right-col">
                      <form:hidden path="productCode" value="${orders.productCode}"></form:hidden>
                      <form:hidden path="quantity" value="${orders.quantity}"></form:hidden>
                      <form:hidden path="total" value="${orders.total}"></form:hidden>
                      <form:hidden path="userId" value="${orders.userId}"></form:hidden>
                      <form:hidden path="deliveryOption" value="${orders.deliveryOption}"></form:hidden>
                      <form:hidden path="paymentMode" value="${orders.paymentMode}"></form:hidden>
                    <button type="submit" class="btn btn-template-main">Place the order<i class="fa fa-chevron-right"></i></button>
                  </div>
                </div>
                </form:form>
              </div>
            </div>
            <div class="col-lg-3">
 				<!-- ORDER SUMMARY-->  
				<div id="order-summary" class="box mb-4 p-0">
				   <div class="box-header mt-0">
				      <h3>Order summary</h3>
				   </div>
				   <p class="text-muted text-small">Shipping and additional costs are calculated based on the values you have entered.</p>
				   <div class="table-responsive">
				      <table class="table">
				         <tbody>
				            <tr>
				               <td>TOTAL</td>
				               <th>P${orders.total}</th>
				            </tr>
				            <tr>
				               <td>Delivery Address</td>
				               <th>${user.address}</th>
				            </tr>
				            <tr>
				               <td>Delivery Option</td>
				               <th>
									<c:choose>
									    <c:when test="${orders.deliveryOption == 1}">
									    	Direct delivery
									    </c:when>
									    <c:when test="${orders.deliveryOption == 2}">
									    	PICKUP AT STORE
									    </c:when>
									    <c:otherwise>
									    	Rider service
									    </c:otherwise>              
									</c:choose>
				               </th>
				            </tr>
				            <tr>
				               <td>Payment Method</td>
				               <th>
									<c:choose>
									    <c:when test="${orders.paymentMode == 1}">
									    	Cash on Delivery
									    </c:when>
									    <c:when test="${orders.paymentMode == 2}">
									    	Gcash
									    </c:when>
									    <c:otherwise>
									    	Metrobank or BDO bank transfer
									    </c:otherwise>              
									</c:choose>
				               </th>
				            </tr>
				         </tbody>
				      </table>
				   </div>
				</div>
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