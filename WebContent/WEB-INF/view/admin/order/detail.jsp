<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
				<p class="lead">Order <strong>#${order.invoice}</strong> was placed on <strong>22/06/2013</strong> and is currently <strong>
						<c:choose>
						    <c:when test="${order.statusId==1}">
						    	<span class="badge badge-info">Pending</span>
						    </c:when>
						    <c:when test="${order.statusId==2}">
						    	<span class="badge badge-info">Confirmed</span>
						    </c:when> 
						    <c:when test="${order.statusId==3}">
						    	<span class="badge badge-info">Processing</span>
						    </c:when> 
						    <c:when test="${order.statusId==4}">
						    	<span class="badge badge-info">Delivery</span>
						    </c:when> 
						    <c:when test="${order.statusId==5}">
						    	<span class="badge badge-info">Paid</span>
						    </c:when> 
						    <c:when test="${order.statusId==6}">
						    	<span class="badge badge-info">Finished</span>
						    </c:when> 
						    <c:otherwise>
								<span class="badge badge-danger">Cancelled</span>
						    </c:otherwise>
						</c:choose>
					</strong>.</p>
					<p class="lead text-muted">If you have any questions, please feel free to <a href="<%=request.getContextPath()%>/shop/review">contact us</a>, our customer service center is working for you 24/7.</p>
					<c:if test="${not empty message}">
						<div class="alert alert-${alert}" role="alert">
						  ${message}
						</div>
					</c:if>
	              	<div class="box">
	                <div class="table-responsive">
	                  <table class="table">
	                    <thead>
	                      <tr>
	                        <th colspan="2" class="border-top-0">Product</th>
	                        <th class="border-top-0">Quantity</th>
	                        <th class="border-top-0">Unit price</th>
	                        <th class="border-top-0">Discount</th>
	                        <th class="border-top-0">Total</th>
	                      </tr>
	                    </thead>
	                    <tbody>
	                      <tr>
	                        <td><a href="<%=request.getContextPath()%>/shop/detail/${order.productDetails.code}"><img src="<c:url value="/resources/img/product/cover/product${order.productDetails.code}.png" />" alt="${order.productDetails.name}" class="img-fluid"></a></td>
	                        <td><a href="<%=request.getContextPath()%>/shop/detail/${order.productDetails.code}">${order.productDetails.name}</a></td>
	                        <td>${order.quantity}</td>
	                        <td>P${order.productDetails.price}</td>
	                        <td>P00.00</td>
	                        <td>P${order.total}</td>
	                      </tr>
	                    </tbody>
	                    <tfoot>
	                      <tr>
	                        <th colspan="5" class="text-right">Order Subtotal</th>
	                        <th>P${order.total}</th>
	                      </tr>
	                      <tr>
	                        <th colspan="5" class="text-right">Shipping and handling</th>
	                        <th>P00.00</th>
	                      </tr>
	                      <tr>
	                        <th colspan="5" class="text-right">Total</th>
	                        <th>P${order.total}</th>
	                      </tr>
	                    </tfoot>
	                  </table>
	                </div>
	                <div class="row addresses">
	                  <div class="col-md-6 text-right">
	                    <h3 class="text-uppercase">Invoice Details</h3>
	                    <p>
		                    ${order.userDetails.name}<br>					    
		                    ${order.userDetails.address}<br>					    
		                    Contact Number: ${order.userDetails.contactNumber}<br>
		                    Delivery Option: 
								<c:choose>
								    <c:when test="${order.deliveryOption == 1}">
								    	Direct delivery
								    </c:when>
								    <c:when test="${order.deliveryOption == 2}">
								    	PICKUP AT STORE
								    </c:when>
								    <c:otherwise>
								    	Rider service
								    </c:otherwise>              
								</c:choose><br>
							Payment Option:
								<c:choose>
								    <c:when test="${order.paymentMode == 1}">
								    	Cash on Delivery
								    </c:when>
								    <c:when test="${order.paymentMode == 2}">
								    	GCASH
								    </c:when>
								    <c:otherwise>
								    	Bank Transfer
								    </c:otherwise>              
								</c:choose>
	                    </p>
	                  </div>
	                  <div class="col-md-6 text-right">
	                    <h3 class="text-uppercase">Shipping address</h3>
	                    <p>
		                    ${order.userDetails.name}<br>					    
		                    ${order.userDetails.address}<br>					    
		                    Contact Number: ${order.userDetails.contactNumber}<br>
	                    </p>
	                  </div>
	                </div>
	              </div>
	                <form:form modelAttribute="order" action='<%=request.getContextPath() + "/admin/orders/update" %>' method="POST">
	                  <div class="row">
	                    <div class="col-md-6">
	                      <div class="form-group">
	                        <label for="message"><strong>Change Status</strong></label>
	                        <form:select path="statusId" class="form-control" value="${order.statusId}">
						      <option value="1">Pending</option>
						      <option value="2">Confirmed</option>
						      <option value="3">Processing</option>
						      <option value="4">Delivery</option>
						      <option value="5">Paid</option>
						      <option value="6">Finished</option>
						      <option value="7">Cancelled</option>
	                        </form:select>
	                      </div>
	                    </div>
	                    <div class="col-md-12 text-left">
	                    	<form:hidden path="id" class="form-control" readonly="true" value="${order.id}"></form:hidden>
	                      <button type="submit" class="btn btn-template-outlined"><i class="fa fa-envelope-o"></i> Save Changes</button>
	                    </div>
	                  </div>
	                </form:form>
            </div>
			<%@ include file="../leftSidebar.jsp" %> 
          </div>
        </div>
      </div>
	<!-- CONTENT-->    
	<%@ include file="../../layout/footer.jsp" %> 
</div>
<%@ include file="../../layout/jsfiles.jsp" %> 
</body>
</html>